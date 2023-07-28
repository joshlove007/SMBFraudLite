function Update-AzFunctionAppPlan {
    [OutputType([Microsoft.Azure.PowerShell.Cmdlets.Functions.Models.Api20190801.IAppServicePlan])]
    [Microsoft.Azure.PowerShell.Cmdlets.Functions.Description('Updates a function app service plan.')]
    [CmdletBinding(DefaultParameterSetName='ByName', SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    param(
        [Parameter(ParameterSetName='ByName', HelpMessage='The Azure subscription ID.')]
        [Microsoft.Azure.PowerShell.Cmdlets.Functions.Category('Path')]
        [Microsoft.Azure.PowerShell.Cmdlets.Functions.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
        [ValidateNotNullOrEmpty()]
        [System.String]
        ${SubscriptionId},

        [Parameter(Mandatory=$true, ParameterSetName='ByName', HelpMessage='Name of the resource group to which the resource belongs.')]
        [Microsoft.Azure.PowerShell.Cmdlets.Functions.Category('Path')]
        [ValidateNotNullOrEmpty()]
        [System.String]
        ${ResourceGroupName},

        [Parameter(Mandatory=$true, ParameterSetName='ByName', HelpMessage='Name of the App Service plan.')]
        [Microsoft.Azure.PowerShell.Cmdlets.Functions.Category('Path')]
        [ValidateNotNullOrEmpty()]
        [System.String]
        ${Name},

        [Parameter(ParameterSetName='ByObjectInput', Mandatory=$true, ValueFromPipeline=$true)]
        [Microsoft.Azure.PowerShell.Cmdlets.Functions.Models.Api20190801.IAppServicePlan]
        [ValidateNotNull()]
        ${InputObject},

        [Parameter(HelpMessage='The plan sku. Valid inputs are: EP1, EP2, EP3')]
        [Microsoft.Azure.PowerShell.Cmdlets.Functions.Category('Body')]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.Functions.Support.SkuType])]
        [ValidateNotNullOrEmpty()]
        [System.String]
        # Sku (EP1, EP2 or EP3)
        ${Sku},

        [Parameter(HelpMessage='The maximum number of workers for the app service plan.')]
        [Microsoft.Azure.PowerShell.Cmdlets.Functions.Category('Body')]
        [System.Int32]
        [ValidateRange(1,100)]
        [Alias("MaxBurst")]
        ${MaximumWorkerCount},

        [Parameter(HelpMessage='The minimum number of workers for the app service plan.')]
        [Microsoft.Azure.PowerShell.Cmdlets.Functions.Category('Body')]
        [System.Int32]
        [Alias("MinInstances")]
        [ValidateRange(1,20)]
        ${MinimumWorkerCount},

        [Parameter(HelpMessage='Forces the cmdlet to update the function app plan without prompting for confirmation.')]
        [System.Management.Automation.SwitchParameter]
        ${Force},

        [Parameter(HelpMessage='Resource tags.')]
        [Microsoft.Azure.PowerShell.Cmdlets.Functions.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.Functions.Runtime.Info(PossibleTypes=([Microsoft.Azure.PowerShell.Cmdlets.Functions.Models.Api20190801.IResourceTags]))]
        [System.Collections.Hashtable]
        [ValidateNotNull()]
        ${Tag},

        [Parameter(HelpMessage='Run the command asynchronously.')]
        [Microsoft.Azure.PowerShell.Cmdlets.Functions.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        ${NoWait},

        [Parameter(HelpMessage='Run the command as a job.')]
        [Microsoft.Azure.PowerShell.Cmdlets.Functions.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        ${AsJob},

        [Parameter()]
        [Alias('AzureRMContext', 'AzureCredential')]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.Functions.Category('Azure')]
        [System.Management.Automation.PSObject]
        ${DefaultProfile},
        
        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.Functions.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Wait for .NET debugger to attach
        ${Break},

        [Parameter(DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.Functions.Category('Runtime')]
        [Microsoft.Azure.PowerShell.Cmdlets.Functions.Runtime.SendAsyncStep[]]
        # SendAsync Pipeline Steps to be appended to the front of the pipeline
        ${HttpPipelineAppend},

        [Parameter(DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.Functions.Category('Runtime')]
        [Microsoft.Azure.PowerShell.Cmdlets.Functions.Runtime.SendAsyncStep[]]
        # SendAsync Pipeline Steps to be prepended to the front of the pipeline
        ${HttpPipelinePrepend},

        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.Functions.Category('Runtime')]
        [System.Uri]
        # The URI for the proxy server to use
        ${Proxy},

        [Parameter(DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.Functions.Category('Runtime')]
        [System.Management.Automation.PSCredential]
        # Credentials for a proxy server to use for the remote call
        ${ProxyCredential},

        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.Functions.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Use the default credentials for the proxy
        ${ProxyUseDefaultCredentials}
    )
    process {
        # Remove bound parameters from the dictionary that cannot be process by the intenal cmdlets.
        foreach ($paramName in @("Sku", "MaximumWorkerCount", "MinimumWorkerCount", "Tag"))
        {
            if ($PSBoundParameters.ContainsKey($paramName))
            {
                $PSBoundParameters.Remove($paramName)  | Out-Null
            }
        }

        $existingPlan = $null

        if ($PsCmdlet.ParameterSetName -eq "ByObjectInput")
        {
            if ($PSBoundParameters.ContainsKey("InputObject"))
            {
                $PSBoundParameters.Remove("InputObject")  | Out-Null
            }

            $Name = $InputObject.Name
            $ResourceGroupName = $InputObject.ResourceGroupName
            
            $PSBoundParameters.Add("Name", $Name)  | Out-Null
            $PSBoundParameters.Add("ResourceGroupName", $ResourceGroupName)  | Out-Null
            $PSBoundParameters.Add("SubscriptionId", $InputObject.SubscriptionId)  | Out-Null

            $existingPlan = $InputObject
        }
        else
        {
            $params = GetParameterKeyValues -PSBoundParametersDictionary $PSBoundParameters `
                                            -ParameterList @("SubscriptionId", "HttpPipelineAppend", "HttpPipelinePrepend")
            $existingPlan = Az.Functions.internal\Get-AzFunctionAppPlan -ResourceGroupName $ResourceGroupName `
                                                                        -Name $Name `
                                                                        -ErrorAction SilentlyContinue `
                                                                        @params

            if (-not $existingPlan)
            {
                $errorMessage = "Plan name '$Name' in resource group name '$ResourceGroupName' does not exist."
                $exception = [System.InvalidOperationException]::New($errorMessage)
                ThrowTerminatingError -ErrorId "PlanDoesNotExist" `
                                        -ErrorMessage $errorMessage `
                                        -ErrorCategory ([System.Management.Automation.ErrorCategory]::InvalidOperation) `
                                        -Exception $exception
            }
        }

        # Make sure the plan is a 'ElasticPremium'
        if ($existingPlan.SkuTier -ne "ElasticPremium")
        {
            $errorMessage = "Only ElasticPremium sku is suported when updating a function app plan. Current plan sku is: $($existingPlan.SkuTier)."
            $exception = [System.InvalidOperationException]::New($errorMessage)
            ThrowTerminatingError -ErrorId "InvalidPlanSku" `
                                    -ErrorMessage $errorMessage `
                                    -ErrorCategory ([System.Management.Automation.ErrorCategory]::InvalidOperation) `
                                    -Exception $exception
        }

        if ($MaximumWorkerCount -lt $MinimumWorkerCount)
        {
            $errorMessage = "MinimumWorkerCount '$($MinimumWorkerCount)' cannot be less than '$($MaximumWorkerCount)'."
            $exception = [System.InvalidOperationException]::New($errorMessage)
            ThrowTerminatingError -ErrorId "MaximumWorkerCountIsOnlySupportedForElasticPremiumPlan" `
                                    -ErrorMessage $errorMessage `
                                    -ErrorCategory ([System.Management.Automation.ErrorCategory]::InvalidOperation) `
                                    -Exception $exception
        }

        $shouldUpdateFunctionAppPlan = $false;
        $servicePlan = New-Object -TypeName Microsoft.Azure.PowerShell.Cmdlets.Functions.Models.Api20190801.AppServicePlan
        
        # Plan settings
        $servicePlan.Location = $existingPlan.Location
        $servicePlan.SkuTier  = $existingPlan.SkuTier
        $servicePlan.SkuName  = $existingPlan.SkuName
        $servicePlan.Capacity = $existingPlan.Capacity
        $servicePlan.Reserved = $existingPlan.Reserved
        
        if ($existingPlan.MaximumElasticWorkerCount)
        {
            $servicePlan.MaximumElasticWorkerCount = $existingPlan.MaximumElasticWorkerCount
        }

        if ($Sku)
        {
            $Sku = NormalizeSku -Sku $Sku
            $tier = GetSkuName -Sku $Sku
            if ($existingPlan.SkuName -ne $SkuName)
            {
                $servicePlan.SkuTier = $tier
                $servicePlan.SkuName = $Sku
                $shouldUpdateFunctionAppPlan = $true
            }
        }

        if ($Tag -and ($Tag.Count -gt 0))
        {
            $resourceTag = NewResourceTag -Tag $Tag
            $servicePlan.Tag = $resourceTag
            $shouldUpdateFunctionAppPlan = $true
        }

        if ($MinimumWorkerCount -gt 0)
        {
            $servicePlan.Capacity = $MinimumWorkerCount
            $shouldUpdateFunctionAppPlan = $true
        }

        if ($MaximumWorkerCount -gt 0)
        {
            $servicePlan.MaximumElasticWorkerCount = $MaximumWorkerCount
            $shouldUpdateFunctionAppPlan = $true
        }

        # Add the service plan definition
        $PSBoundParameters.Add("AppServicePlan", $servicePlan)  | Out-Null

        if ($PsCmdlet.ShouldProcess($Name, "Updating function app plan"))
        {
            # Save the ErrorActionPreference
            $currentErrorActionPreference = $ErrorActionPreference
            $ErrorActionPreference = 'Stop'

            try
            {
                if (-not $shouldUpdateFunctionAppPlan)
                {
                    # No changes for the current plan, return.
                    return
                }
                
                if ($PsCmdlet.ShouldProcess($Name, "Updating function app plan"))
                {
                    if ($Force.IsPresent -or $PsCmdlet.ShouldContinue("Update function app plan '$Name'?", "Updating function app plan"))
                    {
                        # Remove bound parameters from the dictionary that cannot be process by the intenal cmdlets
                        if ($PSBoundParameters.ContainsKey("Force"))
                        {
                            $PSBoundParameters.Remove("Force")  | Out-Null
                        }

                        Az.Functions.internal\Set-AzFunctionAppPlan @PSBoundParameters
                    }
                }
            }
            catch
            {
                $errorMessage = GetErrorMessage -Response $_
                if ($errorMessage)
                {
                    $exception = [System.InvalidOperationException]::New($errorMessage)
                    ThrowTerminatingError -ErrorId "FailedToUpdateFunctionAppPlan" `
                                            -ErrorMessage $errorMessage `
                                            -ErrorCategory ([System.Management.Automation.ErrorCategory]::InvalidOperation) `
                                            -Exception $exception
                }

                throw $_
            }
            finally
            {
                # Reset the ErrorActionPreference
                $ErrorActionPreference = $currentErrorActionPreference
            }
        }
    }
}

# SIG # Begin signature block
# MIInoQYJKoZIhvcNAQcCoIInkjCCJ44CAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCDuzWRSw+zZdEjq
# us4Zby2n9lWvuOgCNhV8aprlwu+g/qCCDYUwggYDMIID66ADAgECAhMzAAACzfNk
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
# cVZOSEXAQsmbdlsKgEhr/Xmfwb1tbWrJUnMTDXpQzTGCGXIwghluAgEBMIGVMH4x
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01p
# Y3Jvc29mdCBDb2RlIFNpZ25pbmcgUENBIDIwMTECEzMAAALN82S/+NRMXVEAAAAA
# As0wDQYJYIZIAWUDBAIBBQCgga4wGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQw
# HAYKKwYBBAGCNwIBCzEOMAwGCisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIOyR
# ORsdS15coUC3xd9SdAbAjf60COvOWi83tS1BA3tCMEIGCisGAQQBgjcCAQwxNDAy
# oBSAEgBNAGkAYwByAG8AcwBvAGYAdKEagBhodHRwOi8vd3d3Lm1pY3Jvc29mdC5j
# b20wDQYJKoZIhvcNAQEBBQAEggEAQm59OKmx+DMGS4W7uudbvcFfJnahjjvKkM89
# BebRM+D1C1i/li2B6na9hiT967nlkpMJD8l2y0c2lZ5oqRDMQ1IUw5Loyym9mANz
# KK5WO4lZJCTKKepFhppRtKH8/xAlN3K30aspAoBhJKoKyWBtiTvxpPnnovZ5dLaD
# ci3qsH7CgW9NnkZomZJMUY/+UeKVGlo99gphzn6B/8dG/oI5sQEGPcsJW6b6+1U5
# gWzRMeX6+YH3Qzqq70U5fMnUiHorxtTsAG6ok4fQZP6ySJBTuaRhcO+5LSExAslq
# gcizDE1D4w6fYqGOvNnUWMRACWnsxAtDqQ67rZOwRNYW9ESj3qGCFvwwghb4Bgor
# BgEEAYI3AwMBMYIW6DCCFuQGCSqGSIb3DQEHAqCCFtUwghbRAgEDMQ8wDQYJYIZI
# AWUDBAIBBQAwggFRBgsqhkiG9w0BCRABBKCCAUAEggE8MIIBOAIBAQYKKwYBBAGE
# WQoDATAxMA0GCWCGSAFlAwQCAQUABCBZWspu8wgk0sbd2xjjUg38W3Ci7/6fDGt3
# TmML7YUG2gIGYxFfZb2tGBMyMDIyMDkwMjA0MTQ1NS41NThaMASAAgH0oIHQpIHN
# MIHKMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMH
# UmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSUwIwYDVQQL
# ExxNaWNyb3NvZnQgQW1lcmljYSBPcGVyYXRpb25zMSYwJAYDVQQLEx1UaGFsZXMg
# VFNTIEVTTjozRTdBLUUzNTktQTI1RDElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUt
# U3RhbXAgU2VydmljZaCCEVMwggcMMIIE9KADAgECAhMzAAABoOm7jLsOotF6AAEA
# AAGgMA0GCSqGSIb3DQEBCwUAMHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNo
# aW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29y
# cG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEw
# MB4XDTIxMTIwMjE5MDUyM1oXDTIzMDIyODE5MDUyM1owgcoxCzAJBgNVBAYTAlVT
# MRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQK
# ExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJTAjBgNVBAsTHE1pY3Jvc29mdCBBbWVy
# aWNhIE9wZXJhdGlvbnMxJjAkBgNVBAsTHVRoYWxlcyBUU1MgRVNOOjNFN0EtRTM1
# OS1BMjVEMSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2aWNlMIIC
# IjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAv9riDmhxnQDo9mL4YSOgvIhQ
# Ku8K5f+VqT449HxBwouiL8fyNNibLPx1YZHxkzBrbUeY0YYayV8nVg5zps0VNweB
# uduU+6cJBTRQV7pjP/fJeZNFNl4mmfm7pVx3ueMero/+r+VRhb/tB4dXcoxlEz2k
# RMEu8ffE3ubRRxIpj2vgLBtpjPp/TcH0EY3dS4hAm3AmRZIMG5YkP2pIjK9bWZo5
# A28bbtmkHF4xHw52vCR/sGZn3btF+5OnSeVhkRcM2YiziVuEIQBKXodnNZpm7QHw
# Z4UjzfhOclC36X009sF/EWx+l3wIOrGcfPPesatPoFA/Zh8vGbaXRHhNWQNB4Acg
# 1tqyQm0wCQIbe9Qe0c9qT0JoOUd/r0gq4vAXnEgfmfJsGC97jkt0em3lASe4hOKz
# 0vVgtcNX2UeyuOGUpntnSPjvf54YG9zC2IJus8dx4bS6BoRlTy/lqA5DJ7fdyBqD
# upDQQjNl/grNtqpdrT45CEcscMRekbF4f0B54SiYAc3zvnvOCN02GyNItvcwEy+s
# hzr+bBLNc2jTIoduyMH1oOEO/uNC+3uvLgusg/BFBKWg9rNk+fTYUmrk8whJwKeW
# K0rHHPTEFSIu4PuRgHQvKQr/tIkWu0CL2pVPvZVoJMgAVP54hR1j48hqAeMdys6N
# 7Vwemgt8mf3U0V6SZ2kCAwEAAaOCATYwggEyMB0GA1UdDgQWBBRyuS5Q2ClOkbiR
# bBQvRM8LYYzQ6DAfBgNVHSMEGDAWgBSfpxVdAF5iXYP05dJlpxtTNRnpcjBfBgNV
# HR8EWDBWMFSgUqBQhk5odHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2Ny
# bC9NaWNyb3NvZnQlMjBUaW1lLVN0YW1wJTIwUENBJTIwMjAxMCgxKS5jcmwwbAYI
# KwYBBQUHAQEEYDBeMFwGCCsGAQUFBzAChlBodHRwOi8vd3d3Lm1pY3Jvc29mdC5j
# b20vcGtpb3BzL2NlcnRzL01pY3Jvc29mdCUyMFRpbWUtU3RhbXAlMjBQQ0ElMjAy
# MDEwKDEpLmNydDAMBgNVHRMBAf8EAjAAMBMGA1UdJQQMMAoGCCsGAQUFBwMIMA0G
# CSqGSIb3DQEBCwUAA4ICAQAxfcYCq/jfrJQJpW3BKkAZaS+T3wTKnC5EusknhiYx
# viyl91qL+acoK4Sn7V2fdDWFlH7SGac3WLOHoUeUZWhN3mLm1pXDZcLCpHKxkgyS
# msG2wxn7zuIf9S9d7IOuoT4m+u5hveggKkVRdHOTANcIio45f+YH623TSx4LUREP
# MwqWyuPuupdRXdLqfZsXDhBKYYSa/FN8IcBcKCvkCf5MVqIBrXw4mqukcqBVoT/L
# iki1Q1fjExEx2W96djsJwVhNVutO9VwyncUZDf6QBGdeRNSyTb/YmKNZdT/0XRfi
# M6TCxgwH/z5Vb01MN1ax/bmqm2K/q0cbYvmzN2m9cL/b98US3PsD6J4ksVtqevQz
# eFqPeiAxWSJC0fh3Fgoqh1cBV54JAlH3THt8ZrziF2EZEytD+sDy3wvjrO6HlUXj
# I9kwNUDDJIGfq4TztO4luzee8wAbzIhyUHR0THitxQYEeH2hL041AHSkUJChVfNr
# hO8NFDJ7HiX1+xCw2PU+GlsdqsBKmpvZexh1+ANmZtJ59aGmv2MXMye4CFREUhkj
# li8BDMXBagRj5vUEkO6IDAZ+Vh8JHU05JmpwW/2dnA6cQcXdbzo8iJuAThZS4weK
# YrwpTtmZLFih+6gWJaGGtO1NTtwvI7W8xlHR8iwmlRgVfA3w+YfHjp8o62gRuzzT
# WTCCB3EwggVZoAMCAQICEzMAAAAVxedrngKbSZkAAAAAABUwDQYJKoZIhvcNAQEL
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
# 0ZDxyKs6ijoIYn/ZcGNTTY3ugm2lBRDBcQZqELQdVTNYs6FwZvKhggLKMIICMwIB
# ATCB+KGB0KSBzTCByjELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24x
# EDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlv
# bjElMCMGA1UECxMcTWljcm9zb2Z0IEFtZXJpY2EgT3BlcmF0aW9uczEmMCQGA1UE
# CxMdVGhhbGVzIFRTUyBFU046M0U3QS1FMzU5LUEyNUQxJTAjBgNVBAMTHE1pY3Jv
# c29mdCBUaW1lLVN0YW1wIFNlcnZpY2WiIwoBATAHBgUrDgMCGgMVABMGuI1o2nGz
# mFPvvecnSe4UgouYoIGDMIGApH4wfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldh
# c2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBD
# b3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIw
# MTAwDQYJKoZIhvcNAQEFBQACBQDmu93lMCIYDzIwMjIwOTAyMDk0MTU3WhgPMjAy
# MjA5MDMwOTQxNTdaMHMwOQYKKwYBBAGEWQoEATErMCkwCgIFAOa73eUCAQAwBgIB
# AAIBAjAHAgEAAgIR6jAKAgUA5r0vZQIBADA2BgorBgEEAYRZCgQCMSgwJjAMBgor
# BgEEAYRZCgMCoAowCAIBAAIDB6EgoQowCAIBAAIDAYagMA0GCSqGSIb3DQEBBQUA
# A4GBADk0/p8v/Rf42QZbQEQhcfcUihQaSYQonvWE6i+xVGwtyx8PEsvegMyGpUIi
# p6+WQWHlHXOkgvOy1JDEP4Q6zzRNPuAcJYdUIY8QK8++oEkozhpdSB/czWtWS7+p
# gGVHJMEOkdD3fijguLyfiY0PclXU8qQcD0lzpKi6vzLySCVAMYIEDTCCBAkCAQEw
# gZMwfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcT
# B1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UE
# AxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTACEzMAAAGg6buMuw6i0XoA
# AQAAAaAwDQYJYIZIAWUDBAIBBQCgggFKMBoGCSqGSIb3DQEJAzENBgsqhkiG9w0B
# CRABBDAvBgkqhkiG9w0BCQQxIgQgOLUW68HLT6udVATBLHtjPFWvE7cXqe9ceKvH
# L2rC2L4wgfoGCyqGSIb3DQEJEAIvMYHqMIHnMIHkMIG9BCAvR4o8aGUEIhIt3REv
# sx0+svnM6Wiaga5SPaK4g6+00zCBmDCBgKR+MHwxCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1w
# IFBDQSAyMDEwAhMzAAABoOm7jLsOotF6AAEAAAGgMCIEIEKoJquNMHH8r90PWzgK
# OfqNEbdAsDbIwJMoPRE0m2AQMA0GCSqGSIb3DQEBCwUABIICAFFgMKTBu9wovACP
# Ap1MhaIQf3N5Jpr7VERA/0eT6+g12PldOoRPx8iY25rBoW/apZFGkbKRS9Ttcp89
# gFut1CFUm4V2l+yugbApHf6tvq9avtz70GcjHhtWpPHYKZ78LXXfHHb3MIchwiwZ
# /2lWISJzQcR0W0hIhRne1E7/uxT9wcZh0o8XzIOp5Bb094I2FSv9Sln/LTU8mQ/V
# ve2wH9Xs4wR6XnjtZD2xHncEAQYeE41fgsOg8DDWwp2BkTNwzZiUoMPzV0LGF9Bz
# 8261Sqp7se4DqGUWwHbH6/hU3xZO338XC5wiJSOlD4Ufpe5g1tj3uyJMHa7j9sBX
# hHYBG2ndKoI94ko6z5W+6Yj17jITY4Xi0hLbVAVabs0kmW2dKkgtBHDD7kLw0AEO
# JI2NQsqbtyRdEyWFovwYCbCjyb5LW0FMcKK736IiG2o+eT0F+QZlZbwCYPZrvwoW
# rLtQvSMttTDap2sltOYo3tot7RU9Ic3w0rwIQUey015lpmrsPD2QQxyiLug75ppy
# GR20t/Qo9rUhZaczv2GoMa6t9j5S3hGqkveeTh6yJdjq9JyjikGmUk65kqZanCEm
# OpjAUNeCdEyir742JlyfIlGUHZfx5UADVxxfQRjlEQB9UyXowVsrIHBfMD2y6ITu
# ohOqX8iaQYpSOuRX2/H4s6H3noU7
# SIG # End signature block
