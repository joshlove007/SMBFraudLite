# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the \"License\");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an \"AS IS\" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Create a in-memory object for Diagnostics Extension
.Description
Create a in-memory object for Diagnostics Extension
#>

function New-AzCloudServiceDiagnosticsExtension {
  [OutputType('Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20220904.Extension')]
  param(
    [Parameter(HelpMessage="Name of Diagnostics Extension.", Mandatory)]
    [string] $Name,

    [Parameter(HelpMessage="Subscription.")]
    [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
    [System.String]
    # Subscription credentials which uniquely identify Microsoft Azure subscription.
    # The subscription ID forms part of the URI for every service call.
    ${Subscription},

    [Parameter(HelpMessage="Resource Group name of Cloud Service.", Mandatory)]
    [string] $ResourceGroupName,

    [Parameter(HelpMessage="Name of Cloud Service.", Mandatory)]
    [string] $CloudServiceName,

    [Parameter(HelpMessage="Specifies the configuration for Azure Diagnostics. You can download the schema by using the following command: (Get-AzureServiceAvailableExtension -ExtensionName 'PaaSDiagnostics' -ProviderNamespace 'Microsoft.Azure.Diagnostics').PublicConfigurationSchema | Out-File -Encoding utf8 -FilePath 'WadConfig.xsd'", Mandatory)]
    [string] $DiagnosticsConfigurationPath,

    [Parameter(HelpMessage="Name of the Storage Account.", Mandatory)]
    [string] $StorageAccountName,

    [Parameter(HelpMessage="Storage Account Key.", Mandatory)]
    [string] $StorageAccountKey,

    [Parameter(HelpMessage="Specifies the version of the extension.")]
    [string] $TypeHandlerVersion,

    [Parameter(HelpMessage="Roles applied to.")]
    [string[]] $RolesAppliedTo,

    [Parameter(HelpMessage="Auto upgrade minor version.")]
    [Boolean] $AutoUpgradeMinorVersion
  )

  process {
    $publisher = "Microsoft.Azure.Diagnostics"
    $extensionType = "PaaSDiagnostics"

    if (!(Test-Path $DiagnosticsConfigurationPath -PathType Leaf))
    {
        throw ("DiagnosticsConfigurationPath does not exits: " + $DiagnosticsConfigurationPath)
    }

    [xml]$diagnosticsConfigurationXml = Get-Content $DiagnosticsConfigurationPath

    $storageAccount = $diagnosticsConfigurationXml.PublicConfig.ChildNodes | Where-Object { $_.Name -eq 'StorageAccount' }
    if ($storageAccount)
    {
        Write-Host "Using StorageAccount information defined in diagnostics configuration file."
    }
    else
    {
        $storageAccount = $diagnosticsConfigurationXml.CreateElement('StorageAccount', $diagnosticsConfigurationXml.PublicConfig.NamespaceURI)
        $storageAccount.InnerText = $StorageAccountName
        $storageAccount = $diagnosticsConfigurationXml.PublicConfig.AppendChild($storageAccount)
    }

    $metrics = $diagnosticsConfigurationXml.PublicConfig.WadCfg.DiagnosticMonitorConfiguration.ChildNodes | Where-Object { $_.Name -eq 'Metrics' }
    if ($metrics)
    {
        Write-Host "Using Metrics information defined in diagnostics configuration file."
    }
    else
    {
        $metrics = $diagnosticsConfigurationXml.CreateElement('Metrics', $diagnosticsConfigurationXml.PublicConfig.NamespaceURI)
        $resourceId = "/subscriptions/$Subscription/resourceGroups/$ResourceGroupName/providers/Microsoft.Compute/cloudservices/$CloudServiceName"
        $metrics.SetAttribute('resourceId', $resourceId)
        $metrics = $diagnosticsConfigurationXml.PublicConfig.WadCfg.DiagnosticMonitorConfiguration.AppendChild($metrics)
    }

    $setting = $diagnosticsConfigurationXml.PublicConfig.OuterXml

    $privateConfig = $diagnosticsConfigurationXml.ChildNodes | Where-Object { $_.Name -eq 'PrivateConfig' }
    if ($privateConfig)
    {
        $protectedSetting = $privateConfig.OuterXml
        Write-Host "Using PrivateConfig information defined in diagnostics configuration file."
    }
    else
    {
        $storageEndpoint = "https://core.windows.net"
        $protectedSetting = '<?xml version="1.0" encoding="UTF-8"?><PrivateConfig xmlns="http://schemas.microsoft.com/ServiceHosting/2010/10/DiagnosticsConfiguration"><StorageAccount endpoint="' + $storageEndpoint + '" key="' + $StorageAccountKey + '" name="' + $storageAccountName + '"/></PrivateConfig>'
    }

    return New-AzCloudServiceExtensionObject -Name $Name -Publisher $publisher -Type $extensionType -TypeHandlerVersion $TypeHandlerVersion -Setting $setting -ProtectedSetting $protectedSetting -RolesAppliedTo $RolesAppliedTo -AutoUpgradeMinorVersion $AutoUpgradeMinorVersion
  }
}

# SIG # Begin signature block
# MIInzgYJKoZIhvcNAQcCoIInvzCCJ7sCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCCiZt6V/hC4C8ER
# CFTpgLiFjBDmlWEZ5teHIyHgl6a8g6CCDYUwggYDMIID66ADAgECAhMzAAACzfNk
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
# cVZOSEXAQsmbdlsKgEhr/Xmfwb1tbWrJUnMTDXpQzTGCGZ8wghmbAgEBMIGVMH4x
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01p
# Y3Jvc29mdCBDb2RlIFNpZ25pbmcgUENBIDIwMTECEzMAAALN82S/+NRMXVEAAAAA
# As0wDQYJYIZIAWUDBAIBBQCgga4wGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQw
# HAYKKwYBBAGCNwIBCzEOMAwGCisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEINXL
# Ooyp3zwdZirxqzk/gHtJS4UEpRa/bu4gpJC3cdWMMEIGCisGAQQBgjcCAQwxNDAy
# oBSAEgBNAGkAYwByAG8AcwBvAGYAdKEagBhodHRwOi8vd3d3Lm1pY3Jvc29mdC5j
# b20wDQYJKoZIhvcNAQEBBQAEggEAtdwpJ55mc7xDrppbof5zsl/ZtWmZ2C56EYFh
# kxNaAz72DPT4cMyXotWlVwvIbxC1nsK+REmj3orSvVG3DI1kxt6j87az4nF44Y/l
# 0IbLA8Yp/GOxUSBzcXZj9pGKV35swAZ1Acy75i4YolDEdDZEgNokmRylDKlkGvxn
# EUPlCGcarUG/ybBMxZPkltjvV1KERB72iDdNCxERPr+JUrb2wsAw21SA3t+Dv8jD
# ZMo3LQrFbRjh3kHMu7avSHNwwix3M7G09/w2bD9izngqVdZQTlx/c5pwoUPVhYzf
# MlXDXNjqzu7/t2ZnQMRyLyP4KBSq2BGqiqCq2nCQq9kMGudrcqGCFykwghclBgor
# BgEEAYI3AwMBMYIXFTCCFxEGCSqGSIb3DQEHAqCCFwIwghb+AgEDMQ8wDQYJYIZI
# AWUDBAIBBQAwggFZBgsqhkiG9w0BCRABBKCCAUgEggFEMIIBQAIBAQYKKwYBBAGE
# WQoDATAxMA0GCWCGSAFlAwQCAQUABCCvOF1xXoO+wyi521EG15ME9bTmVm0tIZgo
# morfaxkqOQIGY/dZVvaSGBMyMDIzMDMwNjA2NTMwMS45MTFaMASAAgH0oIHYpIHV
# MIHSMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMH
# UmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMS0wKwYDVQQL
# EyRNaWNyb3NvZnQgSXJlbGFuZCBPcGVyYXRpb25zIExpbWl0ZWQxJjAkBgNVBAsT
# HVRoYWxlcyBUU1MgRVNOOjJBRDQtNEI5Mi1GQTAxMSUwIwYDVQQDExxNaWNyb3Nv
# ZnQgVGltZS1TdGFtcCBTZXJ2aWNloIIReDCCBycwggUPoAMCAQICEzMAAAGxypBD
# 7gvwA6sAAQAAAbEwDQYJKoZIhvcNAQELBQAwfDELMAkGA1UEBhMCVVMxEzARBgNV
# BAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jv
# c29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAg
# UENBIDIwMTAwHhcNMjIwOTIwMjAyMTU5WhcNMjMxMjE0MjAyMTU5WjCB0jELMAkG
# A1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQx
# HjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEtMCsGA1UECxMkTWljcm9z
# b2Z0IElyZWxhbmQgT3BlcmF0aW9ucyBMaW1pdGVkMSYwJAYDVQQLEx1UaGFsZXMg
# VFNTIEVTTjoyQUQ0LTRCOTItRkEwMTElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUt
# U3RhbXAgU2VydmljZTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAIai
# qz7V7BvH7IOMPEeDM2UwCpM8LxAUPeJ7Uvu9q0RiDBdBgshC/SDre3/YJBqGpn27
# a7XWOMviiBUfMNff51NxKFoSX62Gpq36YLRZk2hN1wigrCO656z5pVTjJp3Q8jdY
# AJX3ruJea3ccfTgxAgT3Uv/sP4w0+yZAYa2JZalV3MBgIFi3VwKFA4ClQcr+V4Sp
# Gzqz8faqabmYypuJ35Zn8G/201pAN2jDEOu7QaDC0rGyDdwSTVmXcHM46EFV6N2F
# 69nwfj2DZh74gnA1DB7NFcZn+4v1kqQWn7AzBJ+lmOxvKrURlV/u19Mw1YP+zVQy
# zKn5/4r/vuYSRj/thZr+FmZAUtTAacLzouBENuaSBuOY1k330eMp8nndSNUsUjj/
# nn7gcdFqzdQNudJb+XxmRwi9LwjA0/8PlOsKTZ8Xw6EEWPVLfNojSuWpZMTaMzz/
# wzSPp5J02kpYmkdl50lwyGRLO5X7iWINKmoXySdQmRdiGMTkvRStXKxIoEm/EJxC
# aI+k4S3+BWKWC07EV5T3UG7wbFb4LfvgbbaKM58HytAyjDnO9fEi0vrp8JFTtGhd
# twhEEkraMtGVt+CvnG0ZlH4mvpPRPuJbqE509e6CqmHwzTuUZPFMFWvJn4fPv0d3
# 2Ws9jv2YYmE/0WR1fULs+TxxpWgn1z0PAOsxSZRPAgMBAAGjggFJMIIBRTAdBgNV
# HQ4EFgQU9Jtnke8NrYSK9fFnoVE0pr0OOZMwHwYDVR0jBBgwFoAUn6cVXQBeYl2D
# 9OXSZacbUzUZ6XIwXwYDVR0fBFgwVjBUoFKgUIZOaHR0cDovL3d3dy5taWNyb3Nv
# ZnQuY29tL3BraW9wcy9jcmwvTWljcm9zb2Z0JTIwVGltZS1TdGFtcCUyMFBDQSUy
# MDIwMTAoMSkuY3JsMGwGCCsGAQUFBwEBBGAwXjBcBggrBgEFBQcwAoZQaHR0cDov
# L3d3dy5taWNyb3NvZnQuY29tL3BraW9wcy9jZXJ0cy9NaWNyb3NvZnQlMjBUaW1l
# LVN0YW1wJTIwUENBJTIwMjAxMCgxKS5jcnQwDAYDVR0TAQH/BAIwADAWBgNVHSUB
# Af8EDDAKBggrBgEFBQcDCDAOBgNVHQ8BAf8EBAMCB4AwDQYJKoZIhvcNAQELBQAD
# ggIBANjnN5JqpeVShIrQIaAQnNVOv1cDEmCkD6oQufX9NGOX28Jw/gdkGtMJyagA
# 0lVbumwQla5LPhBm5LjIUW/5aYhzSlZ7lxeDykw57wp2AqoMAJm7bXcXtJt/HyaR
# lN35hAhBV+DmGnBIRcE5C2bSFFY3asD50KUSCPmKl/0NFadPeoNqbj5ZUna8VAfM
# SDsdxeyxjs8r/9Vpqy8lgIVBqRrXtFt6n1+GFpJ+2AjPspfPO7Y+Y/ozv5dTEYum
# 5eDLDdD1thQmHkW8s0BBDbIOT3d+dWdPETkf50fM/nALkMEdvYo2gyiJrOSG0a9Z
# 2S/6mbJBUrgrkgPp2HjLkycR4Nhwl67ehAhWxJGKD2gRk88T2KKXLiRHAoYTZVpH
# bgkYLspBLJs9C77ZkuxXuvIOGaId7EJCBOVRMJygtx8FXpoSu3jWEdau0WBMXxhV
# AzEHTu7UKW3Dw+KGgW7RRlhrt589SK8lrPSvPM6PPnqEFf6PUsTVO0bOkzKnC3TO
# gui4JhlWliigtEtg1SlPMxcdMuc9uYdWSe1/2YWmr9ZrV1RuvpSSKvJLSYDlOf6a
# JrpnX7YKLMRoyKdzTkcvXw1JZfikJeGJjfRs2cT2JIbiNEGK4i5srQbVCvgCvdYV
# EVZXVW1Iz/LJLK9XbIkMMjmECJEsa07oadKcO4ed9vY6YYBGMIIHcTCCBVmgAwIB
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
# Y1NNje6CbaUFEMFxBmoQtB1VM1izoXBm8qGCAtQwggI9AgEBMIIBAKGB2KSB1TCB
# 0jELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1Jl
# ZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEtMCsGA1UECxMk
# TWljcm9zb2Z0IElyZWxhbmQgT3BlcmF0aW9ucyBMaW1pdGVkMSYwJAYDVQQLEx1U
# aGFsZXMgVFNTIEVTTjoyQUQ0LTRCOTItRkEwMTElMCMGA1UEAxMcTWljcm9zb2Z0
# IFRpbWUtU3RhbXAgU2VydmljZaIjCgEBMAcGBSsOAwIaAxUA7WSxvqQDbA7vyy69
# Tn0wP5BGxyuggYMwgYCkfjB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGlu
# Z3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBv
# cmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDAN
# BgkqhkiG9w0BAQUFAAIFAOevrwMwIhgPMjAyMzAzMDYwODE0NTlaGA8yMDIzMDMw
# NzA4MTQ1OVowdDA6BgorBgEEAYRZCgQBMSwwKjAKAgUA56+vAwIBADAHAgEAAgIi
# PjAHAgEAAgIRLjAKAgUA57EAgwIBADA2BgorBgEEAYRZCgQCMSgwJjAMBgorBgEE
# AYRZCgMCoAowCAIBAAIDB6EgoQowCAIBAAIDAYagMA0GCSqGSIb3DQEBBQUAA4GB
# AD7kHhC577CKQ3+wfxTuFlCKddxz7tJUW0uwdnIuQUYEUF6GVmhqznfhyiC5nzg0
# PSRsyva9XC0qjQK9CySt8sHTNdqxeSB9k9maZzbqSV1CJzxCjR7aL1JtrcBf44tc
# lVWl1EbgkMC/QTb7GCSYuZpxVJXzStm1GG5qJ4YvP5GFMYIEDTCCBAkCAQEwgZMw
# fDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1Jl
# ZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMd
# TWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTACEzMAAAGxypBD7gvwA6sAAQAA
# AbEwDQYJYIZIAWUDBAIBBQCgggFKMBoGCSqGSIb3DQEJAzENBgsqhkiG9w0BCRAB
# BDAvBgkqhkiG9w0BCQQxIgQghuCHRxEp8Mr1mSWblH/Hos/XkCBqW7402dgdBwh+
# yI4wgfoGCyqGSIb3DQEJEAIvMYHqMIHnMIHkMIG9BCCD7Q2LFFvfqeDoy9gpu35t
# 6dYerrDO0cMTlOIomzTPbDCBmDCBgKR+MHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQI
# EwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3Nv
# ZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBD
# QSAyMDEwAhMzAAABscqQQ+4L8AOrAAEAAAGxMCIEIKXTjrvdBrXJnUDeta+eb5aj
# ea59lrLRX/mgJKp36AnDMA0GCSqGSIb3DQEBCwUABIICACRd359vYege6w1PLoH5
# 6fTEiQxChmHZ2yMm51B/VS+CmvBAsBox7U0oA1lhez/0OZs3ahjX5Bo8pOFKR7si
# Zetz+SzBLtc1BHhSYKH1FJ1Ya7fGLLsi81pHWPAxw0CSFvAkxnVEokOACBvgrmLW
# ZGWBh3Mbb8oZvt2EHrheZtf+JwwMTgs/Fp2a4/0RQjTji+4AS3iX/LvDp2vcoMkC
# TdY1aQhf6XtWS2xE+aeKTXbT7ZRYFr7P9Hqzu2EEW86MN2y/E90ApLwDyy25x+Xz
# EWErIm1+3IG4QSuxd8i22yQUaM3ChFDw9Cm6CKuU7jKR89tzI1kRtqeaLYUO2/Pt
# koeyCgyRGe0kWDe1Q2PTlXF4qTRKOsoIBOiEZfBSXepI2G5bAENFPIHjtN8OoxX5
# XyyJ88GYekryLiq8JfK3ZfNVdH73ZzcGVxntTL6+OxDN+Sij+QFs3Xzc8q5UV/9N
# CukGwAnX1m8s9qyAzKte8Xjyl8RSNmJDVH1JOI1LsaxF17GI5q9nuIG+nK9ZVmwo
# biNiHH2MW0V8y5vwBEV7jsgpXcOTebwqGIZ5NJn5lyxTJu2TEFq8vuIdmnDaVHzM
# r1gvPvsuLDTL0AUtyDCCSSDzIXM9TChZwn8JOj1hHG3IsHnyYc6ipKPtpyjWxSvL
# 51zhkVFeDcdkb3fE3JYYPCFB
# SIG # End signature block
