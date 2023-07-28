
function Update-AzFunctionApp {
    [OutputType([Microsoft.Azure.PowerShell.Cmdlets.Functions.Models.Api20190801.ISite])]
    [Microsoft.Azure.PowerShell.Cmdlets.Functions.Description('Updates a function app.')]
    [CmdletBinding(DefaultParameterSetName='ByName', SupportsShouldProcess=$true, ConfirmImpact='Medium')]
    param(
        [Parameter(ParameterSetName="ByName", HelpMessage='The Azure subscription ID.')]
        [Microsoft.Azure.PowerShell.Cmdlets.Functions.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
        [ValidateNotNullOrEmpty()]
        [System.String]
        ${SubscriptionId},
        
        [Parameter(Mandatory=$true, ParameterSetName='ByName', HelpMessage='The name of the resource group.')]
        [ValidateNotNullOrEmpty()]
        [System.String]
        ${ResourceGroupName},
        
        [Parameter(Mandatory=$true, ParameterSetName="ByName", HelpMessage='The name of the function app.')]
        [ValidateNotNullOrEmpty()]
        [System.String]
        ${Name},

        [Parameter(ParameterSetName='ByObjectInput', Mandatory=$true, ValueFromPipeline=$true)]
        [Microsoft.Azure.PowerShell.Cmdlets.Functions.Models.Api20190801.ISite]
        [ValidateNotNull()]
        ${InputObject},

        [Parameter(HelpMessage='The name of the service plan.')]
        [ValidateNotNullOrEmpty()]
        [System.String]
        ${PlanName},

        [Parameter(HelpMessage='Forces the cmdlet to update the function app without prompting for confirmation.')]
        [System.Management.Automation.SwitchParameter]
        ${Force},

        [Parameter(HelpMessage='Name of the existing App Insights project to be added to the function app.')]
        [ValidateNotNullOrEmpty()]
        [System.String]
        [Alias("AppInsightsName")]
        ${ApplicationInsightsName},

        [Parameter(HelpMessage='Instrumentation key of App Insights to be added.')]
        [ValidateNotNullOrEmpty()]
        [System.String]
        [System.String]
        [Alias("AppInsightsKey")]
        ${ApplicationInsightsKey},

        [Parameter(HelpMessage='Resource tags.')]
        [Microsoft.Azure.PowerShell.Cmdlets.Functions.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.Functions.Runtime.Info(PossibleTypes=([Microsoft.Azure.PowerShell.Cmdlets.Functions.Models.Api20190801.IResourceTags]))]
        [System.Collections.Hashtable]
        [ValidateNotNull()]
        ${Tag},

        [Parameter(HelpMessage="Specifies the type of identity used for the function app.
            The type 'None' will remove any identities from the function app. The acceptable values for this parameter are:
            - SystemAssigned
            - UserAssigned
            - None
            ")]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.Functions.Support.FunctionAppManagedServiceIdentityUpdateType])]
        [Microsoft.Azure.PowerShell.Cmdlets.Functions.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.Functions.Support.ManagedServiceIdentityType]
        ${IdentityType},

        [Parameter(HelpMessage="Specifies the list of user identities associated with the function app.
            The user identity references will be ARM resource ids in the form:
            '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/identities/{identityName}'")]
        [ValidateNotNullOrEmpty()]
        [System.String[]]
        ${IdentityID},

        [Parameter(HelpMessage='Starts the operation and returns immediately, before the operation is completed. In order to determine if the operation has successfully been completed, use some other mechanism.')]
        [Microsoft.Azure.PowerShell.Cmdlets.Functions.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        ${NoWait},
        
        [Parameter(HelpMessage='Runs the cmdlet as a background job.')]
        [Microsoft.Azure.PowerShell.Cmdlets.Functions.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        ${AsJob},
        
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
        $paramsToRemove = @(
            "PlanName",
            "ApplicationInsightsName",
            "ApplicationInsightsKey"
            "IdentityType",
            "IdentityID",
            "Tag"
        )
        foreach ($paramName in $paramsToRemove)
        {
            if ($PSBoundParameters.ContainsKey($paramName))
            {
                $PSBoundParameters.Remove($paramName)  | Out-Null
            }
        }

        $params = GetParameterKeyValues -PSBoundParametersDictionary $PSBoundParameters `
                                        -ParameterList @("SubscriptionId", "HttpPipelineAppend", "HttpPipelinePrepend")

        $existingFunctionApp = $null

        if ($PsCmdlet.ParameterSetName -eq "ByObjectInput")
        {
            if ($PSBoundParameters.ContainsKey("InputObject"))
            {
                $PSBoundParameters.Remove("InputObject")  | Out-Null
            }

            $Name = $InputObject.Name
            
            $PSBoundParameters.Add("Name", $Name)  | Out-Null
            $PSBoundParameters.Add("ResourceGroupName", $InputObject.ResourceGroupName)  | Out-Null
            $PSBoundParameters.Add("SubscriptionId", $InputObject.SubscriptionId)  | Out-Null
            
            $existingFunctionApp = $InputObject                
        }
        else
        {
            $existingFunctionApp = GetFunctionAppByName -Name $Name -ResourceGroupName $ResourceGroupName @params
        }

        $appSettings = New-Object -TypeName System.Collections.Generic.List[System.Object]
        $siteCofig = New-Object -TypeName Microsoft.Azure.PowerShell.Cmdlets.Functions.Models.Api20190801.SiteConfig
        $functionAppDef = New-Object -TypeName Microsoft.Azure.PowerShell.Cmdlets.Functions.Models.Api20190801.Site

        # Identity information
        if ($IdentityType)
        {
            $functionAppDef.IdentityType = $IdentityType

            if ($IdentityType -eq "UserAssigned")
            {
                # Set UserAssigned managed identity
                if (-not $IdentityID)
                {
                    $errorMessage = "IdentityID is required for UserAssigned identity"
                    $exception = [System.InvalidOperationException]::New($errorMessage)
                    ThrowTerminatingError -ErrorId "IdentityIDIsRequiredForUserAssignedIdentity" `
                                            -ErrorMessage $errorMessage `
                                            -ErrorCategory ([System.Management.Automation.ErrorCategory]::InvalidOperation) `
                                            -Exception $exception

                }

                $identityUserAssignedIdentity = NewIdentityUserAssignedIdentity -IdentityID $IdentityID
                $functionAppDef.IdentityUserAssignedIdentity = $identityUserAssignedIdentity
            }
        }
        elseif ($existingFunctionApp.IdentityType)
        {
            if ($existingFunctionApp.IdentityType -eq "UserAssigned")
            {
                $functionAppDef.IdentityType = "UserAssigned"

                if ($existingFunctionApp.IdentityUserAssignedIdentity -and $existingFunctionApp.IdentityUserAssignedIdentity.Count -gt 0)
                {
                    $identityUserAssignedIdentity = NewIdentityUserAssignedIdentity -IdentityID $existingFunctionApp.IdentityUserAssignedIdentity.Keys
                    $functionAppDef.IdentityUserAssignedIdentity = $identityUserAssignedIdentity
                }
            }
            elseif ($existingFunctionApp.IdentityType -eq "SystemAssigned")
            {
                $functionAppDef.IdentityType = "SystemAssigned"
            }
            else
            {
                $errorMessage = "Unknown IdentityType '$($existingFunctionApp.IdentityType)'"
                $exception = [System.InvalidOperationException]::New($errorMessage)
                ThrowTerminatingError -ErrorId "UnknownIdentityType" `
                                        -ErrorMessage $errorMessage `
                                        -ErrorCategory ([System.Management.Automation.ErrorCategory]::InvalidOperation) `
                                        -Exception $exception
            }
        }
        
        # Update function app hosting plan
        if ($PlanName)
        {
            # Validate that the new plan is exists
            $newFunctionAppPlan = GetServicePlan $PlanName @params

            # Get the current plan in which the app is being hosted
            $currentFunctionAppPlan = GetFunctionAppServicePlanInfo $existingFunctionApp.ServerFarmId @params

            ValidatePlanSwitchCompatibility -CurrentServicePlan $currentFunctionAppPlan -NewServicePlan $newFunctionAppPlan

            $functionAppDef.ServerFarmId = $newFunctionAppPlan.Id
            $functionAppDef.Location = $newFunctionAppPlan.Location
            $functionAppDef.Reserved = $newFunctionAppPlan.Reserved
        }
        else
        {
            # Copy the existing function app plan settings
            $functionAppDef.ServerFarmId = $existingFunctionApp.ServerFarmId
            $functionAppDef.Location = $existingFunctionApp.Location
            $functionAppDef.Reserved = $existingFunctionApp.Reserved                
        }

        # Set Application Insights
        $currentApplicationSettings = $existingFunctionApp.ApplicationSettings

        if ($ApplicationInsightsKey)
        {
            $currentApplicationSettings['APPINSIGHTS_INSTRUMENTATIONKEY'] = $ApplicationInsightsKey
        }
        elseif ($ApplicationInsightsName)
        {
            $params = GetParameterKeyValues -PSBoundParametersDictionary $PSBoundParameters `
                                            -ParameterList @("SubscriptionId", "HttpPipelineAppend", "HttpPipelinePrepend")
            $appInsightsProject = GetApplicationInsightsProject -Name $ApplicationInsightsName @params
            if (-not $appInsightsProject)
            {
                $errorMessage = "Failed to get application insights key for project name '$ApplicationInsightsName'. Please make sure the project exist."
                $exception = [System.InvalidOperationException]::New($errorMessage)
                ThrowTerminatingError -ErrorId "ApplicationInsightsProjectNotFound" `
                                    -ErrorMessage $errorMessage `
                                    -ErrorCategory ([System.Management.Automation.ErrorCategory]::InvalidOperation) `
                                    -Exception $exception
            }

            $currentApplicationSettings['APPINSIGHTS_INSTRUMENTATIONKEY'] = $appInsightsProject.InstrumentationKey
        }

        # Set app settings
        foreach ($appSettingName in $currentApplicationSettings.Keys)
        {
            $appSettingValue = $currentApplicationSettings[$appSettingName]
            $appSettings.Add((NewAppSetting -Name $appSettingName -Value $appSettingValue))
        }

        # Set Tag
        if ($Tag -and ($Tag.Count -gt 0))
        {
            $resourceTag = NewResourceTag -Tag $Tag
            $functionAppDef.Tag = $resourceTag
        }
        elseif ($existingFunctionApp.Tag.AdditionalProperties -and ($existingFunctionApp.Tag.AdditionalProperties.Count -gt 0))
        {
            $functionAppDef.Tag = $existingFunctionApp.Tag
        }

        # Set siteConfig properties: AlwaysOn, LinuxFxVersion, JavaVersion, PowerShellVersion
        $siteCofig.AlwaysOn = $existingFunctionApp.SiteConfig.AlwaysOn
        $siteCofig.LinuxFxVersion = $existingFunctionApp.SiteConfig.LinuxFxVersion            
        $siteCofig.JavaVersion = $existingFunctionApp.SiteConfig.JavaVersion
        $siteCofig.PowerShellVersion = $existingFunctionApp.SiteConfig.PowerShellVersion

        # Set the function app Kind
        $functionAppDef.Kind = $existingFunctionApp.Kind

        # Set app settings and site configuration
        $siteCofig.AppSetting = $appSettings
        $functionAppDef.Config = $siteCofig
        $PSBoundParameters.Add("SiteEnvelope", $functionAppDef)  | Out-Null

        if ($PsCmdlet.ShouldProcess($Name, "Updating function app"))
        {
            # Save the ErrorActionPreference
            $currentErrorActionPreference = $ErrorActionPreference
            $ErrorActionPreference = 'Stop'

            try
            {
                if ($PsCmdlet.ShouldProcess($Name, "Updating function app"))
                {
                    if ($Force.IsPresent -or $PsCmdlet.ShouldContinue("Update function app '$Name'?", "Updating function app"))
                    {
                        # Remove bound parameters from the dictionary that cannot be process by the intenal cmdlets
                        if ($PSBoundParameters.ContainsKey("Force"))
                        {
                            $PSBoundParameters.Remove("Force")  | Out-Null
                        }

                        Az.Functions.internal\Set-AzFunctionApp @PSBoundParameters
                    }
                }
            }
            catch
            {
                $errorMessage = GetErrorMessage -Response $_

                if ($errorMessage)
                {
                    $exception = [System.InvalidOperationException]::New($errorMessage)
                    ThrowTerminatingError -ErrorId "FailedToUdpateFunctionApp" `
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
# MIInpgYJKoZIhvcNAQcCoIInlzCCJ5MCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCCEVmquXSHPGE7T
# M8p5lWylqVkrhGKGOvVsTIYR/xHdGqCCDYUwggYDMIID66ADAgECAhMzAAACzfNk
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
# cVZOSEXAQsmbdlsKgEhr/Xmfwb1tbWrJUnMTDXpQzTGCGXcwghlzAgEBMIGVMH4x
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01p
# Y3Jvc29mdCBDb2RlIFNpZ25pbmcgUENBIDIwMTECEzMAAALN82S/+NRMXVEAAAAA
# As0wDQYJYIZIAWUDBAIBBQCgga4wGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQw
# HAYKKwYBBAGCNwIBCzEOMAwGCisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIFvx
# CDhI4YILsuMaMiqEaiGOg0GXDWPO3onXfHKO5kZHMEIGCisGAQQBgjcCAQwxNDAy
# oBSAEgBNAGkAYwByAG8AcwBvAGYAdKEagBhodHRwOi8vd3d3Lm1pY3Jvc29mdC5j
# b20wDQYJKoZIhvcNAQEBBQAEggEADytmoNfCYpduwZxoQstaOIQ8XRHxg2XFAIon
# 7iKffPpGp7vy1zHsARTeGeTld2F4qw8UzDbpiOOBJByvXfdekYx2TAJ0piZWAlQN
# G9MyK1evLsRdxiB11pQAfFkEQxZGFoxlGDO58ZS5qcnl4vACju6SYps/+pNINGh7
# RPIS7ood7uc4wHvYbQ7VjG48qyXIahBzAROW+Hqaz27Px7+RdlqrEUsnhbNqA0I3
# kMgHRqaan4fhGg3rQrmvBsVN/YfaxOsE0OF1cflPlxzdeHOL32Mhf0YPYtkfLGmG
# k6x1nsZJpw9yO61ZtfygROpeH1x7XoDThith1GkIY8tPk5wg56GCFwEwghb9Bgor
# BgEEAYI3AwMBMYIW7TCCFukGCSqGSIb3DQEHAqCCFtowghbWAgEDMQ8wDQYJYIZI
# AWUDBAIBBQAwggFRBgsqhkiG9w0BCRABBKCCAUAEggE8MIIBOAIBAQYKKwYBBAGE
# WQoDATAxMA0GCWCGSAFlAwQCAQUABCBloelZx+cGu8hrGuKMG6p2gc0PEKCM6iBr
# xzg7+/NnHgIGYxElp1D+GBMyMDIyMDkwMjA0MTUwOC4zMDFaMASAAgH0oIHQpIHN
# MIHKMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMH
# UmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSUwIwYDVQQL
# ExxNaWNyb3NvZnQgQW1lcmljYSBPcGVyYXRpb25zMSYwJAYDVQQLEx1UaGFsZXMg
# VFNTIEVTTjpENkJELUUzRTctMTY4NTElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUt
# U3RhbXAgU2VydmljZaCCEVgwggcMMIIE9KADAgECAhMzAAABnv3CLdgxWraxAAEA
# AAGeMA0GCSqGSIb3DQEBCwUAMHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNo
# aW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29y
# cG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEw
# MB4XDTIxMTIwMjE5MDUyMFoXDTIzMDIyODE5MDUyMFowgcoxCzAJBgNVBAYTAlVT
# MRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQK
# ExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJTAjBgNVBAsTHE1pY3Jvc29mdCBBbWVy
# aWNhIE9wZXJhdGlvbnMxJjAkBgNVBAsTHVRoYWxlcyBUU1MgRVNOOkQ2QkQtRTNF
# Ny0xNjg1MSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2aWNlMIIC
# IjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA7ulcpUh1w/A2vF5FTSKg4MFq
# U64S+V1wWsNmc3q5trK8VfjaS/2b+6VQEjv0wxoQBDHMGU8cmo7fCOL2eA55xfUw
# +LT+hBOUMdS0EKGQI6ueVB/aqqXNZ8ESTQZUIvlnQFeyIho0AXvCflmFd8rw6pRG
# BQuVTHvDrAe8jjKRawCGatw4T6UyyTNS0XTRFQLRhZS0+QWwcNxRuhIH0Leg4nwW
# LbGaroTwGhEfTyACxUMQNd/PooTUWSTCVDIV2GgEuqC0TeqWGQw6F8uKqnBhniDb
# EQUWfdUzepUIGnfAp2vqh9LQ0LEEiUH7++JyXYM5CKb8/w571BTWfb6podjsTZ/N
# qV+Jy7swGQj+Ps5hRmDwJaOsnJ03PWPFzbvF1SWL56PLmGIoEXUZtgGCH8NOA2BY
# VERPYZHJCiIcY6hETUcQNGXh01BwObemUt8UziTloHgeVtz0YbgEMoSE4xmlEFAI
# Esl8w86zmpDU1W44+/l/DhrBbUfDmD8wXu5d9Ui77nTTqvEsYdlQPlqBpnc4X/lu
# yZiBBgLaP//bvB1LZ6DcySv3cEtjGLnJ4ppTq8Sla56vY79YaYJhz6G1h55y4QIF
# 5x+Eo2m8j5BdQmXfCNgywueiOMHlqXK7afk3Yab8ARb1ouqJ07NbkhYOFAQKLTlS
# Y3VzSvtNSVWRe58bNXECAwEAAaOCATYwggEyMB0GA1UdDgQWBBRo0z6D0XWOlz7U
# JEk66IfZZGW7rTAfBgNVHSMEGDAWgBSfpxVdAF5iXYP05dJlpxtTNRnpcjBfBgNV
# HR8EWDBWMFSgUqBQhk5odHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2Ny
# bC9NaWNyb3NvZnQlMjBUaW1lLVN0YW1wJTIwUENBJTIwMjAxMCgxKS5jcmwwbAYI
# KwYBBQUHAQEEYDBeMFwGCCsGAQUFBzAChlBodHRwOi8vd3d3Lm1pY3Jvc29mdC5j
# b20vcGtpb3BzL2NlcnRzL01pY3Jvc29mdCUyMFRpbWUtU3RhbXAlMjBQQ0ElMjAy
# MDEwKDEpLmNydDAMBgNVHRMBAf8EAjAAMBMGA1UdJQQMMAoGCCsGAQUFBwMIMA0G
# CSqGSIb3DQEBCwUAA4ICAQBUuVWOoZnPBh9g9fL/kk0APgPoE9XbhN8rjZ9Zh+NU
# y6rs1TS1tNwMwL7rnGHmtVWorUROVGGyM8VLFfRvLE6123YnM3lRuuiKS7pZYeCM
# an5/scxmzzmVlE+sALYF6txXzBmPZO96qPyEObIaE6HjIQZhy1noOd/rQXLvEs6H
# EhyU4nlnL+SppwLaCa2uUpg3WXRQQs9HD9yFKuJHnTdENioSqzA0QHg/wgs2tg1/
# AY/bUXj8nE5737EnAnOVbMQzQmp56vLVSfh0Gs0VSvADVtlDA4Fet4u0ihm9/rJS
# iP2PdqLjK0xYWouoeKwqI80rELSUEwnJyNEEw6Hsbc5mi7JrSrt4xdgMofIBXnfi
# kQ4g4bTXMmaCZvn5qmioUyIvYLj6Hne8L5+c3Xvd2a+kVwU7Vy9HZUdBTMP8D0FS
# Yy1RGhJ2FpymR/ZVPF2SVfsTplhQRWZHfkZ1Tlt2VuXgRrC3rswwgGpq7sqLcODw
# 9+k+nmBib+WL619YkWAA68VwlGIna2SWNrNCFWRYnKhoKeRbWGJwDKRO7criI9qO
# MvqJdW8t5UFejm9D+EZyuoJ7hAlgX5lko3rzn6/tNppLHlvKERBwJvcvV33HVHEO
# e7222rvPgEImvMBkHDV6cQJ6Cw8CfkQMnA5aXt3tmIWvZ17mM3FTJPdq/2yiNH8h
# jjCCB3EwggVZoAMCAQICEzMAAAAVxedrngKbSZkAAAAAABUwDQYJKoZIhvcNAQEL
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
# 0ZDxyKs6ijoIYn/ZcGNTTY3ugm2lBRDBcQZqELQdVTNYs6FwZvKhggLPMIICOAIB
# ATCB+KGB0KSBzTCByjELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24x
# EDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlv
# bjElMCMGA1UECxMcTWljcm9zb2Z0IEFtZXJpY2EgT3BlcmF0aW9uczEmMCQGA1UE
# CxMdVGhhbGVzIFRTUyBFU046RDZCRC1FM0U3LTE2ODUxJTAjBgNVBAMTHE1pY3Jv
# c29mdCBUaW1lLVN0YW1wIFNlcnZpY2WiIwoBATAHBgUrDgMCGgMVAAIVwjmQWw8Q
# PweU3oukX/NC/RoXoIGDMIGApH4wfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldh
# c2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBD
# b3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIw
# MTAwDQYJKoZIhvcNAQEFBQACBQDmu6QlMCIYDzIwMjIwOTAyMDUzNTMzWhgPMjAy
# MjA5MDMwNTM1MzNaMHgwPgYKKwYBBAGEWQoEATEwMC4wCgIFAOa7pCUCAQAwCwIB
# AAIDBAGMAgH/MAcCAQACAhHtMAoCBQDmvPWlAgEAMDYGCisGAQQBhFkKBAIxKDAm
# MAwGCisGAQQBhFkKAwKgCjAIAgEAAgMHoSChCjAIAgEAAgMBhqAwDQYJKoZIhvcN
# AQEFBQADgYEAo8FL0tCkyidhxtrOlzjRQUhHJaWWmvjuxA3qpHbdNU+y4tnvVua9
# g8K0xiBexLuX6SUOPSlECcAu+jU35es9Jo46BEoXm/M7f18vKj/Ey5vSky0RlpSw
# M/nZKu73bqkZapX6rkPgaRg2Ymfv2VpBNeJdA+YbXb3JKMaxEROSdg4xggQNMIIE
# CQIBATCBkzB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4G
# A1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYw
# JAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMAITMwAAAZ79wi3Y
# MVq2sQABAAABnjANBglghkgBZQMEAgEFAKCCAUowGgYJKoZIhvcNAQkDMQ0GCyqG
# SIb3DQEJEAEEMC8GCSqGSIb3DQEJBDEiBCBZpnB50If7Ir0NL5bCmvZ3WLncTHvK
# zCSlzJsKSw5MKDCB+gYLKoZIhvcNAQkQAi8xgeowgecwgeQwgb0EIA7FVjIi/lyP
# T6lmQm6sn7IKurRF7leCuR9K1Q79bzwZMIGYMIGApH4wfDELMAkGA1UEBhMCVVMx
# EzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoT
# FU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUt
# U3RhbXAgUENBIDIwMTACEzMAAAGe/cIt2DFatrEAAQAAAZ4wIgQg/miwq92kFB13
# x9D7tPC3OsfwyQECYkQnUgOBSxQiTVwwDQYJKoZIhvcNAQELBQAEggIAOHTvRA5Y
# 0+pOQw9H680n64F1+4CbkEQlh6i/vkb5ygMPnqB9h9wlTikX5HsOezDukAffTUT8
# ixZYx/nf1RFV5GpA6XHaJuFoxAR/I9swAxVlEluql1bdIj9JycA7878yhr+DudZP
# POVwUrvcvqu9T8ViTOigFmFJ2Kwvh0eEMlWrcSglchEo8tzWDAlQO5Um3QkXtZet
# ZQHIsMcp4KKHCYqLc3WHEYODoADzM9SePKNMUnKKcPp7LZuMJgpM+8+/GiJIKsrJ
# JmJ1/v1AduK43Eea9iDKH4C2DWYkVBYyMZpyHiYDtY2Z/M4agx1n8v0ulxk5EC98
# ilxYsByxGCnIFk/U28pbTSB89TRSSPy3nYTySNC7kHL9Nq/Cfk0obNpqr4Ae5Q+q
# 3AgrHkfCdrznJFmwvKllFtE7dYrGDgo2teK1GG74SdMS70NH2Ka7jhtqF9NMnETZ
# JD+a/IfPvUckWHbdwYhOiM60GlhyDdj4kHHQ8abzqR3oYSrDf+xgb/Q6TcjSrRl/
# T1YcKhhcTWzaJu2lxc9Ba0xw6iMLRQUkmfvwsz2oUipUr+Q765RiB4ylzoOfBvVz
# xgzfhRq1cWdVGn/L6A4iq1GuRN/+v5V+KRYyDFEbngCuKqU7ezHB5FseFmFaRWZk
# fhKM94zEkBVwYPQXibAcIQ38GCsIMMjzGAE=
# SIG # End signature block
