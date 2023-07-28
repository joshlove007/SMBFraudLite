function New-AzDataProtectionPolicyTagCriteriaClientObject{
	[OutputType('Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Models.Api202301.IScheduleBasedBackupCriteria')]
    [CmdletBinding(PositionalBinding=$false)]
    [Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Description('Creates a new criteria object')]

    param(
        [Parameter(ParameterSetName='AbsoluteCriteria', Mandatory, HelpMessage='Absolute criteria')]
        [Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Support.AbsoluteTagCriteria]
        ${AbsoluteCriteria},

        [Parameter(ParameterSetName='ScheduleCriteria', HelpMessage='Days of the week')]
        [Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Support.DaysOfWeek[]]
        ${DaysOfWeek},

        [Parameter(ParameterSetName='ScheduleCriteria', HelpMessage='Weeks of the month.')]
        [Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Support.WeeksOfMonth[]]
        ${WeeksOfMonth},

        [Parameter(ParameterSetName='ScheduleCriteria', HelpMessage='Months of the year.')]
        [Parameter(ParameterSetName='MonthlyCriteria', HelpMessage='Months of the year.')]
        [Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Support.MonthsOfYear[]]
        ${MonthsOfYear},

        [Parameter(ParameterSetName='ScheduleCriteria', HelpMessage='Schedule times.')]
        [Parameter(ParameterSetName='MonthlyCriteria', HelpMessage='Schedule times.')]
        [System.DateTime[]]
        ${ScheduleTimes},

        [Parameter(ParameterSetName='MonthlyCriteria', Mandatory, HelpMessage='Days of the month. Allowed values are 1 to 28 and Last')]
        [System.String[]]
        ${DaysOfMonth}
    )

    process {
        $criteria = [Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Models.Api202301.ScheduleBasedBackupCriteria]::new()
        $criteria.ObjectType = "ScheduleBasedBackupCriteria"
        if($AbsoluteCriteria -ne $null){
            $criteria.AbsoluteCriterion = $AbsoluteCriteria
        }

        if($DaysOfWeek -ne $null){
            $criteria.DaysOfTheWeek = $DaysOfWeek | Foreach-Object { $_ = $_.ToString(); $_ }
        }

        if($WeeksOfMonth -ne $null){
            $criteria.WeeksOfTheMonth = $WeeksOfMonth | Foreach-Object { $_ = $_.ToString(); $_ }
        }

        if($MonthsOfYear -ne $null){
            $criteria.MonthsOfYear = $MonthsOfYear | Foreach-Object { $_ = $_.ToString(); $_ }
        }

        if($DaysOfMonth -ne $null){
            $criteria.DaysOfMonth = @()
            Foreach($dayOfMonth in $DaysOfMonth)
            {
                if($dayOfMonth -match "^[\d]+$")
                {
                    $dayOfMonthNumber = [int]$dayOfMonth
                    if(($dayOfMonthNumber -lt 1) -or ($dayOfMonthNumber -gt 28))
                    {
                        throw "Day of month should be between 1 and 28."
                    }
                    $day = [Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Models.Api202301.Day]::new()
                    $day.Date = $dayOfMonthNumber
                    $day.IsLast = $false
                    $criteria.DaysOfMonth += $day
                }
                else 
                {
                    if($dayOfMonth.ToLower() -ne "last")
                    {
                        thow "Day of month should either be between 1 and 28 or it should be last"
                    }
                    $day = [Microsoft.Azure.PowerShell.Cmdlets.DataProtection.Models.Api202301.Day]::new()
                    $day.IsLast = $true
                    $criteria.DaysOfMonth += $day
                }
            }
        }

        if($ScheduleTimes -ne $null){
            $criteria.ScheduleTime = $ScheduleTimes
        }


        return $criteria
    }
}
# SIG # Begin signature block
# MIInoAYJKoZIhvcNAQcCoIInkTCCJ40CAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCDafTfBykQrxkCy
# 8chXhBcR1/RYr+HzltnYhyGi9sr3dqCCDYUwggYDMIID66ADAgECAhMzAAACzfNk
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
# cVZOSEXAQsmbdlsKgEhr/Xmfwb1tbWrJUnMTDXpQzTGCGXEwghltAgEBMIGVMH4x
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01p
# Y3Jvc29mdCBDb2RlIFNpZ25pbmcgUENBIDIwMTECEzMAAALN82S/+NRMXVEAAAAA
# As0wDQYJYIZIAWUDBAIBBQCgga4wGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQw
# HAYKKwYBBAGCNwIBCzEOMAwGCisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIIYB
# wEmFJfQ/rBZaJzFm7fP/AUbIQv2TmjFOyB8iGpoNMEIGCisGAQQBgjcCAQwxNDAy
# oBSAEgBNAGkAYwByAG8AcwBvAGYAdKEagBhodHRwOi8vd3d3Lm1pY3Jvc29mdC5j
# b20wDQYJKoZIhvcNAQEBBQAEggEAry+gYBTTABKmM+hPO8on6AFDEow+Ixe1FCed
# x/Gs9JK2KAcO9/vFzGSLQx4n3a5jPQuK0YtETQ3qfCKG6LYEoumPwudSkASKuXCt
# a2apJFUGeyR9J4dOzMz1dv07GFNrytFLc6QdpNjhrWzPa83u4HAzZ+fBtSThVtvh
# KCl8AQXQjRGt79tW9zLE/EdCIfs0ZMfNpecKPJWbLQ6KXJ96nbyEwyRGejyyAwKt
# 63ise3JOldzEXX/Jtp5wstNIDsipDUfD7QJhKV7MUVoYj8peIQvQnNjJ5bHDtyb3
# cnXhaxV4PyCVWTIQHMqQOcY+eFJVzxZnPW28SFqjHKvM7DeMdaGCFvswghb3Bgor
# BgEEAYI3AwMBMYIW5zCCFuMGCSqGSIb3DQEHAqCCFtQwghbQAgEDMQ8wDQYJYIZI
# AWUDBAIBBQAwggFPBgsqhkiG9w0BCRABBKCCAT4EggE6MIIBNgIBAQYKKwYBBAGE
# WQoDATAxMA0GCWCGSAFlAwQCAQUABCDn8zeozsc5/L8v1AjCpkubkJXCCdd421g1
# rHdUwqFpPQIGZBMnan/iGBEyMDIzMDMzMDA1NDQzNy40WjAEgAIB9KCB0KSBzTCB
# yjELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1Jl
# ZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjElMCMGA1UECxMc
# TWljcm9zb2Z0IEFtZXJpY2EgT3BlcmF0aW9uczEmMCQGA1UECxMdVGhhbGVzIFRT
# UyBFU046M0U3QS1FMzU5LUEyNUQxJTAjBgNVBAMTHE1pY3Jvc29mdCBUaW1lLVN0
# YW1wIFNlcnZpY2WgghFUMIIHDDCCBPSgAwIBAgITMwAAAcn61Y4lIHQCXgABAAAB
# yTANBgkqhkiG9w0BAQsFADB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGlu
# Z3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBv
# cmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDAe
# Fw0yMjExMDQxOTAxMzhaFw0yNDAyMDIxOTAxMzhaMIHKMQswCQYDVQQGEwJVUzET
# MBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMV
# TWljcm9zb2Z0IENvcnBvcmF0aW9uMSUwIwYDVQQLExxNaWNyb3NvZnQgQW1lcmlj
# YSBPcGVyYXRpb25zMSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjozRTdBLUUzNTkt
# QTI1RDElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2VydmljZTCCAiIw
# DQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBANZy4uWOb8/CvlqMYZO6hlv7wsYu
# XrkzNNU4hGxThvIO0hQdFTI2IKOk4kc4DkPgjedzgTipcjB1s0S+Mb2ktN2ZSIHr
# SCC2IgEqILBLZY8xJURzu3wxgxVnHc/pQjWJiaM7WxtzzK58W5VBx1JK+AuxAR29
# mNOxneRiQYD/PuQGTbE5bBxnMx7OOZpj+61IHDJ//3PEPxmEqnU+DlxC6ed4ffRJ
# 8heM3LHdmRY8XY9ZT/EBsGWUuBfNiQRntqQq0mpMhY08cxSlDsHEHq8AUf2GkJcu
# 5rQq2uDzXMhEJvp/yw3Hv1VYkGvDjNpwWRysOgsjKhMxSScuR4s8/Gesa6qiyrYv
# L4iVENBbapE10kd//8PDwCsgZbyGExRfy8tyYd3G1XjoEprmzlcL/JzHoXEG9gLc
# XFP5XchFKsvP7YRByFjWm8x18eTvQ+G7UuqCXYC5h8a0wbRrHFUKsdM+f31CJCxO
# 7W8H6KvOHBf1ESxMsN6ueyldlOIDoXN+el2BFUHSV6OlRVgUA2G82p0Nuc2NtVAp
# I/NtQsg/dIKqzt60D5XEKOnq8Ftgxdn7JoAG1as0LM+kZJmn8+K3te5Ju6ntPT7s
# B8OXt8eWSBhKFZXzZyb+vvOdbsCl+gKWRcT83kKO1v+QbWk5pGRIcGOQHQj4D79G
# miBEJ9qhezLxcAnLAgMBAAGjggE2MIIBMjAdBgNVHQ4EFgQUBW+dZ0bCPKG+eDoU
# xXlRe0QuMsswHwYDVR0jBBgwFoAUn6cVXQBeYl2D9OXSZacbUzUZ6XIwXwYDVR0f
# BFgwVjBUoFKgUIZOaHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3BraW9wcy9jcmwv
# TWljcm9zb2Z0JTIwVGltZS1TdGFtcCUyMFBDQSUyMDIwMTAoMSkuY3JsMGwGCCsG
# AQUFBwEBBGAwXjBcBggrBgEFBQcwAoZQaHR0cDovL3d3dy5taWNyb3NvZnQuY29t
# L3BraW9wcy9jZXJ0cy9NaWNyb3NvZnQlMjBUaW1lLVN0YW1wJTIwUENBJTIwMjAx
# MCgxKS5jcnQwDAYDVR0TAQH/BAIwADATBgNVHSUEDDAKBggrBgEFBQcDCDANBgkq
# hkiG9w0BAQsFAAOCAgEANqi6nGbfR4pCB3I+wJZx4Y6LsUozngWkxPhCvGl3FS5v
# XAPA9v2WNjlKWLznYbgxFfYRJVZs6KYibpP8QWIenViU0YZku4VY6xras0hVtC33
# 7EcrI8ZKbqsoR4gQ8TFzBmehnc1H6lT9mXdjvifwWECYLPTR2M/wjOF2kT/k9lTN
# yRNZkjtai2vpnweNu0Ii4/yQu01GIIeEWPqCzBVbkCWb12Jf4yExX1KaSaAGpAa9
# FXNq9ZD+Q4iWjb2Vif3LmGolkOJPcacOsBs96qu8QFp5Rs7GsMBYY7cKuRB/7N+y
# wn3ocrgsPGUSfVt7YEhXqQFTO7FBPj691Lvoj7wVeE7EwzRS9AlSD1/tVziemERm
# CdpBxqaBnP+bIANiCkHJfe2Q2CSKosYMCjX7cje9DtAE26U1YbGzdNRVZYtB/r4H
# Bocs5Oo6QMsBzw0kP8aBHhlOPujxU1zETv3zMxnFHH9GR6mTJtFIaB/LTrZNfJOg
# e+SiV07WN2TO6U37q0r9kK7+c8wgYssrLTj8PyCSPpPaKU4Grawt/S+vfysMrQ9M
# e7dI5k17ZS2Whr6EpY3csq+kA0VZKrAmi1EkrAIlnmr+aoOuFN5i5nnpKNBPUyec
# s7Tf43Is5R8dF7IDrjerLm9wj1ewADDIiqKXUGKoj17vSMb6l0+whP0jAtqXDckw
# ggdxMIIFWaADAgECAhMzAAAAFcXna54Cm0mZAAAAAAAVMA0GCSqGSIb3DQEBCwUA
# MIGIMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMH
# UmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMTIwMAYDVQQD
# EylNaWNyb3NvZnQgUm9vdCBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkgMjAxMDAeFw0y
# MTA5MzAxODIyMjVaFw0zMDA5MzAxODMyMjVaMHwxCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1w
# IFBDQSAyMDEwMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA5OGmTOe0
# ciELeaLL1yR5vQ7VgtP97pwHB9KpbE51yMo1V/YBf2xK4OK9uT4XYDP/XE/HZveV
# U3Fa4n5KWv64NmeFRiMMtY0Tz3cywBAY6GB9alKDRLemjkZrBxTzxXb1hlDcwUTI
# cVxRMTegCjhuje3XD9gmU3w5YQJ6xKr9cmmvHaus9ja+NSZk2pg7uhp7M62AW36M
# EBydUv626GIl3GoPz130/o5Tz9bshVZN7928jaTjkY+yOSxRnOlwaQ3KNi1wjjHI
# NSi947SHJMPgyY9+tVSP3PoFVZhtaDuaRr3tpK56KTesy+uDRedGbsoy1cCGMFxP
# LOJiss254o2I5JasAUq7vnGpF1tnYN74kpEeHT39IM9zfUGaRnXNxF803RKJ1v2l
# IH1+/NmeRd+2ci/bfV+AutuqfjbsNkz2K26oElHovwUDo9Fzpk03dJQcNIIP8BDy
# t0cY7afomXw/TNuvXsLz1dhzPUNOwTM5TI4CvEJoLhDqhFFG4tG9ahhaYQFzymei
# XtcodgLiMxhy16cg8ML6EgrXY28MyTZki1ugpoMhXV8wdJGUlNi5UPkLiWHzNgY1
# GIRH29wb0f2y1BzFa/ZcUlFdEtsluq9QBXpsxREdcu+N+VLEhReTwDwV2xo3xwgV
# GD94q0W29R6HXtqPnhZyacaue7e3PmriLq0CAwEAAaOCAd0wggHZMBIGCSsGAQQB
# gjcVAQQFAgMBAAEwIwYJKwYBBAGCNxUCBBYEFCqnUv5kxJq+gpE8RjUpzxD/LwTu
# MB0GA1UdDgQWBBSfpxVdAF5iXYP05dJlpxtTNRnpcjBcBgNVHSAEVTBTMFEGDCsG
# AQQBgjdMg30BATBBMD8GCCsGAQUFBwIBFjNodHRwOi8vd3d3Lm1pY3Jvc29mdC5j
# b20vcGtpb3BzL0RvY3MvUmVwb3NpdG9yeS5odG0wEwYDVR0lBAwwCgYIKwYBBQUH
# AwgwGQYJKwYBBAGCNxQCBAweCgBTAHUAYgBDAEEwCwYDVR0PBAQDAgGGMA8GA1Ud
# EwEB/wQFMAMBAf8wHwYDVR0jBBgwFoAU1fZWy4/oolxiaNE9lJBb186aGMQwVgYD
# VR0fBE8wTTBLoEmgR4ZFaHR0cDovL2NybC5taWNyb3NvZnQuY29tL3BraS9jcmwv
# cHJvZHVjdHMvTWljUm9vQ2VyQXV0XzIwMTAtMDYtMjMuY3JsMFoGCCsGAQUFBwEB
# BE4wTDBKBggrBgEFBQcwAoY+aHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3BraS9j
# ZXJ0cy9NaWNSb29DZXJBdXRfMjAxMC0wNi0yMy5jcnQwDQYJKoZIhvcNAQELBQAD
# ggIBAJ1VffwqreEsH2cBMSRb4Z5yS/ypb+pcFLY+TkdkeLEGk5c9MTO1OdfCcTY/
# 2mRsfNB1OW27DzHkwo/7bNGhlBgi7ulmZzpTTd2YurYeeNg2LpypglYAA7AFvono
# aeC6Ce5732pvvinLbtg/SHUB2RjebYIM9W0jVOR4U3UkV7ndn/OOPcbzaN9l9qRW
# qveVtihVJ9AkvUCgvxm2EhIRXT0n4ECWOKz3+SmJw7wXsFSFQrP8DJ6LGYnn8Atq
# gcKBGUIZUnWKNsIdw2FzLixre24/LAl4FOmRsqlb30mjdAy87JGA0j3mSj5mO0+7
# hvoyGtmW9I/2kQH2zsZ0/fZMcm8Qq3UwxTSwethQ/gpY3UA8x1RtnWN0SCyxTkct
# wRQEcb9k+SS+c23Kjgm9swFXSVRk2XPXfx5bRAGOWhmRaw2fpCjcZxkoJLo4S5pu
# +yFUa2pFEUep8beuyOiJXk+d0tBMdrVXVAmxaQFEfnyhYWxz/gq77EFmPWn9y8FB
# SX5+k77L+DvktxW/tM4+pTFRhLy/AsGConsXHRWJjXD+57XQKBqJC4822rpM+Zv/
# Cuk0+CQ1ZyvgDbjmjJnW4SLq8CdCPSWU5nR0W2rRnj7tfqAxM328y+l7vzhwRNGQ
# 8cirOoo6CGJ/2XBjU02N7oJtpQUQwXEGahC0HVUzWLOhcGbyoYICyzCCAjQCAQEw
# gfihgdCkgc0wgcoxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAw
# DgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24x
# JTAjBgNVBAsTHE1pY3Jvc29mdCBBbWVyaWNhIE9wZXJhdGlvbnMxJjAkBgNVBAsT
# HVRoYWxlcyBUU1MgRVNOOjNFN0EtRTM1OS1BMjVEMSUwIwYDVQQDExxNaWNyb3Nv
# ZnQgVGltZS1TdGFtcCBTZXJ2aWNloiMKAQEwBwYFKw4DAhoDFQB96YvL/h4Bm41U
# LOBt+nUcVgbdDqCBgzCBgKR+MHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNo
# aW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29y
# cG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEw
# MA0GCSqGSIb3DQEBBQUAAgUA589xfzAiGA8yMDIzMDMzMDEwMjUwM1oYDzIwMjMw
# MzMxMTAyNTAzWjB0MDoGCisGAQQBhFkKBAExLDAqMAoCBQDnz3F/AgEAMAcCAQAC
# AiYuMAcCAQACAmslMAoCBQDn0ML/AgEAMDYGCisGAQQBhFkKBAIxKDAmMAwGCisG
# AQQBhFkKAwKgCjAIAgEAAgMHoSChCjAIAgEAAgMBhqAwDQYJKoZIhvcNAQEFBQAD
# gYEAiweyl0Zkn02dNzaqAq1q9HkHQnIP/Pg8VwvchwC7XIHNMSC+KUAB9youKJb5
# NLYmEOcBFMp8uhmctvjMelvH28OGVywle2ZTU58eTWrmtn5RjAdOp1liDBgP+r6a
# gUx1gF92aqcyyrBdmYjP5hKO5qQ4Uo8ZAyknPe6dt6hlG8MxggQNMIIECQIBATCB
# kzB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMH
# UmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQD
# Ex1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMAITMwAAAcn61Y4lIHQCXgAB
# AAAByTANBglghkgBZQMEAgEFAKCCAUowGgYJKoZIhvcNAQkDMQ0GCyqGSIb3DQEJ
# EAEEMC8GCSqGSIb3DQEJBDEiBCASIp8lr/jpeU/5x3sQDNOUUEUWT1CH8Fn36EPt
# kJQYQjCB+gYLKoZIhvcNAQkQAi8xgeowgecwgeQwgb0EIIF1zn9S3VFLECd4Kdh/
# YA0jIYkA/8194V184dk5dv2BMIGYMIGApH4wfDELMAkGA1UEBhMCVVMxEzARBgNV
# BAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jv
# c29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAg
# UENBIDIwMTACEzMAAAHJ+tWOJSB0Al4AAQAAAckwIgQg53W9/xd8gnHv75/U/fGc
# gA80qA5lC1UxcLWD2VlJT80wDQYJKoZIhvcNAQELBQAEggIADtpKCDyPbFU7kVaV
# F14nNEQCWnYF+vlhW30XhBa1Hy+rEKBoErSUTuMmsELyCgr06bCaQP7PhobQLnar
# feUn+yZ55aIL+s/2CE50+fbLBhwc1sl7ftmopKYhlE36cbCDkFffNMnH5RG4qeBH
# 57pdhcrMXtg5wYzXLbUEh2VOy8BEZMg7dpfnCCSMpiGpMAThBVX22qtDwSbkoZJf
# fFS+trdQ55VDZKwpuLdeubYtyk5I8AP0q9/w8WgtIUaCOtwJ4FHYhE3zisdTVh8T
# FQg79bdUzJXGWyMoyku40XwqFVEXfp+96Mp5P3ApbRzkOOpkR3MVbHNY6DV/noXD
# GhUdLfxweiRZK5fhx/Q/79s7sTU7culYeGvTdDmciBbTp1xHttMcAIeSdQB3UxSc
# knFmGjn1pcOxILf1YSghW3ceFMrgrGlEe5Gvu97BMlszqrsmaL8dUKc2xUn6S47N
# YS6RgwsMEjeiHqMwMRQVZsnwYYlN10bgSbVF8iTBuxuy2ZgehZazx6DsP0616okP
# Y/57b+uY/KSCAXy338sMY0J7jYyP2PYUGjeBTDWiyTIugKQDrM0pQ0GbnV6w6t/N
# wkUEBaS7sW1OHwxjW4pYKuiQmtXL3AFEheYc/rLM/tXuhwxEq83tat2KLh6DE2mP
# Q0TMI5hdayQ7ehr3lnmijdAiiOE=
# SIG # End signature block
