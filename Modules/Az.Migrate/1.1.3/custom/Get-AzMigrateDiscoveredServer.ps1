
# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get All discovered servers in a migrate project.
.Description
Get Azure migrate server commandlet fetches all servers in a migrate project.
.Link
https://docs.microsoft.com/powershell/module/az.migrate/get-azmigratediscoveredserver
#>

function Get-AzMigrateDiscoveredServer {
    [OutputType([Microsoft.Azure.PowerShell.Cmdlets.Migrate.Models.Api202001.IVMwareMachine])]
    [CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
    param (
        [Parameter(Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Category('Path')]
        [System.String]
        # Specifies the migrate project name.
        ${ProjectName},

        [Parameter(Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Category('Path')]
        [System.String]
        # Specifies the resource group name.
        ${ResourceGroupName},

        [Parameter(ParameterSetName='Get', Mandatory)]
        [Parameter(ParameterSetName='GetInSite', Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Category('Path')]
        [System.String]
        # Specifies the VMware machine name. This is an internal Name. For users, use display name.
        ${Name},

        [Parameter(ParameterSetName='List')]
        [Parameter(ParameterSetName='ListInSite')]
        [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Category('Path')]
        [System.String]
        # Specifies the VMware machine display name.
        ${DisplayName},

        [Parameter(ParameterSetName='GetInSite', Mandatory)]
        [Parameter(ParameterSetName='ListInSite', Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Category('Path')]
        [System.String]
        # Specifies the appliance name. This internally maps to a site.
        ${ApplianceName},

        [Parameter()]
        [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Category('Path')]
        [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
        [System.String[]]
        # Specifies the subscription id.
        ${SubscriptionId}
    )
    
    process {
        $parameterSet = $PSCmdlet.ParameterSetName
        
        $discoverySolutionName = "Servers-Discovery-ServerDiscovery"
        $discoverySolution = Get-AzMigrateSolution -SubscriptionId $SubscriptionId -ResourceGroupName $ResourceGroupName -MigrateProjectName $ProjectName -Name $discoverySolutionName
        if ($discoverySolution.Name -ne $discoverySolutionName) {
            throw "Server Discovery Solution not found."
        }

        $appMap = @{}

        if ($null -ne $discoverySolution.DetailExtendedDetail["applianceNameToSiteIdMapV2"]) {
            $appMapV2 = $discoverySolution.DetailExtendedDetail["applianceNameToSiteIdMapV2"] | ConvertFrom-Json
            # Fetch all appliance from V2 map first. Then these can be updated if found again in V3 map.
            foreach ($item in $appMapV2) {
                $appMap[$item.ApplianceName] = $item.SiteId
            }
        }
        
        if ($null -ne $discoverySolution.DetailExtendedDetail["applianceNameToSiteIdMapV3"]) {
            $appMapV3 = $discoverySolution.DetailExtendedDetail["applianceNameToSiteIdMapV3"] | ConvertFrom-Json
            foreach ($item in $appMapV3) {
                $t = $item.psobject.properties
                $appMap[$t.Name] = $t.Value.SiteId
            }    
        }

        if ($null -eq $discoverySolution.DetailExtendedDetail["applianceNameToSiteIdMapV2"] -And
             $null -eq $discoverySolution.DetailExtendedDetail["applianceNameToSiteIdMapV3"] ) {
            throw "Server Discovery Solution missing Appliance Details. Invalid Solution."           
        }

        # Regex to match site name.
        $r = '(?<=/Microsoft.OffAzure/VMwareSites/).*$'
        $siteNameTmp = ""
        if ($parameterSet -match "Site") {
            #Fetch by site scenario. This is when site name filter is provided.
            $siteFound = 0
            foreach ($kvp in $appMap.GetEnumerator()) {
                if ($kvp.Key -eq $ApplianceName) {
                    $siteArmId = $kvp.Value
                    if ($siteArmId -match $r) {
                        $siteNameTmp = $Matches[0]
                        $siteFound = 1
                        if ($parameterSet -eq 'GetInSite') {
                            return Get-AzMigrateMachine -Name $Name -ResourceGroupName $ResourceGroupName -SiteName $siteNameTmp -SubscriptionId $SubscriptionId
                        }
                        elseif ($parameterSet -eq 'ListInSite') {
                            $siteMachines = Get-AzMigrateMachine -ResourceGroupName $ResourceGroupName -SiteName $siteNameTmp -SubscriptionId $SubscriptionId
                            
                            if ($DisplayName) {
                                $filteredMachines = $siteMachines | Where-Object {$_.DisplayName -match $DisplayName}
                                return $filteredMachines
                            }
                            else {
                                return $siteMachines
                            }
                        }        
                    }                    
                }
            }

            if ($siteFound -eq 0) {
                throw "Appiance: $ApplianceName not found in project $ProjectName."
            }
        }
        else {
            # Fetch across project. All machines or by name.
            $projectSdsMachines = [System.Collections.ArrayList]::new()

            if ($parameterSet -eq 'List') {
                foreach ($kvp in $appMap.GetEnumerator()) {
                    $siteArmId = $kvp.Value
        
                    if ($siteArmId -match $r) {
                        $siteNameTmp = $Matches[0]
                        $siteMachines = Get-AzMigrateMachine -ResourceGroupName $ResourceGroupName -SiteName $siteNameTmp -SubscriptionId $SubscriptionId
                        if ($null -ne $siteMachines) {
                            $projectSdsMachines.AddRange($siteMachines)
                        }    
                    }
                }

                if ($DisplayName) {
                    $filteredMachines = $projectSdsMachines | Where-Object {$_.DisplayName -match $DisplayName}
                    return $filteredMachines
                }
                else {
                    return $projectSdsMachines                
                }
            }
            elseif ($parameterSet -eq 'Get') {
                foreach ($kvp in $appMap.GetEnumerator()) {
                    $siteArmId = $kvp.Value
        
                    if ($siteArmId -match $r) {
                        $siteNameTmp = $Matches[0]

                        try {
                            $siteMachine = Get-AzMigrateMachine -Name $Name -ResourceGroupName $ResourceGroupName -SiteName $siteNameTmp -SubscriptionId $SubscriptionId
                            if ($null -ne $siteMachine) {
                                return $siteMachine
                            }
                        }
                        catch {
                            $theError = $_
                            Write-Host $theError
                        }
                    }      
                }

                throw "Machine with Id $Name not found in project $ProjectName."
            }
        }
    }
}
# SIG # Begin signature block
# MIInpQYJKoZIhvcNAQcCoIInljCCJ5ICAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCD0R/KmuuhqTcAw
# P7uNkeM6SZLoSBRr2osTZ3WSXCewh6CCDYUwggYDMIID66ADAgECAhMzAAACzfNk
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
# cVZOSEXAQsmbdlsKgEhr/Xmfwb1tbWrJUnMTDXpQzTGCGXYwghlyAgEBMIGVMH4x
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01p
# Y3Jvc29mdCBDb2RlIFNpZ25pbmcgUENBIDIwMTECEzMAAALN82S/+NRMXVEAAAAA
# As0wDQYJYIZIAWUDBAIBBQCgga4wGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQw
# HAYKKwYBBAGCNwIBCzEOMAwGCisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIMNt
# Up5T+sJQzCCcsnezGNHXQtq9YxYTs+ljCRNXy5hEMEIGCisGAQQBgjcCAQwxNDAy
# oBSAEgBNAGkAYwByAG8AcwBvAGYAdKEagBhodHRwOi8vd3d3Lm1pY3Jvc29mdC5j
# b20wDQYJKoZIhvcNAQEBBQAEggEAhFvf2bbBen3LC0+O2QgrD/61eEkk/uNNrlVR
# M8PLDuMM0KdurzDezRyq5Wfj8H/ONYGlKSHQzcS0DhlJXArOhrbWfEaaNZPCfp+x
# Fpy4t4ezXYur9l1w1hhhWjqYwXaKiNzZK3yrJ8nD5A8hYrW8tbOYM7DSesXU/lfr
# m+ZAwYfdZ44vXiprUMtrnyOB3qPAL5LnN/cKsd5F45XdqGxewFfS3SEKJsZZF8/K
# xXEw+ZR0vLAvL5gXpPFhpEE9kWUWk/Io3YmguzdRD1EqZL0D8hkAY8OC7dQ3zqW4
# xJQDmySA8jPANzf8adXR5eWVt7njb5ZDilerR6IXIbusSjPEuKGCFwAwghb8Bgor
# BgEEAYI3AwMBMYIW7DCCFugGCSqGSIb3DQEHAqCCFtkwghbVAgEDMQ8wDQYJYIZI
# AWUDBAIBBQAwggFRBgsqhkiG9w0BCRABBKCCAUAEggE8MIIBOAIBAQYKKwYBBAGE
# WQoDATAxMA0GCWCGSAFlAwQCAQUABCBkw4vAQrGkFWjc+CT1fR/kjC6rnTcL7i14
# 8ZyVOryz1AIGYs/1j8AjGBMyMDIyMDcyNzEwMTcxOS4zMTZaMASAAgH0oIHQpIHN
# MIHKMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMH
# UmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSUwIwYDVQQL
# ExxNaWNyb3NvZnQgQW1lcmljYSBPcGVyYXRpb25zMSYwJAYDVQQLEx1UaGFsZXMg
# VFNTIEVTTjpERDhDLUUzMzctMkZBRTElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUt
# U3RhbXAgU2VydmljZaCCEVcwggcMMIIE9KADAgECAhMzAAABnA+mTWHSnksoAAEA
# AAGcMA0GCSqGSIb3DQEBCwUAMHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNo
# aW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29y
# cG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEw
# MB4XDTIxMTIwMjE5MDUxOVoXDTIzMDIyODE5MDUxOVowgcoxCzAJBgNVBAYTAlVT
# MRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQK
# ExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJTAjBgNVBAsTHE1pY3Jvc29mdCBBbWVy
# aWNhIE9wZXJhdGlvbnMxJjAkBgNVBAsTHVRoYWxlcyBUU1MgRVNOOkREOEMtRTMz
# Ny0yRkFFMSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2aWNlMIIC
# IjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA21IqDBldSRY/rOtdrNNpirtt
# yj1DbO9Tow3iRrcZExfa0lk4rgPF4GJAAIv+fthX+wpOyXCkPR/1w9TisINf2x9x
# Najtc/F0ctD5aRoZsopYBOyrDr1vDyGQn9uNynZXYDq8ay/ByokKHTsErck+ZS1m
# KTLLk9nx/JPKIoY3uE5aVohT2gii5xQ2gAdAnMuryHbR42AdSHt4jmT4rKri/rzX
# Qse4DoQfIok5k3bFPDklKQvLQU3kyGD85oWsUGXeJqDZOqngicou34luH8l3R62d
# 6LZoMcWuaV8+aVFK/nBI1fnMCGATJGmOZBzPXOnRBpIB59GQyb3bf+eBTnUhutVs
# B4ePnr1IcL12geCwjGSHQreWnDnzb7Q41dwh8hTqeQFP6oAMBn7R1PW67+BFMHLr
# XhACh+OjbnxNtJf1o5TVIe4AL7dsyjIzuM10cQlE4f6awUMFyYlGXhUqxF4jn5Lr
# 0pQZ4sgGGGaeZDp2sXwinRmI76+ECwPd70CeqdjsdyB7znQj2gq/C7ClXBacqfDB
# IYSUzPtS8KhyahQxeTtWfZo22L5t0fbz4ZBvkQyyqE6a+5k4JGk5Y3fcb5veDm6f
# AQ/R5OJj4udZrYC4rjfP+mmVRElWV7b0rjZA+Q5yCUHqyMuY2kSlv1tqwnvZ4DQy
# WnUu0fehhkZeyCBN+5cCAwEAAaOCATYwggEyMB0GA1UdDgQWBBS7aQlnU12OXbXX
# ZLKcvqMYwgP6sjAfBgNVHSMEGDAWgBSfpxVdAF5iXYP05dJlpxtTNRnpcjBfBgNV
# HR8EWDBWMFSgUqBQhk5odHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2Ny
# bC9NaWNyb3NvZnQlMjBUaW1lLVN0YW1wJTIwUENBJTIwMjAxMCgxKS5jcmwwbAYI
# KwYBBQUHAQEEYDBeMFwGCCsGAQUFBzAChlBodHRwOi8vd3d3Lm1pY3Jvc29mdC5j
# b20vcGtpb3BzL2NlcnRzL01pY3Jvc29mdCUyMFRpbWUtU3RhbXAlMjBQQ0ElMjAy
# MDEwKDEpLmNydDAMBgNVHRMBAf8EAjAAMBMGA1UdJQQMMAoGCCsGAQUFBwMIMA0G
# CSqGSIb3DQEBCwUAA4ICAQCnACqmIxhHM01jLPc9Ju2KNt7IKlRdy8iuoDjM+0wh
# wCTfhb272ZEOd1ZL62VHdbBOmvU6BpXXCZzpgXOoroQZab3TdQSwUTvEEkw9eN91
# U4+FwkHe9+8DQ9fnqihtwXY682w5LBMHxuL+ez4Kzf0+7Oz5BI1Bl3yIBUEJK/E0
# Ivvx2WfZEZTXHIHgAqpX2+Lhj8Z+bHYUD6MXTL5gt6hvQzjSeVLEvSrTvm3svqIV
# Ew2vS7xE6HOEM8uX7h49h9SbJgmihu/J16X1qcASwcWWEqX5pdvaJzfI3Buyg/Jx
# kkv++jw5W9hjELL7/kWtCYC+hbRkRoGJhwqTOs1a3+Ff2vkqB3AvrXHRmJNmilOS
# jpb/nxRN59NuFfs+eLQwCkfc+/K3o3QgVqn78uXAVEPXOft7pxw9PARKe6j9q4Ka
# A/OerzQ4BMDu+5+xFk++p5fyMq2ytpI2xy81DKYRaVyp1dX2FiSNvhP9Cx71xRhq
# heDrzAUcW6yVZ9N09g8uXW+rOU8yc0mkLwq12KgOByr7LUFpKpKbwR01/DNPfv78
# kW1Vzcaz3Xl8OqA9kOA5LMpAhX5/Ddo9i3YsRPcBuYopb+vXc7LxyDf4PQPfrYZA
# EAlW/Q1Ejk2jCBoLDqg2BY4U+s3vZZIRxxr/xBCJMY/ZekuIalEMlnqxZGlFg13J
# 2TCCB3EwggVZoAMCAQICEzMAAAAVxedrngKbSZkAAAAAABUwDQYJKoZIhvcNAQEL
# BQAwgYgxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQH
# EwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xMjAwBgNV
# BAMTKU1pY3Jvc29mdCBSb290IENlcnRpZmljYXRlIEF1dGhvcml0eSAyMDEwMB4X
# DTIxMDkzMDE4MjIyNVoXDTMwMDkzMDE4MzIyNVowfDELMAkGA1UEBhMCVVMxEzAR
# BgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1p
# Y3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3Rh
# bXAgUENBIDIwMTAwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDk4aZM
# 57RyIQt5osvXJHm9DtWC0/3unAcH0qlsTnXIyjVX9gF/bErg4r25PhdgM/9cT8dm
# 95VTcVrifkpa/rg2Z4VGIwy1jRPPdzLAEBjoYH1qUoNEt6aORmsHFPPFdvWGUNzB
# RMhxXFExN6AKOG6N7dcP2CZTfDlhAnrEqv1yaa8dq6z2Nr41JmTamDu6GnszrYBb
# fowQHJ1S/rboYiXcag/PXfT+jlPP1uyFVk3v3byNpOORj7I5LFGc6XBpDco2LXCO
# Mcg1KL3jtIckw+DJj361VI/c+gVVmG1oO5pGve2krnopN6zL64NF50ZuyjLVwIYw
# XE8s4mKyzbnijYjklqwBSru+cakXW2dg3viSkR4dPf0gz3N9QZpGdc3EXzTdEonW
# /aUgfX782Z5F37ZyL9t9X4C626p+Nuw2TPYrbqgSUei/BQOj0XOmTTd0lBw0gg/w
# EPK3Rxjtp+iZfD9M269ewvPV2HM9Q07BMzlMjgK8QmguEOqEUUbi0b1qGFphAXPK
# Z6Je1yh2AuIzGHLXpyDwwvoSCtdjbwzJNmSLW6CmgyFdXzB0kZSU2LlQ+QuJYfM2
# BjUYhEfb3BvR/bLUHMVr9lxSUV0S2yW6r1AFemzFER1y7435UsSFF5PAPBXbGjfH
# CBUYP3irRbb1Hode2o+eFnJpxq57t7c+auIurQIDAQABo4IB3TCCAdkwEgYJKwYB
# BAGCNxUBBAUCAwEAATAjBgkrBgEEAYI3FQIEFgQUKqdS/mTEmr6CkTxGNSnPEP8v
# BO4wHQYDVR0OBBYEFJ+nFV0AXmJdg/Tl0mWnG1M1GelyMFwGA1UdIARVMFMwUQYM
# KwYBBAGCN0yDfQEBMEEwPwYIKwYBBQUHAgEWM2h0dHA6Ly93d3cubWljcm9zb2Z0
# LmNvbS9wa2lvcHMvRG9jcy9SZXBvc2l0b3J5Lmh0bTATBgNVHSUEDDAKBggrBgEF
# BQcDCDAZBgkrBgEEAYI3FAIEDB4KAFMAdQBiAEMAQTALBgNVHQ8EBAMCAYYwDwYD
# VR0TAQH/BAUwAwEB/zAfBgNVHSMEGDAWgBTV9lbLj+iiXGJo0T2UkFvXzpoYxDBW
# BgNVHR8ETzBNMEugSaBHhkVodHRwOi8vY3JsLm1pY3Jvc29mdC5jb20vcGtpL2Ny
# bC9wcm9kdWN0cy9NaWNSb29DZXJBdXRfMjAxMC0wNi0yMy5jcmwwWgYIKwYBBQUH
# AQEETjBMMEoGCCsGAQUFBzAChj5odHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtp
# L2NlcnRzL01pY1Jvb0NlckF1dF8yMDEwLTA2LTIzLmNydDANBgkqhkiG9w0BAQsF
# AAOCAgEAnVV9/Cqt4SwfZwExJFvhnnJL/Klv6lwUtj5OR2R4sQaTlz0xM7U518Jx
# Nj/aZGx80HU5bbsPMeTCj/ts0aGUGCLu6WZnOlNN3Zi6th542DYunKmCVgADsAW+
# iehp4LoJ7nvfam++Kctu2D9IdQHZGN5tggz1bSNU5HhTdSRXud2f8449xvNo32X2
# pFaq95W2KFUn0CS9QKC/GbYSEhFdPSfgQJY4rPf5KYnDvBewVIVCs/wMnosZiefw
# C2qBwoEZQhlSdYo2wh3DYXMuLGt7bj8sCXgU6ZGyqVvfSaN0DLzskYDSPeZKPmY7
# T7uG+jIa2Zb0j/aRAfbOxnT99kxybxCrdTDFNLB62FD+CljdQDzHVG2dY3RILLFO
# Ry3BFARxv2T5JL5zbcqOCb2zAVdJVGTZc9d/HltEAY5aGZFrDZ+kKNxnGSgkujhL
# mm77IVRrakURR6nxt67I6IleT53S0Ex2tVdUCbFpAUR+fKFhbHP+CrvsQWY9af3L
# wUFJfn6Tvsv4O+S3Fb+0zj6lMVGEvL8CwYKiexcdFYmNcP7ntdAoGokLjzbaukz5
# m/8K6TT4JDVnK+ANuOaMmdbhIurwJ0I9JZTmdHRbatGePu1+oDEzfbzL6Xu/OHBE
# 0ZDxyKs6ijoIYn/ZcGNTTY3ugm2lBRDBcQZqELQdVTNYs6FwZvKhggLOMIICNwIB
# ATCB+KGB0KSBzTCByjELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24x
# EDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlv
# bjElMCMGA1UECxMcTWljcm9zb2Z0IEFtZXJpY2EgT3BlcmF0aW9uczEmMCQGA1UE
# CxMdVGhhbGVzIFRTUyBFU046REQ4Qy1FMzM3LTJGQUUxJTAjBgNVBAMTHE1pY3Jv
# c29mdCBUaW1lLVN0YW1wIFNlcnZpY2WiIwoBATAHBgUrDgMCGgMVAM3Zaerd8LP2
# 5xK25vXNDPvXb1NAoIGDMIGApH4wfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldh
# c2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBD
# b3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIw
# MTAwDQYJKoZIhvcNAQEFBQACBQDmiu4/MCIYDzIwMjIwNzI3MDY1MDM5WhgPMjAy
# MjA3MjgwNjUwMzlaMHcwPQYKKwYBBAGEWQoEATEvMC0wCgIFAOaK7j8CAQAwCgIB
# AAICGXQCAf8wBwIBAAICEccwCgIFAOaMP78CAQAwNgYKKwYBBAGEWQoEAjEoMCYw
# DAYKKwYBBAGEWQoDAqAKMAgCAQACAwehIKEKMAgCAQACAwGGoDANBgkqhkiG9w0B
# AQUFAAOBgQCQR9FiztvMy5+Kk08uyuU/6KZKFC2ZNdS1PCrI+Hl8Be9PFPrhkn68
# VcXPb/ZCX6E+gNdgs8/IFYBcNkpP8xmb1xt6025Oj5N4ju66cihMArAlHXzbH8Yh
# mTqb202NKQ2HxjSzDuhvuOFFdwoMaH6uSaE9NYrkcgyaUVUbFZloezGCBA0wggQJ
# AgEBMIGTMHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYD
# VQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAk
# BgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwAhMzAAABnA+mTWHS
# nksoAAEAAAGcMA0GCWCGSAFlAwQCAQUAoIIBSjAaBgkqhkiG9w0BCQMxDQYLKoZI
# hvcNAQkQAQQwLwYJKoZIhvcNAQkEMSIEIOkRJ29jOyitAgACQ6Z5xORhNpI+kP/H
# ZrCPO3Yh4QJ6MIH6BgsqhkiG9w0BCRACLzGB6jCB5zCB5DCBvQQgNw9FhSCNLMo6
# EXf13hCBtFlCCs87suj+oTka29J6prwwgZgwgYCkfjB8MQswCQYDVQQGEwJVUzET
# MBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMV
# TWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1T
# dGFtcCBQQ0EgMjAxMAITMwAAAZwPpk1h0p5LKAABAAABnDAiBCD8d5Ux80wPalE5
# 8dlfrLcStOnyM0l4jZ/tEkNpttf4LzANBgkqhkiG9w0BAQsFAASCAgBdm3bXzKBl
# 4TiwCK17pked6YPx2l82hSSV87iydVLstwyPaIusyw5oFcJG8I4SovCQchscx9hw
# 5uBvBF5urbUQaFxP5pOy68COUc9NIbZDGZJAHFg5FoGI43cbFox0KB1SDHumHP/d
# HVotNIQhqS9lLKe6G1ypW/EFoY/zaG50bWBrpzlHW1zXhug4aM3xjPCefXTClCff
# VoMEl+UU+VZJWLMXqYHpzpWTuET9YiRDVr9hrTLQsYT2aPEzzyR1pe+4VX6mCDfP
# OMe4JD6wOpmgfbFNKEhS62tjKWMy2n7dgUhCIh69DUnrWsTr7C7UPhWj5zTOT9hk
# qrrfJTeHqJkKDLVrMrp05/eDRZFT8eXg/3FxITh37+wJ063BK+ImBixjAglNMoxK
# deVDFVyK+J+Pj5o4oUMOg5kLYAJ9LeT94z4lkRWfcHbaLck//vjZCmQOYsLFrLVm
# 7XRANEy77UR1nIGmItC/HKBSQhhpWTDImErD9o1XqUUzOx0ziMtNu+pE/cmzcF3W
# 43naJ7CmlCFLUuKAPM+WMD2bMvdAQ/GqMrJUi2DrzynRTFMGFdUNdyRaCWLZb38K
# QulwN8gGzOKWhxMPTW24iUZAVSHP68e25zZiIvQmXCkauD1RAREvq7jgkEdv7QrQ
# 4oqzch6rr+mBlKXhZY7zG/Hk1sIepGoPgg==
# SIG # End signature block
