# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License.

function Check-SubscriptionLogIn
{
    param (
        [object] $SubscriptionId,
        [object] $AzKVaultName
    )

    if("string" -ne $SubscriptionId.GetType().Name)
    {
        throw "The type of SubscriptionId should be string, current is " + $SubscriptionId.GetType().Name + ". Please check registration information by 'Get-SecretVault | fl'"
    }

    if("string" -ne $AzKVaultName.GetType().Name)
    {
        throw "The type of AzKVaultName should be string, current is " + $AzKVaultName.GetType().Name + ". Please check registration information by 'Get-SecretVault | fl'"
    }

    $azContext = Az.Accounts\Get-AzContext
    if (($null -eq $azContext) -or ($azContext.Subscription.Id -ne $SubscriptionId))
    {
        try
        {
            Set-AzContext -SubscriptionId ${SubscriptionId} -ErrorAction Stop
        }
        catch
        {
            throw $_.ToString() + "To use Azure vault named '${AzKVaultName}', please try 'Connect-AzAccount -SubscriptionId {SubscriptionId}' to log into Azure account subscription '${SubscriptionId}'." 
        }
    }
}

function Get-Secret
{
    param (
        [string] $Name,
        [string] $VaultName,
        [hashtable] $AdditionalParameters
    )

    $secret = Az.KeyVault\Get-AzKeyVaultSecret -Name $Name -VaultName $AdditionalParameters.AZKVaultName
    if ($null -ne $secret)
    {
        switch ($secret.ContentType) {
            'ByteArray' 
            {  
                $SecretValue = Get-ByteArray $Secret
            }
            'String'
            {
                $SecretValue = Get-String $Secret
            }
            'PSCredential' 
            {
                $SecretValue = Get-PSCredential $Secret
            }
            'Hashtable' 
            {  
                $SecretValue = Get-Hashtable $Secret
            }
            Default 
            {
                $SecretValue = Get-SecureString $Secret
            }
        }
        return $SecretValue
    }
}

function Get-ByteArray
{
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [object] $Secret
    )
    $secretValueText = Get-String $Secret
    return [System.Text.Encoding]::ASCII.GetBytes($secretValueText)
}

function Get-String
{
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [object] $Secret
    )

    $ssPtr = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($Secret.SecretValue)
    try {
        $secretValueText = [System.Runtime.InteropServices.Marshal]::PtrToStringBSTR($ssPtr)
    } finally {
        [System.Runtime.InteropServices.Marshal]::ZeroFreeBSTR($ssPtr)
    }
    return $secretValueText
}

function Get-SecureString
{
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [object] $Secret
    )

    return $Secret.SecretValue
}

function Get-PSCredential
{
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [object] $Secret
    )

    $secretHashTable = Get-Hashtable $Secret
    return [System.Management.Automation.PSCredential]::new($secretHashTable["UserName"], ($secretHashTable["Password"] | ConvertTo-SecureString -AsPlainText -Force)) 
}

function Get-Hashtable
{
    param (
        [Parameter(Mandatory=$true, Position=0)]
        [object] $Secret
    )

    $jsonObject = Get-String $Secret | ConvertFrom-Json
    $hashtable = @{}
    $jsonObject.psobject.Properties | foreach { $hashtable[$_.Name] = $_.Value }
    return $hashtable
}

function Set-Secret
{
    param (
        [string] $Name,
        [object] $Secret,
        [string] $VaultName,
        [hashtable] $AdditionalParameters
    )

    switch ($Secret.GetType().Name) {
        'Byte[]' 
        {
            Set-ByteArray -Name $Name -Secret $Secret -AZKVaultName $AdditionalParameters.AZKVaultName -ContentType 'ByteArray'
        }
        'String'
        {
            Set-String -Name $Name -Secret $Secret -AZKVaultName $AdditionalParameters.AZKVaultName -ContentType 'String'
        }
        'SecureString'
        {
            Set-SecureString -Name $Name -Secret $Secret -AZKVaultName $AdditionalParameters.AZKVaultName -ContentType 'SecureString'
        }
        'PSCredential' 
        {
            Set-PSCredential -Name $Name -Secret $Secret -AZKVaultName $AdditionalParameters.AZKVaultName -ContentType 'PSCredential'
        }
        'Hashtable' 
        {  
            Set-Hashtable -Name $Name -Secret $Secret -AZKVaultName $AdditionalParameters.AZKVaultName -ContentType 'Hashtable'
        }
        Default
        {
            throw "Invalid type. Types supported: byte[], string, SecureString, PSCredential, Hashtable";
        }
    }

    return $?
}

function Set-ByteArray
{
    param (
        [string] $Name,
        [Byte[]] $Secret,
        [string] $AZKVaultName,
        [string] $ContentType
    )

    $SecretString = [System.Text.Encoding]::ASCII.GetString($Secret)
    Set-String -Name $Name -Secret $SecretString -AZKVaultName $AZKVaultName -ContentType $ContentType
}

function Set-String
{
    param (
        [string] $Name,
        [string] $Secret,
        [string] $AZKVaultName,
        [string] $ContentType
    )
    $SecureSecret = ConvertTo-SecureString -String $Secret -AsPlainText -Force
    $null = Az.KeyVault\Set-AzKeyVaultSecret -Name $Name -SecretValue $SecureSecret -VaultName $AZKVaultName -ContentType $ContentType
}

function Set-SecureString
{
    param (
        [string] $Name,
        [SecureString] $Secret,
        [string] $AZKVaultName,
        [string] $ContentType
    )
    
    $null = Az.KeyVault\Set-AzKeyVaultSecret -Name $Name -SecretValue $Secret -VaultName $AZKVaultName -ContentType $ContentType
}

function Set-PSCredential
{
    param (
        [string] $Name,
        [PSCredential] $Secret,
        [string] $AZKVaultName,
        [string] $ContentType
    )
    $secretHashTable = @{"UserName" = $Secret.UserName; "Password" = $Secret.GetNetworkCredential().Password}
    $SecretString = ConvertTo-Json $secretHashTable
    Set-String -Name $Name -Secret $SecretString -AZKVaultName $AZKVaultName -ContentType $ContentType
}

function Set-Hashtable
{
    param (
        [string] $Name,
        [Hashtable] $Secret,
        [string] $AZKVaultName,
        [string] $ContentType
    )
    $SecretString = ConvertTo-Json $Secret
    Set-String -Name $Name -Secret $SecretString -AZKVaultName $AZKVaultName -ContentType $ContentType
}

function Remove-Secret
{
    param (
        [string] $Name,
        [string] $VaultName,
        [hashtable] $AdditionalParameters
    )

    $null = Az.KeyVault\Remove-AzKeyVaultSecret -Name $Name -VaultName $AdditionalParameters.AZKVaultName -Force
    return $?
}

function Get-SecretInfo
{
    param (
        [string] $Filter,
        [string] $VaultName,
        [hashtable] $AdditionalParameters
    )
   
    if ([string]::IsNullOrEmpty($Filter))
    {
        $Filter = "*"
    }

    $pattern = [WildcardPattern]::new($Filter)

    $vaultSecretInfos = Az.KeyVault\Get-AzKeyVaultSecret -VaultName $AdditionalParameters.AZKVaultName

    foreach ($vaultSecretInfo in $vaultSecretInfos)
    {
        if ($pattern.IsMatch($vaultSecretInfo.Name))
        {
            [Microsoft.PowerShell.SecretManagement.SecretType]$secretType = New-Object Microsoft.PowerShell.SecretManagement.SecretType
            if (![System.Enum]::TryParse($vaultSecretInfo.ContentType, $true, [ref]$secretType))
            {
                $secretType = "Unknown"
            }
            Write-Output (
                [Microsoft.PowerShell.SecretManagement.SecretInformation]::new(
                    $vaultSecretInfo.Name,
                    $secretType,
                    $VaultName)
            )
        }
    }
}

function Test-SecretVault
{
    param (
        [string] $VaultName,
        [hashtable] $AdditionalParameters
    )

    try
    {
        Check-SubscriptionLogIn $AdditionalParameters.SubscriptionId $AdditionalParameters.AZKVaultName
    }
    catch
    {
        Write-Error $_
        return $false
    }

    return $true
}
# SIG # Begin signature block
# MIIn0QYJKoZIhvcNAQcCoIInwjCCJ74CAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCCyKy+DlRs3fTBA
# u5XhgR3udHDfTLCuiuI7TkzA4f8+cKCCDYUwggYDMIID66ADAgECAhMzAAACzfNk
# v/jUTF1RAAAAAALNMA0GCSqGSIb3DQEBCwUAMH4xCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25p
# bmcgUENBIDIwMTEwHhcNMjIwNTEyMjA0NjAyWhcNMjMwNTExMjA0NjAyWjB0MQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMR4wHAYDVQQDExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
# AQDrIzsY62MmKrzergm7Ucnu+DuSHdgzRZVCIGi9CalFrhwtiK+3FIDzlOYbs/zz
# HwuLC3hir55wVgHoaC4liQwQ60wVyR17EZPa4BQ28C5ARlxqftdp3H8RrXWbVyvQ
# aUnBQVZM73XDyGV1oUPZGHGWtgdqtBUd60VjnFPICSf8pnFiit6hvSxH5IVWI0iO
# nfqdXYoPWUtVUMmVqW1yBX0NtbQlSHIU6hlPvo9/uqKvkjFUFA2LbC9AWQbJmH+1
# uM0l4nDSKfCqccvdI5l3zjEk9yUSUmh1IQhDFn+5SL2JmnCF0jZEZ4f5HE7ykDP+
# oiA3Q+fhKCseg+0aEHi+DRPZAgMBAAGjggGCMIIBfjAfBgNVHSUEGDAWBgorBgEE
# AYI3TAgBBggrBgEFBQcDAzAdBgNVHQ4EFgQU0WymH4CP7s1+yQktEwbcLQuR9Zww
# VAYDVR0RBE0wS6RJMEcxLTArBgNVBAsTJE1pY3Jvc29mdCBJcmVsYW5kIE9wZXJh
# dGlvbnMgTGltaXRlZDEWMBQGA1UEBRMNMjMwMDEyKzQ3MDUzMDAfBgNVHSMEGDAW
# gBRIbmTlUAXTgqoXNzcitW2oynUClTBUBgNVHR8ETTBLMEmgR6BFhkNodHRwOi8v
# d3d3Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2NybC9NaWNDb2RTaWdQQ0EyMDExXzIw
# MTEtMDctMDguY3JsMGEGCCsGAQUFBwEBBFUwUzBRBggrBgEFBQcwAoZFaHR0cDov
# L3d3dy5taWNyb3NvZnQuY29tL3BraW9wcy9jZXJ0cy9NaWNDb2RTaWdQQ0EyMDEx
# XzIwMTEtMDctMDguY3J0MAwGA1UdEwEB/wQCMAAwDQYJKoZIhvcNAQELBQADggIB
# AE7LSuuNObCBWYuttxJAgilXJ92GpyV/fTiyXHZ/9LbzXs/MfKnPwRydlmA2ak0r
# GWLDFh89zAWHFI8t9JLwpd/VRoVE3+WyzTIskdbBnHbf1yjo/+0tpHlnroFJdcDS
# MIsH+T7z3ClY+6WnjSTetpg1Y/pLOLXZpZjYeXQiFwo9G5lzUcSd8YVQNPQAGICl
# 2JRSaCNlzAdIFCF5PNKoXbJtEqDcPZ8oDrM9KdO7TqUE5VqeBe6DggY1sZYnQD+/
# LWlz5D0wCriNgGQ/TWWexMwwnEqlIwfkIcNFxo0QND/6Ya9DTAUykk2SKGSPt0kL
# tHxNEn2GJvcNtfohVY/b0tuyF05eXE3cdtYZbeGoU1xQixPZAlTdtLmeFNly82uB
# VbybAZ4Ut18F//UrugVQ9UUdK1uYmc+2SdRQQCccKwXGOuYgZ1ULW2u5PyfWxzo4
# BR++53OB/tZXQpz4OkgBZeqs9YaYLFfKRlQHVtmQghFHzB5v/WFonxDVlvPxy2go
# a0u9Z+ZlIpvooZRvm6OtXxdAjMBcWBAsnBRr/Oj5s356EDdf2l/sLwLFYE61t+ME
# iNYdy0pXL6gN3DxTVf2qjJxXFkFfjjTisndudHsguEMk8mEtnvwo9fOSKT6oRHhM
# 9sZ4HTg/TTMjUljmN3mBYWAWI5ExdC1inuog0xrKmOWVMIIHejCCBWKgAwIBAgIK
# YQ6Q0gAAAAAAAzANBgkqhkiG9w0BAQsFADCBiDELMAkGA1UEBhMCVVMxEzARBgNV
# BAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jv
# c29mdCBDb3Jwb3JhdGlvbjEyMDAGA1UEAxMpTWljcm9zb2Z0IFJvb3QgQ2VydGlm
# aWNhdGUgQXV0aG9yaXR5IDIwMTEwHhcNMTEwNzA4MjA1OTA5WhcNMjYwNzA4MjEw
# OTA5WjB+MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UE
# BxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSgwJgYD
# VQQDEx9NaWNyb3NvZnQgQ29kZSBTaWduaW5nIFBDQSAyMDExMIICIjANBgkqhkiG
# 9w0BAQEFAAOCAg8AMIICCgKCAgEAq/D6chAcLq3YbqqCEE00uvK2WCGfQhsqa+la
# UKq4BjgaBEm6f8MMHt03a8YS2AvwOMKZBrDIOdUBFDFC04kNeWSHfpRgJGyvnkmc
# 6Whe0t+bU7IKLMOv2akrrnoJr9eWWcpgGgXpZnboMlImEi/nqwhQz7NEt13YxC4D
# dato88tt8zpcoRb0RrrgOGSsbmQ1eKagYw8t00CT+OPeBw3VXHmlSSnnDb6gE3e+
# lD3v++MrWhAfTVYoonpy4BI6t0le2O3tQ5GD2Xuye4Yb2T6xjF3oiU+EGvKhL1nk
# kDstrjNYxbc+/jLTswM9sbKvkjh+0p2ALPVOVpEhNSXDOW5kf1O6nA+tGSOEy/S6
# A4aN91/w0FK/jJSHvMAhdCVfGCi2zCcoOCWYOUo2z3yxkq4cI6epZuxhH2rhKEmd
# X4jiJV3TIUs+UsS1Vz8kA/DRelsv1SPjcF0PUUZ3s/gA4bysAoJf28AVs70b1FVL
# 5zmhD+kjSbwYuER8ReTBw3J64HLnJN+/RpnF78IcV9uDjexNSTCnq47f7Fufr/zd
# sGbiwZeBe+3W7UvnSSmnEyimp31ngOaKYnhfsi+E11ecXL93KCjx7W3DKI8sj0A3
# T8HhhUSJxAlMxdSlQy90lfdu+HggWCwTXWCVmj5PM4TasIgX3p5O9JawvEagbJjS
# 4NaIjAsCAwEAAaOCAe0wggHpMBAGCSsGAQQBgjcVAQQDAgEAMB0GA1UdDgQWBBRI
# bmTlUAXTgqoXNzcitW2oynUClTAZBgkrBgEEAYI3FAIEDB4KAFMAdQBiAEMAQTAL
# BgNVHQ8EBAMCAYYwDwYDVR0TAQH/BAUwAwEB/zAfBgNVHSMEGDAWgBRyLToCMZBD
# uRQFTuHqp8cx0SOJNDBaBgNVHR8EUzBRME+gTaBLhklodHRwOi8vY3JsLm1pY3Jv
# c29mdC5jb20vcGtpL2NybC9wcm9kdWN0cy9NaWNSb29DZXJBdXQyMDExXzIwMTFf
# MDNfMjIuY3JsMF4GCCsGAQUFBwEBBFIwUDBOBggrBgEFBQcwAoZCaHR0cDovL3d3
# dy5taWNyb3NvZnQuY29tL3BraS9jZXJ0cy9NaWNSb29DZXJBdXQyMDExXzIwMTFf
# MDNfMjIuY3J0MIGfBgNVHSAEgZcwgZQwgZEGCSsGAQQBgjcuAzCBgzA/BggrBgEF
# BQcCARYzaHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3BraW9wcy9kb2NzL3ByaW1h
# cnljcHMuaHRtMEAGCCsGAQUFBwICMDQeMiAdAEwAZQBnAGEAbABfAHAAbwBsAGkA
# YwB5AF8AcwB0AGEAdABlAG0AZQBuAHQALiAdMA0GCSqGSIb3DQEBCwUAA4ICAQBn
# 8oalmOBUeRou09h0ZyKbC5YR4WOSmUKWfdJ5DJDBZV8uLD74w3LRbYP+vj/oCso7
# v0epo/Np22O/IjWll11lhJB9i0ZQVdgMknzSGksc8zxCi1LQsP1r4z4HLimb5j0b
# pdS1HXeUOeLpZMlEPXh6I/MTfaaQdION9MsmAkYqwooQu6SpBQyb7Wj6aC6VoCo/
# KmtYSWMfCWluWpiW5IP0wI/zRive/DvQvTXvbiWu5a8n7dDd8w6vmSiXmE0OPQvy
# CInWH8MyGOLwxS3OW560STkKxgrCxq2u5bLZ2xWIUUVYODJxJxp/sfQn+N4sOiBp
# mLJZiWhub6e3dMNABQamASooPoI/E01mC8CzTfXhj38cbxV9Rad25UAqZaPDXVJi
# hsMdYzaXht/a8/jyFqGaJ+HNpZfQ7l1jQeNbB5yHPgZ3BtEGsXUfFL5hYbXw3MYb
# BL7fQccOKO7eZS/sl/ahXJbYANahRr1Z85elCUtIEJmAH9AAKcWxm6U/RXceNcbS
# oqKfenoi+kiVH6v7RyOA9Z74v2u3S5fi63V4GuzqN5l5GEv/1rMjaHXmr/r8i+sL
# gOppO6/8MO0ETI7f33VtY5E90Z1WTk+/gFcioXgRMiF670EKsT/7qMykXcGhiJtX
# cVZOSEXAQsmbdlsKgEhr/Xmfwb1tbWrJUnMTDXpQzTGCGaIwghmeAgEBMIGVMH4x
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01p
# Y3Jvc29mdCBDb2RlIFNpZ25pbmcgUENBIDIwMTECEzMAAALN82S/+NRMXVEAAAAA
# As0wDQYJYIZIAWUDBAIBBQCgga4wGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQw
# HAYKKwYBBAGCNwIBCzEOMAwGCisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIM34
# xkFm1fD1pKv4+nrAj2xvHhFVBQvPagnKrJ6UmKIaMEIGCisGAQQBgjcCAQwxNDAy
# oBSAEgBNAGkAYwByAG8AcwBvAGYAdKEagBhodHRwOi8vd3d3Lm1pY3Jvc29mdC5j
# b20wDQYJKoZIhvcNAQEBBQAEggEAWABhrslh3dSidlVQNIPbKlXd0xmF7+DsVuzB
# OwL44TAwUhm7+6KclU3GCaV8deVe+zt4+i5ZWNNEVqC+ub3xcUQHulImAwECTssA
# 3gfRqCn0xue9I3IDUDT1bkH6elqPwCa5WkChbH5tKt91r3Kq+KVr9HY3f1E+2Cjo
# 2XXMWVwqlpM4AXe89CKx5dmyMuIxJxDJfR05t8o6moZ8Lu/h9f3hhxQ++MddgGiH
# JYdI3FgJibR4y1Sr8epf03/ECtQMvxnGxb2dt5vmgcOyINA6dVaiKbgizc2JvZXT
# RLUdMSe3qS8w9aZ0H72ahu1ZavGbKJrwG7m09CQES8ui5SIg9qGCFywwghcoBgor
# BgEEAYI3AwMBMYIXGDCCFxQGCSqGSIb3DQEHAqCCFwUwghcBAgEDMQ8wDQYJYIZI
# AWUDBAIBBQAwggFZBgsqhkiG9w0BCRABBKCCAUgEggFEMIIBQAIBAQYKKwYBBAGE
# WQoDATAxMA0GCWCGSAFlAwQCAQUABCBR2jDO3iTM4/fnYqDiJ6vZrLSjjzfH8cqC
# 0GPm6O8eVwIGY/dZSNTjGBMyMDIzMDMwNjA2NTI1OS4yMjdaMASAAgH0oIHYpIHV
# MIHSMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMH
# UmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMS0wKwYDVQQL
# EyRNaWNyb3NvZnQgSXJlbGFuZCBPcGVyYXRpb25zIExpbWl0ZWQxJjAkBgNVBAsT
# HVRoYWxlcyBUU1MgRVNOOkZDNDEtNEJENC1EMjIwMSUwIwYDVQQDExxNaWNyb3Nv
# ZnQgVGltZS1TdGFtcCBTZXJ2aWNloIIRezCCBycwggUPoAMCAQICEzMAAAG59gAN
# ZVRPvAMAAQAAAbkwDQYJKoZIhvcNAQELBQAwfDELMAkGA1UEBhMCVVMxEzARBgNV
# BAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jv
# c29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAg
# UENBIDIwMTAwHhcNMjIwOTIwMjAyMjE3WhcNMjMxMjE0MjAyMjE3WjCB0jELMAkG
# A1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQx
# HjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEtMCsGA1UECxMkTWljcm9z
# b2Z0IElyZWxhbmQgT3BlcmF0aW9ucyBMaW1pdGVkMSYwJAYDVQQLEx1UaGFsZXMg
# VFNTIEVTTjpGQzQxLTRCRDQtRDIyMDElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUt
# U3RhbXAgU2VydmljZTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAONJ
# Pslh9RbHyQECbUIINxMF5uQkyN07VIShITXubLpWnANgBCLvCcJl7o/2HHORnsRc
# mSINJ/qclAmLIrOjnYnrbocAnixiMEXC+a1sZ84qxYWtEVY7VYw0LCczY+86U/8s
# hgxqsaezKpWriPOcpV1Sh8SsOxf30yO7jvld/IBA3T6lHM2pT/HRjWk/r9uyx0Q4
# atx0mkLVYS9y55/oTlKLE00h792S+maadAdy3VgTweiwoEOXD785wv3h+fwH/wTQ
# tC9lhAxhMO4p+OP9888Wxkbl6BqRWXud54RTzqp2Vr+yen1Q1A6umyMB7Xq0snIY
# G5B1Acc4UgJlPQ/ZiMkqgxQNFCWQvz0G9oLgSPD8Ky0AkX22PcDOboPuNT4RceWP
# X0UVZUsX9IUgs7QF41HiQSwEeOOHGyrfQdmSslATrbmH/18M5QrsTM5JINjct9G4
# 2xqN8VF9Z8WOiGMjNbvlpcEmmysYl5QyhrEDoFnQTU7bFrD3JX0fIfu1sbLWeBqX
# wbp4Z8yACTtphK2VbzOvi4vc0RCmRNzvYQQ2PjZ7NaTXE4Gu3vggAJ+rtzUTAfJo
# tvOSqcMgNwLZa1Y+ET/lb0VyjrYwFuHtg0QWyQjP5350LTpv086pyVUh4A3w/Os5
# hTGFZgFe5bCyMnpY09M0yPdHaQ/56oYUsSIcyKyVAgMBAAGjggFJMIIBRTAdBgNV
# HQ4EFgQUt7A4cdtYQ5oJjE1ZqrSonp41RFIwHwYDVR0jBBgwFoAUn6cVXQBeYl2D
# 9OXSZacbUzUZ6XIwXwYDVR0fBFgwVjBUoFKgUIZOaHR0cDovL3d3dy5taWNyb3Nv
# ZnQuY29tL3BraW9wcy9jcmwvTWljcm9zb2Z0JTIwVGltZS1TdGFtcCUyMFBDQSUy
# MDIwMTAoMSkuY3JsMGwGCCsGAQUFBwEBBGAwXjBcBggrBgEFBQcwAoZQaHR0cDov
# L3d3dy5taWNyb3NvZnQuY29tL3BraW9wcy9jZXJ0cy9NaWNyb3NvZnQlMjBUaW1l
# LVN0YW1wJTIwUENBJTIwMjAxMCgxKS5jcnQwDAYDVR0TAQH/BAIwADAWBgNVHSUB
# Af8EDDAKBggrBgEFBQcDCDAOBgNVHQ8BAf8EBAMCB4AwDQYJKoZIhvcNAQELBQAD
# ggIBAM3cZ7NFUHRMsLKzjl7rJPIkv7oJ+s9kkut0hZif9WSt60SzYGULp1zmdPqc
# +w8eHTkhqX0GKCp2TTqSzBXBhwHOm8+p6hUxNlDewGMZUos952aTXblAT3OKBnfV
# BLQyUavrSjuJGZAW30cNY3rjVDUlGD+VygQHySaDaviJQbK6/6fQvUUFoqIk3ldG
# fjnAtnebsVlqh6WWamVc5AZdpWR1jSzN/oxKYqc1BG4SxxlPtcfrAdBz/cU4bxVX
# qAAf02NZscvJNpRnOALf5kVo2HupJXCsk9TzP5PNW2sTS3TmwhIQmPxr0E0UqOoj
# UrBJUOhbITAxcnSa/IMluL1HXRtLQZI+xs2eRtuPOUsKUW71/1YeqsYCLHLvu82c
# eDVQQvP7GHEEkp2kEjiofbjYErBo2iCEaxxeX4Z9HvAgA4MsQkbn6e4EFQf13sP+
# Kn3XgMIvJbqLJeFcQja+SUeOXu5cfkxe0GzTNojdyIwzaHlhOflVRZNrxee3B+yZ
# wd3JHDIvv71uSI/SIzzt9cU2GyHQVqxBSrRtKW6W8Vw7zpVvoVsIv3ljxg+7NiGS
# lXX1s7zbBNDMUj9OnzOlHK/3mrOU8YEuRf6RwakW5UCeGamy5MiKu2YuyKiGBCv4
# OGhPstNe7ALkEOh8BX12t4ntuYu+gw9L6yCPY0jWYaQtzAP9MIIHcTCCBVmgAwIB
# AgITMwAAABXF52ueAptJmQAAAAAAFTANBgkqhkiG9w0BAQsFADCBiDELMAkGA1UE
# BhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAc
# BgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEyMDAGA1UEAxMpTWljcm9zb2Z0
# IFJvb3QgQ2VydGlmaWNhdGUgQXV0aG9yaXR5IDIwMTAwHhcNMjEwOTMwMTgyMjI1
# WhcNMzAwOTMwMTgzMjI1WjB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGlu
# Z3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBv
# cmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDCC
# AiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAOThpkzntHIhC3miy9ckeb0O
# 1YLT/e6cBwfSqWxOdcjKNVf2AX9sSuDivbk+F2Az/1xPx2b3lVNxWuJ+Slr+uDZn
# hUYjDLWNE893MsAQGOhgfWpSg0S3po5GawcU88V29YZQ3MFEyHFcUTE3oAo4bo3t
# 1w/YJlN8OWECesSq/XJprx2rrPY2vjUmZNqYO7oaezOtgFt+jBAcnVL+tuhiJdxq
# D89d9P6OU8/W7IVWTe/dvI2k45GPsjksUZzpcGkNyjYtcI4xyDUoveO0hyTD4MmP
# frVUj9z6BVWYbWg7mka97aSueik3rMvrg0XnRm7KMtXAhjBcTyziYrLNueKNiOSW
# rAFKu75xqRdbZ2De+JKRHh09/SDPc31BmkZ1zcRfNN0Sidb9pSB9fvzZnkXftnIv
# 231fgLrbqn427DZM9ituqBJR6L8FA6PRc6ZNN3SUHDSCD/AQ8rdHGO2n6Jl8P0zb
# r17C89XYcz1DTsEzOUyOArxCaC4Q6oRRRuLRvWoYWmEBc8pnol7XKHYC4jMYcten
# IPDC+hIK12NvDMk2ZItboKaDIV1fMHSRlJTYuVD5C4lh8zYGNRiER9vcG9H9stQc
# xWv2XFJRXRLbJbqvUAV6bMURHXLvjflSxIUXk8A8FdsaN8cIFRg/eKtFtvUeh17a
# j54WcmnGrnu3tz5q4i6tAgMBAAGjggHdMIIB2TASBgkrBgEEAYI3FQEEBQIDAQAB
# MCMGCSsGAQQBgjcVAgQWBBQqp1L+ZMSavoKRPEY1Kc8Q/y8E7jAdBgNVHQ4EFgQU
# n6cVXQBeYl2D9OXSZacbUzUZ6XIwXAYDVR0gBFUwUzBRBgwrBgEEAYI3TIN9AQEw
# QTA/BggrBgEFBQcCARYzaHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3BraW9wcy9E
# b2NzL1JlcG9zaXRvcnkuaHRtMBMGA1UdJQQMMAoGCCsGAQUFBwMIMBkGCSsGAQQB
# gjcUAgQMHgoAUwB1AGIAQwBBMAsGA1UdDwQEAwIBhjAPBgNVHRMBAf8EBTADAQH/
# MB8GA1UdIwQYMBaAFNX2VsuP6KJcYmjRPZSQW9fOmhjEMFYGA1UdHwRPME0wS6BJ
# oEeGRWh0dHA6Ly9jcmwubWljcm9zb2Z0LmNvbS9wa2kvY3JsL3Byb2R1Y3RzL01p
# Y1Jvb0NlckF1dF8yMDEwLTA2LTIzLmNybDBaBggrBgEFBQcBAQROMEwwSgYIKwYB
# BQUHMAKGPmh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2kvY2VydHMvTWljUm9v
# Q2VyQXV0XzIwMTAtMDYtMjMuY3J0MA0GCSqGSIb3DQEBCwUAA4ICAQCdVX38Kq3h
# LB9nATEkW+Geckv8qW/qXBS2Pk5HZHixBpOXPTEztTnXwnE2P9pkbHzQdTltuw8x
# 5MKP+2zRoZQYIu7pZmc6U03dmLq2HnjYNi6cqYJWAAOwBb6J6Gngugnue99qb74p
# y27YP0h1AdkY3m2CDPVtI1TkeFN1JFe53Z/zjj3G82jfZfakVqr3lbYoVSfQJL1A
# oL8ZthISEV09J+BAljis9/kpicO8F7BUhUKz/AyeixmJ5/ALaoHCgRlCGVJ1ijbC
# HcNhcy4sa3tuPywJeBTpkbKpW99Jo3QMvOyRgNI95ko+ZjtPu4b6MhrZlvSP9pEB
# 9s7GdP32THJvEKt1MMU0sHrYUP4KWN1APMdUbZ1jdEgssU5HLcEUBHG/ZPkkvnNt
# yo4JvbMBV0lUZNlz138eW0QBjloZkWsNn6Qo3GcZKCS6OEuabvshVGtqRRFHqfG3
# rsjoiV5PndLQTHa1V1QJsWkBRH58oWFsc/4Ku+xBZj1p/cvBQUl+fpO+y/g75LcV
# v7TOPqUxUYS8vwLBgqJ7Fx0ViY1w/ue10CgaiQuPNtq6TPmb/wrpNPgkNWcr4A24
# 5oyZ1uEi6vAnQj0llOZ0dFtq0Z4+7X6gMTN9vMvpe784cETRkPHIqzqKOghif9lw
# Y1NNje6CbaUFEMFxBmoQtB1VM1izoXBm8qGCAtcwggJAAgEBMIIBAKGB2KSB1TCB
# 0jELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1Jl
# ZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEtMCsGA1UECxMk
# TWljcm9zb2Z0IElyZWxhbmQgT3BlcmF0aW9ucyBMaW1pdGVkMSYwJAYDVQQLEx1U
# aGFsZXMgVFNTIEVTTjpGQzQxLTRCRDQtRDIyMDElMCMGA1UEAxMcTWljcm9zb2Z0
# IFRpbWUtU3RhbXAgU2VydmljZaIjCgEBMAcGBSsOAwIaAxUAx2IeGHhk58MQkzzS
# WknGcLjfgTqggYMwgYCkfjB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGlu
# Z3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBv
# cmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDAN
# BgkqhkiG9w0BAQUFAAIFAOevrvowIhgPMjAyMzAzMDYwODE0NTBaGA8yMDIzMDMw
# NzA4MTQ1MFowdzA9BgorBgEEAYRZCgQBMS8wLTAKAgUA56+u+gIBADAKAgEAAgIL
# xwIB/zAHAgEAAgIR4jAKAgUA57EAegIBADA2BgorBgEEAYRZCgQCMSgwJjAMBgor
# BgEEAYRZCgMCoAowCAIBAAIDB6EgoQowCAIBAAIDAYagMA0GCSqGSIb3DQEBBQUA
# A4GBAChMY0P6inZMGESQuK6x8lCQwdXV01KXpYpOftDBxMwehu1c/fmdlzH4HXL5
# 1cZhBf8Wu/UOWu/64kJQuJ2+qya2sM2vPuGF17kl9Vc7n1CMSZL3qT3nEHMfVlCk
# OWkuyMNk1JZotgMPHwK0cxB6wkWi6+39eakFdbmnQqOkDRH8MYIEDTCCBAkCAQEw
# gZMwfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcT
# B1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UE
# AxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTACEzMAAAG59gANZVRPvAMA
# AQAAAbkwDQYJYIZIAWUDBAIBBQCgggFKMBoGCSqGSIb3DQEJAzENBgsqhkiG9w0B
# CRABBDAvBgkqhkiG9w0BCQQxIgQgM4Jam6ocwUzEw5z5K7PhR7tSnEteR8he6FeD
# AmdicN8wgfoGCyqGSIb3DQEJEAIvMYHqMIHnMIHkMIG9BCBk60bO8W85uTAfJVEO
# 3vX2aLaQFcgcGpdwsOoi+foP9DCBmDCBgKR+MHwxCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1w
# IFBDQSAyMDEwAhMzAAABufYADWVUT7wDAAEAAAG5MCIEINHzEsP+siI5jkSsgiAY
# 7aZE31IUhyh7V/UR54RgYdidMA0GCSqGSIb3DQEBCwUABIICANdwHGimztYazKEK
# CYC5iCPrFfsV7LrvCtATQ9BUH+Ekj219f+w72t7eAo5RCigk8WyGaQoiiMKUA6mn
# Za2A/obZ+Y93JORlfdmo3SlgdldDAhIkoc9HwTXNeWVdCs3uth2GCVavwwK8grAm
# +Mnk4AOtRfkdsZTXgi9ZOaLQ+clT6LAuF7dG6wQsSIcqaJXh8TtfhhUExiOtKEnY
# /+aZexo2y14cLeA6FugFWVCyvS8KXsfqhroSbj38WVFyA3BdggR5QECP7qvAc0Fx
# VaH42Lyq5xfp8zwwb4WNZlGpeyeIyvbWX7iDxA1R+rzW1Y/cMj4wETlDAhKJ4JBP
# rspyp6RVodkve30zKwvgVeFJapO6nH97BZ9ACtaEtVieZafUotXyYypKCLQ5bRat
# npKBsQjUPFX0WVERp6Z1UctQDVPZzs5ov8tQGuzNFt4/JU5R3YAplYG3FX/fr5cm
# Vy3U3n5v2lP1kLEhbBDLbWnSGqahQ4hm2y6VheSfxGEQ/jvE0tqMhU0RExhpbAJ8
# OnufbmOMQeAPhJRgidYvuJSOqITrUKeGdMxY7/MlEv0k6zGALXZGn25zPjbqnNZA
# KgZnN8uxp6MCrTDYJ16EwiHAEfjfpcdimpTjoOLnxm/Qs5VmPRgzlwI1FveahliP
# X+xDrd+5ecNXUBDZWmZXJ83uWmj+
# SIG # End signature block
