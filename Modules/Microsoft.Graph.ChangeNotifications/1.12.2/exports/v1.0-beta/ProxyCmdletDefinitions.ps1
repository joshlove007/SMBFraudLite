
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
Retrieve the properties and relationships of a subscription.
See the table in the Permissions section for the list of resources that support subscribing to change notifications.
.Description
Retrieve the properties and relationships of a subscription.
See the table in the Permissions section for the list of resources that support subscribing to change notifications.
.Example
Import-Module Microsoft.Graph.ChangeNotifications
Get-MgSubscription -SubscriptionId $subscriptionId
.Example
Import-Module Microsoft.Graph.ChangeNotifications
Get-MgSubscription

.Inputs
Microsoft.Graph.PowerShell.Models.IChangeNotificationsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSubscription1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.changenotifications/get-mgsubscription
#>
function Get-MgSubscription {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSubscription1])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of subscription
    ${SubscriptionId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IChangeNotificationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Int32]
    # Sets the page size of results.
    ${PageSize},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # List all pages.
    ${All},

    [Parameter(ParameterSetName='List')]
    [Alias('CV')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.String]
    # Specifies a count of the total number of items in a collection.
    # By default, this variable will be set in the global scope.
    ${CountVariable}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Get = 'Microsoft.Graph.ChangeNotifications.private\Get-MgSubscription_Get';
            GetViaIdentity = 'Microsoft.Graph.ChangeNotifications.private\Get-MgSubscription_GetViaIdentity';
            List = 'Microsoft.Graph.ChangeNotifications.private\Get-MgSubscription_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke action reauthorize
.Description
Invoke action reauthorize

.Inputs
Microsoft.Graph.PowerShell.Models.IChangeNotificationsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.changenotifications/invoke-mgreauthorizesubscription
#>
function Invoke-MgReauthorizeSubscription {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Reauthorize1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Reauthorize1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of subscription
    ${SubscriptionId},

    [Parameter(ParameterSetName='ReauthorizeViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IChangeNotificationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Reauthorize1 = 'Microsoft.Graph.ChangeNotifications.private\Invoke-MgReauthorizeSubscription_Reauthorize1';
            ReauthorizeViaIdentity1 = 'Microsoft.Graph.ChangeNotifications.private\Invoke-MgReauthorizeSubscription_ReauthorizeViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Subscribes a listener application to receive change notifications when the requested type of changes occur to the specified resource in Microsoft Graph.
See the table in the Permissions section for the list of resources that support subscribing to change notifications.
Some resources support the option to include encrypted resource data in change notifications.
These resources include chatMessage, contact, event, message, onlineMeetings and presence.
For more information, see Set up change notifications that include resource data and Change notifications for Outlook resources in Microsoft Graph.
.Description
Subscribes a listener application to receive change notifications when the requested type of changes occur to the specified resource in Microsoft Graph.
See the table in the Permissions section for the list of resources that support subscribing to change notifications.
Some resources support the option to include encrypted resource data in change notifications.
These resources include chatMessage, contact, event, message, onlineMeetings and presence.
For more information, see Set up change notifications that include resource data and Change notifications for Outlook resources in Microsoft Graph.
.Example
Import-Module Microsoft.Graph.ChangeNotifications
$params = @{
	ChangeType = "created"
	NotificationUrl = "https://webhook.azurewebsites.net/api/send/myNotifyClient"
	Resource = "me/mailFolders('Inbox')/messages"
	ExpirationDateTime = [System.DateTime]::Parse("2016-11-20T18:23:45.9356913Z")
	ClientState = "secretClientValue"
	LatestSupportedTlsVersion = "v1_2"
}
New-MgSubscription -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSubscription1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSubscription1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.changenotifications/new-mgsubscription
#>
function New-MgSubscription {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSubscription1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSubscription1]
    # subscription
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Optional.
    # Identifier of the application used to create the subscription.
    # Read-only.
    ${ApplicationId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Required.
    # Indicates the type of change in the subscribed resource that will raise a change notification.
    # The supported values are: created, updated, deleted.
    # Multiple values can be combined using a comma-separated list.
    # Note: Drive root item and list change notifications support only the updated changeType.
    # User and group change notifications support updated and deleted changeType.
    ${ChangeType},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Optional.
    # Specifies the value of the clientState property sent by the service in each change notification.
    # The maximum length is 255 characters.
    # The client can check that the change notification came from the service by comparing the value of the clientState property sent with the subscription with the value of the clientState property received with each change notification.
    ${ClientState},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Optional.
    # Identifier of the user or service principal that created the subscription.
    # If the app used delegated permissions to create the subscription, this field contains the ID of the signed-in user the app called on behalf of.
    # If the app used application permissions, this field contains the ID of the service principal corresponding to the app.
    # Read-only.
    ${CreatorId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Optional.
    # A base64-encoded representation of a certificate with a public key used to encrypt resource data in change notifications.
    # Optional but required when includeResourceData is true.
    ${EncryptionCertificate},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Optional.
    # A custom app-provided identifier to help identify the certificate needed to decrypt resource data.
    # Required when includeResourceData is true.
    ${EncryptionCertificateId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Required.
    # Specifies the date and time when the webhook subscription expires.
    # The time is in UTC, and can be an amount of time from subscription creation that varies for the resource subscribed to.
    # For the maximum supported subscription length of time, see the table below.
    ${ExpirationDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Optional.
    # When set to true, change notifications include resource data (such as content of a chat message).
    ${IncludeResourceData},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Optional.
    # Specifies the latest version of Transport Layer Security (TLS) that the notification endpoint, specified by notificationUrl, supports.
    # The possible values are: v1_0, v1_1, v1_2, v1_3.
    # For subscribers whose notification endpoint supports a version lower than the currently recommended version (TLS 1.2), specifying this property by a set timeline allows them to temporarily use their deprecated version of TLS before completing their upgrade to TLS 1.2.
    # For these subscribers, not setting this property per the timeline would result in subscription operations failing.
    # For subscribers whose notification endpoint already supports TLS 1.2, setting this property is optional.
    # In such cases, Microsoft Graph defaults the property to v1_2.
    ${LatestSupportedTlsVersion},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Optional.
    # The URL of the endpoint that receives lifecycle notifications, including subscriptionRemoved and missed notifications.
    # This URL must make use of the HTTPS protocol.
    ${LifecycleNotificationUrl},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Optional.
    # Desired content-type for Microsoft Graph change notifications for supported resource types.
    # The default content-type is application/json.
    ${NotificationContentType},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Optional.
    # OData query options for specifying the value for the targeting resource.
    # Clients receive notifications when the resource reaches the state matching the query options provided here.
    # With this new property in the subscription creation payload along with all existing properties, Webhooks will deliver notifications whenever a resource reaches the desired state mentioned in the notificationQueryOptions property.
    # For example, when the print job is completed or when a print job resource isFetchable property value becomes true etc.
    ${NotificationQueryOptions},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Required.
    # The URL of the endpoint that receives the change notifications.
    # This URL must make use of the HTTPS protocol.
    ${NotificationUrl},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Optional.
    # The app ID that the subscription service can use to generate the validation token.
    # This allows the client to validate the authenticity of the notification received.
    ${NotificationUrlAppId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Required.
    # Specifies the resource that will be monitored for changes.
    # Do not include the base URL (https://graph.microsoft.com/beta/).
    # See the possible resource path values for each supported resource.
    ${Resource},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Create = 'Microsoft.Graph.ChangeNotifications.private\New-MgSubscription_Create';
            CreateExpanded = 'Microsoft.Graph.ChangeNotifications.private\New-MgSubscription_CreateExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Delete a subscription.
For the list of resources that support subscribing to change notifications, see the table in the Permissions section.
.Description
Delete a subscription.
For the list of resources that support subscribing to change notifications, see the table in the Permissions section.
.Example
Import-Module Microsoft.Graph.ChangeNotifications
Remove-MgSubscription -SubscriptionId $subscriptionId

.Inputs
Microsoft.Graph.PowerShell.Models.IChangeNotificationsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.changenotifications/remove-mgsubscription
#>
function Remove-MgSubscription {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of subscription
    ${SubscriptionId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IChangeNotificationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Header')]
    [System.String]
    # ETag
    ${IfMatch},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Delete1 = 'Microsoft.Graph.ChangeNotifications.private\Remove-MgSubscription_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.ChangeNotifications.private\Remove-MgSubscription_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Renew a subscription by extending its expiry time.
The table in the Permissions section lists the resources that support subscribing to change notifications.
Subscriptions expire after a length of time that varies by resource type.
In order to avoid missing change notifications, an app should renew its subscriptions well in advance of their expiry date.
See subscription for maximum length of a subscription for each resource type.
.Description
Renew a subscription by extending its expiry time.
The table in the Permissions section lists the resources that support subscribing to change notifications.
Subscriptions expire after a length of time that varies by resource type.
In order to avoid missing change notifications, an app should renew its subscriptions well in advance of their expiry date.
See subscription for maximum length of a subscription for each resource type.
.Example
Import-Module Microsoft.Graph.ChangeNotifications
$params = @{
	ExpirationDateTime = [System.DateTime]::Parse("2016-11-22T18:23:45.9356913Z")
}
Update-MgSubscription -SubscriptionId $subscriptionId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IChangeNotificationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSubscription1
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.changenotifications/update-mgsubscription
#>
function Update-MgSubscription {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of subscription
    ${SubscriptionId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IChangeNotificationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSubscription1]
    # subscription
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Optional.
    # Identifier of the application used to create the subscription.
    # Read-only.
    ${ApplicationId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Required.
    # Indicates the type of change in the subscribed resource that will raise a change notification.
    # The supported values are: created, updated, deleted.
    # Multiple values can be combined using a comma-separated list.
    # Note: Drive root item and list change notifications support only the updated changeType.
    # User and group change notifications support updated and deleted changeType.
    ${ChangeType},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Optional.
    # Specifies the value of the clientState property sent by the service in each change notification.
    # The maximum length is 255 characters.
    # The client can check that the change notification came from the service by comparing the value of the clientState property sent with the subscription with the value of the clientState property received with each change notification.
    ${ClientState},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Optional.
    # Identifier of the user or service principal that created the subscription.
    # If the app used delegated permissions to create the subscription, this field contains the ID of the signed-in user the app called on behalf of.
    # If the app used application permissions, this field contains the ID of the service principal corresponding to the app.
    # Read-only.
    ${CreatorId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Optional.
    # A base64-encoded representation of a certificate with a public key used to encrypt resource data in change notifications.
    # Optional but required when includeResourceData is true.
    ${EncryptionCertificate},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Optional.
    # A custom app-provided identifier to help identify the certificate needed to decrypt resource data.
    # Required when includeResourceData is true.
    ${EncryptionCertificateId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Required.
    # Specifies the date and time when the webhook subscription expires.
    # The time is in UTC, and can be an amount of time from subscription creation that varies for the resource subscribed to.
    # For the maximum supported subscription length of time, see the table below.
    ${ExpirationDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Optional.
    # When set to true, change notifications include resource data (such as content of a chat message).
    ${IncludeResourceData},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Optional.
    # Specifies the latest version of Transport Layer Security (TLS) that the notification endpoint, specified by notificationUrl, supports.
    # The possible values are: v1_0, v1_1, v1_2, v1_3.
    # For subscribers whose notification endpoint supports a version lower than the currently recommended version (TLS 1.2), specifying this property by a set timeline allows them to temporarily use their deprecated version of TLS before completing their upgrade to TLS 1.2.
    # For these subscribers, not setting this property per the timeline would result in subscription operations failing.
    # For subscribers whose notification endpoint already supports TLS 1.2, setting this property is optional.
    # In such cases, Microsoft Graph defaults the property to v1_2.
    ${LatestSupportedTlsVersion},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Optional.
    # The URL of the endpoint that receives lifecycle notifications, including subscriptionRemoved and missed notifications.
    # This URL must make use of the HTTPS protocol.
    ${LifecycleNotificationUrl},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Optional.
    # Desired content-type for Microsoft Graph change notifications for supported resource types.
    # The default content-type is application/json.
    ${NotificationContentType},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Optional.
    # OData query options for specifying the value for the targeting resource.
    # Clients receive notifications when the resource reaches the state matching the query options provided here.
    # With this new property in the subscription creation payload along with all existing properties, Webhooks will deliver notifications whenever a resource reaches the desired state mentioned in the notificationQueryOptions property.
    # For example, when the print job is completed or when a print job resource isFetchable property value becomes true etc.
    ${NotificationQueryOptions},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Required.
    # The URL of the endpoint that receives the change notifications.
    # This URL must make use of the HTTPS protocol.
    ${NotificationUrl},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Optional.
    # The app ID that the subscription service can use to generate the validation token.
    # This allows the client to validate the authenticity of the notification received.
    ${NotificationUrlAppId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Required.
    # Specifies the resource that will be monitored for changes.
    # Do not include the base URL (https://graph.microsoft.com/beta/).
    # See the possible resource path values for each supported resource.
    ${Resource},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [Microsoft.Graph.PowerShell.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            Update = 'Microsoft.Graph.ChangeNotifications.private\Update-MgSubscription_Update';
            UpdateExpanded = 'Microsoft.Graph.ChangeNotifications.private\Update-MgSubscription_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.ChangeNotifications.private\Update-MgSubscription_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.ChangeNotifications.private\Update-MgSubscription_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# SIG # Begin signature block
# MIInnQYJKoZIhvcNAQcCoIInjjCCJ4oCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCCmTfAyBcv+0Jkk
# RvF8KF3XX1ayfPa/KGH9k0toZ+QfbaCCDYEwggX/MIID56ADAgECAhMzAAACzI61
# lqa90clOAAAAAALMMA0GCSqGSIb3DQEBCwUAMH4xCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25p
# bmcgUENBIDIwMTEwHhcNMjIwNTEyMjA0NjAxWhcNMjMwNTExMjA0NjAxWjB0MQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMR4wHAYDVQQDExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
# AQCiTbHs68bADvNud97NzcdP0zh0mRr4VpDv68KobjQFybVAuVgiINf9aG2zQtWK
# No6+2X2Ix65KGcBXuZyEi0oBUAAGnIe5O5q/Y0Ij0WwDyMWaVad2Te4r1Eic3HWH
# UfiiNjF0ETHKg3qa7DCyUqwsR9q5SaXuHlYCwM+m59Nl3jKnYnKLLfzhl13wImV9
# DF8N76ANkRyK6BYoc9I6hHF2MCTQYWbQ4fXgzKhgzj4zeabWgfu+ZJCiFLkogvc0
# RVb0x3DtyxMbl/3e45Eu+sn/x6EVwbJZVvtQYcmdGF1yAYht+JnNmWwAxL8MgHMz
# xEcoY1Q1JtstiY3+u3ulGMvhAgMBAAGjggF+MIIBejAfBgNVHSUEGDAWBgorBgEE
# AYI3TAgBBggrBgEFBQcDAzAdBgNVHQ4EFgQUiLhHjTKWzIqVIp+sM2rOHH11rfQw
# UAYDVR0RBEkwR6RFMEMxKTAnBgNVBAsTIE1pY3Jvc29mdCBPcGVyYXRpb25zIFB1
# ZXJ0byBSaWNvMRYwFAYDVQQFEw0yMzAwMTIrNDcwNTI5MB8GA1UdIwQYMBaAFEhu
# ZOVQBdOCqhc3NyK1bajKdQKVMFQGA1UdHwRNMEswSaBHoEWGQ2h0dHA6Ly93d3cu
# bWljcm9zb2Z0LmNvbS9wa2lvcHMvY3JsL01pY0NvZFNpZ1BDQTIwMTFfMjAxMS0w
# Ny0wOC5jcmwwYQYIKwYBBQUHAQEEVTBTMFEGCCsGAQUFBzAChkVodHRwOi8vd3d3
# Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2NlcnRzL01pY0NvZFNpZ1BDQTIwMTFfMjAx
# MS0wNy0wOC5jcnQwDAYDVR0TAQH/BAIwADANBgkqhkiG9w0BAQsFAAOCAgEAeA8D
# sOAHS53MTIHYu8bbXrO6yQtRD6JfyMWeXaLu3Nc8PDnFc1efYq/F3MGx/aiwNbcs
# J2MU7BKNWTP5JQVBA2GNIeR3mScXqnOsv1XqXPvZeISDVWLaBQzceItdIwgo6B13
# vxlkkSYMvB0Dr3Yw7/W9U4Wk5K/RDOnIGvmKqKi3AwyxlV1mpefy729FKaWT7edB
# d3I4+hldMY8sdfDPjWRtJzjMjXZs41OUOwtHccPazjjC7KndzvZHx/0VWL8n0NT/
# 404vftnXKifMZkS4p2sB3oK+6kCcsyWsgS/3eYGw1Fe4MOnin1RhgrW1rHPODJTG
# AUOmW4wc3Q6KKr2zve7sMDZe9tfylonPwhk971rX8qGw6LkrGFv31IJeJSe/aUbG
# dUDPkbrABbVvPElgoj5eP3REqx5jdfkQw7tOdWkhn0jDUh2uQen9Atj3RkJyHuR0
# GUsJVMWFJdkIO/gFwzoOGlHNsmxvpANV86/1qgb1oZXdrURpzJp53MsDaBY/pxOc
# J0Cvg6uWs3kQWgKk5aBzvsX95BzdItHTpVMtVPW4q41XEvbFmUP1n6oL5rdNdrTM
# j/HXMRk1KCksax1Vxo3qv+13cCsZAaQNaIAvt5LvkshZkDZIP//0Hnq7NnWeYR3z
# 4oFiw9N2n3bb9baQWuWPswG0Dq9YT9kb+Cs4qIIwggd6MIIFYqADAgECAgphDpDS
# AAAAAAADMA0GCSqGSIb3DQEBCwUAMIGIMQswCQYDVQQGEwJVUzETMBEGA1UECBMK
# V2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0
# IENvcnBvcmF0aW9uMTIwMAYDVQQDEylNaWNyb3NvZnQgUm9vdCBDZXJ0aWZpY2F0
# ZSBBdXRob3JpdHkgMjAxMTAeFw0xMTA3MDgyMDU5MDlaFw0yNjA3MDgyMTA5MDla
# MH4xCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdS
# ZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMT
# H01pY3Jvc29mdCBDb2RlIFNpZ25pbmcgUENBIDIwMTEwggIiMA0GCSqGSIb3DQEB
# AQUAA4ICDwAwggIKAoICAQCr8PpyEBwurdhuqoIQTTS68rZYIZ9CGypr6VpQqrgG
# OBoESbp/wwwe3TdrxhLYC/A4wpkGsMg51QEUMULTiQ15ZId+lGAkbK+eSZzpaF7S
# 35tTsgosw6/ZqSuuegmv15ZZymAaBelmdugyUiYSL+erCFDPs0S3XdjELgN1q2jz
# y23zOlyhFvRGuuA4ZKxuZDV4pqBjDy3TQJP4494HDdVceaVJKecNvqATd76UPe/7
# 4ytaEB9NViiienLgEjq3SV7Y7e1DkYPZe7J7hhvZPrGMXeiJT4Qa8qEvWeSQOy2u
# M1jFtz7+MtOzAz2xsq+SOH7SnYAs9U5WkSE1JcM5bmR/U7qcD60ZI4TL9LoDho33
# X/DQUr+MlIe8wCF0JV8YKLbMJyg4JZg5SjbPfLGSrhwjp6lm7GEfauEoSZ1fiOIl
# XdMhSz5SxLVXPyQD8NF6Wy/VI+NwXQ9RRnez+ADhvKwCgl/bwBWzvRvUVUvnOaEP
# 6SNJvBi4RHxF5MHDcnrgcuck379GmcXvwhxX24ON7E1JMKerjt/sW5+v/N2wZuLB
# l4F77dbtS+dJKacTKKanfWeA5opieF+yL4TXV5xcv3coKPHtbcMojyyPQDdPweGF
# RInECUzF1KVDL3SV9274eCBYLBNdYJWaPk8zhNqwiBfenk70lrC8RqBsmNLg1oiM
# CwIDAQABo4IB7TCCAekwEAYJKwYBBAGCNxUBBAMCAQAwHQYDVR0OBBYEFEhuZOVQ
# BdOCqhc3NyK1bajKdQKVMBkGCSsGAQQBgjcUAgQMHgoAUwB1AGIAQwBBMAsGA1Ud
# DwQEAwIBhjAPBgNVHRMBAf8EBTADAQH/MB8GA1UdIwQYMBaAFHItOgIxkEO5FAVO
# 4eqnxzHRI4k0MFoGA1UdHwRTMFEwT6BNoEuGSWh0dHA6Ly9jcmwubWljcm9zb2Z0
# LmNvbS9wa2kvY3JsL3Byb2R1Y3RzL01pY1Jvb0NlckF1dDIwMTFfMjAxMV8wM18y
# Mi5jcmwwXgYIKwYBBQUHAQEEUjBQME4GCCsGAQUFBzAChkJodHRwOi8vd3d3Lm1p
# Y3Jvc29mdC5jb20vcGtpL2NlcnRzL01pY1Jvb0NlckF1dDIwMTFfMjAxMV8wM18y
# Mi5jcnQwgZ8GA1UdIASBlzCBlDCBkQYJKwYBBAGCNy4DMIGDMD8GCCsGAQUFBwIB
# FjNodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2RvY3MvcHJpbWFyeWNw
# cy5odG0wQAYIKwYBBQUHAgIwNB4yIB0ATABlAGcAYQBsAF8AcABvAGwAaQBjAHkA
# XwBzAHQAYQB0AGUAbQBlAG4AdAAuIB0wDQYJKoZIhvcNAQELBQADggIBAGfyhqWY
# 4FR5Gi7T2HRnIpsLlhHhY5KZQpZ90nkMkMFlXy4sPvjDctFtg/6+P+gKyju/R6mj
# 82nbY78iNaWXXWWEkH2LRlBV2AySfNIaSxzzPEKLUtCw/WvjPgcuKZvmPRul1LUd
# d5Q54ulkyUQ9eHoj8xN9ppB0g430yyYCRirCihC7pKkFDJvtaPpoLpWgKj8qa1hJ
# Yx8JaW5amJbkg/TAj/NGK978O9C9Ne9uJa7lryft0N3zDq+ZKJeYTQ49C/IIidYf
# wzIY4vDFLc5bnrRJOQrGCsLGra7lstnbFYhRRVg4MnEnGn+x9Cf43iw6IGmYslmJ
# aG5vp7d0w0AFBqYBKig+gj8TTWYLwLNN9eGPfxxvFX1Fp3blQCplo8NdUmKGwx1j
# NpeG39rz+PIWoZon4c2ll9DuXWNB41sHnIc+BncG0QaxdR8UvmFhtfDcxhsEvt9B
# xw4o7t5lL+yX9qFcltgA1qFGvVnzl6UJS0gQmYAf0AApxbGbpT9Fdx41xtKiop96
# eiL6SJUfq/tHI4D1nvi/a7dLl+LrdXga7Oo3mXkYS//WsyNodeav+vyL6wuA6mk7
# r/ww7QRMjt/fdW1jkT3RnVZOT7+AVyKheBEyIXrvQQqxP/uozKRdwaGIm1dxVk5I
# RcBCyZt2WwqASGv9eZ/BvW1taslScxMNelDNMYIZcjCCGW4CAQEwgZUwfjELMAkG
# A1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQx
# HjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEoMCYGA1UEAxMfTWljcm9z
# b2Z0IENvZGUgU2lnbmluZyBQQ0EgMjAxMQITMwAAAsyOtZamvdHJTgAAAAACzDAN
# BglghkgBZQMEAgEFAKCBrjAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgor
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgghM/cgPG
# yDyXSbr2CaFX8etkS4aXKA+w8IxMo4rMrMQwQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQAYlCFKVqDbkYtw/sirvigwdIX3I5My6Vggnhoe7AEs
# 0kETcopWLY/Xr/e6XbSjZzPLlpOm79FW3OZWNCz7OFkjpiWfo1J6fZuZMYX3rzBH
# K6ZwPL34sbBIzxuAv90HApe3LnIlC9JNebycJJ21IHZXMPYT6IIjsB+z+pOCIUQJ
# bk0pWQyV8HjzxJLCxcYqCvTldzcVlxXUaSxsWhsiHW+SAzRC2Wg2LY1OpECJF+yJ
# Y6cwdCvd+8ZBgOVL0mWsUq3KM3N93y/xA1kHeniVtlJOiDNbCC64uekiEjZnZ8a9
# f48K3NtnZIqETl/OIf1gfLp7NpzkZCI+Mwype1INxfyDoYIW/DCCFvgGCisGAQQB
# gjcDAwExghboMIIW5AYJKoZIhvcNAQcCoIIW1TCCFtECAQMxDzANBglghkgBZQME
# AgEFADCCAVAGCyqGSIb3DQEJEAEEoIIBPwSCATswggE3AgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEIDaQw4Klt7KvFNV9TeqsZwO3ToC0Zowpb3JFs5ad
# lnjJAgZjIzZmdtkYEjIwMjIwOTI4MTkzMDM0Ljg3WjAEgAIB9KCB0KSBzTCByjEL
# MAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1v
# bmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjElMCMGA1UECxMcTWlj
# cm9zb2Z0IEFtZXJpY2EgT3BlcmF0aW9uczEmMCQGA1UECxMdVGhhbGVzIFRTUyBF
# U046MTJCQy1FM0FFLTc0RUIxJTAjBgNVBAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1w
# IFNlcnZpY2WgghFUMIIHDDCCBPSgAwIBAgITMwAAAaEBhVWZuVRdigABAAABoTAN
# BgkqhkiG9w0BAQsFADB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3Rv
# bjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0
# aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDAeFw0y
# MTEyMDIxOTA1MjRaFw0yMzAyMjgxOTA1MjRaMIHKMQswCQYDVQQGEwJVUzETMBEG
# A1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWlj
# cm9zb2Z0IENvcnBvcmF0aW9uMSUwIwYDVQQLExxNaWNyb3NvZnQgQW1lcmljYSBP
# cGVyYXRpb25zMSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjoxMkJDLUUzQUUtNzRF
# QjElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2VydmljZTCCAiIwDQYJ
# KoZIhvcNAQEBBQADggIPADCCAgoCggIBANrJPF7la6SStjHFW4cthb0ERYIP2SSO
# ecew4rAZ10g9tmUtj6Xmi8sM1/4EQxAoBlAjcNf3WXXIIO4/1fu048LjxlEZcD9t
# /2qXQUrnjfyAiXtxXnbxd4Q4XBz8D5RshR9bb3o6aDxnrbFpC/eOsbhT+muICsX9
# 6vVQDUc24gZTKqOXKCJI/ArY2cUCmLUkP5R5/lzjuSHulbUqPtGdyGkV5j0x6Q9B
# GJrtwRpRhTiyoKIlV0Mml58u89P0R22GVDHvmV3H4DBl/Zr1Pu5BFIGHy2nE90gM
# OQqJYzCMpOsBjT0Dcj+OJ2o+5zw+9f6yrGrJkQ3aHgYDQR2OaTrieQi6QArXwrmc
# AsMs71IxPGkDBAgdEO1l5MKW8A8ISjLW+08Pt/56oepK2675cKR9GNcSlf36H1+u
# wHT8GAPkIF/cQssBrxN58x8dlYQlFM82ttcwqLNKtRKRW//cc/9mwmnBrPkzLZFv
# JzcCH1tPvp4EmTJ9PkU32/8pDQefGFEyzoceFOY3H4vO1hyL68d/QPdAfV4KNlZl
# GOnWY7LGk9TaYMwbqB6W8mx7UnNEAOjtgiiT8ncJxubwxsFubzmKiAWW0Ud5wcUQ
# XCuwMYEWc1gcyFxtqtA0D6BjZ7aX18CRfcyMjtSSWSjPvj8/ooip7mNx30U8JttJ
# tgf04uy155g5AgMBAAGjggE2MIIBMjAdBgNVHQ4EFgQUFr8gMttjjvlVDIqJlLDj
# uXT9zKkwHwYDVR0jBBgwFoAUn6cVXQBeYl2D9OXSZacbUzUZ6XIwXwYDVR0fBFgw
# VjBUoFKgUIZOaHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3BraW9wcy9jcmwvTWlj
# cm9zb2Z0JTIwVGltZS1TdGFtcCUyMFBDQSUyMDIwMTAoMSkuY3JsMGwGCCsGAQUF
# BwEBBGAwXjBcBggrBgEFBQcwAoZQaHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3Br
# aW9wcy9jZXJ0cy9NaWNyb3NvZnQlMjBUaW1lLVN0YW1wJTIwUENBJTIwMjAxMCgx
# KS5jcnQwDAYDVR0TAQH/BAIwADATBgNVHSUEDDAKBggrBgEFBQcDCDANBgkqhkiG
# 9w0BAQsFAAOCAgEAIMMjESV9eUblgpwqss9JL5/clZmmvAoSIBK+K9odMFGVe0Cz
# 5ORp1ywR6L73Dm+YXm0JTNMfhzScIjttnGewv5LpeyI6zdnVXhZf4jChdQnjMu+z
# T6ZPi+MYO1h8pD9uyYkpqvZz32b98e/VabYJNzJp4++LzomHdTIuN1EgtZu3Ozig
# iYUzDApvMd0+inGsGGCL4LVhmyGixYuWDPK7GNSX6o2DWbnYwmZ/XWWgjsP0cmhp
# DN36t/3bxjyu9QuaDaH8bnSj4PRQnUVr9wklod8Hex8rD1foau1dgaOYzf6D4CFp
# Wx+6kpc204W7m2csq8Afk4iMQNhXVgqaVe4G6FthqyzKA8UyY2AbYCeTd2sRwNxm
# EJdeqlGzM2jUXoa7kkKlBlds4kz1R7k+Ukq2YiYBggazD6mcfL+vmCBJg6niDlnW
# hT0aFUIzdXRP1p157o5RcGTWsTh1lz9Sw+WPSqiKWMv6U3UDmCSabPuTm0g5tUYH
# t0l3PwnQXBdETmpi7UB29q5VtnAZCQvXHxor+y+MRBbQ1TInb3OcMeJeXm8uhFOO
# MWmyFQGLb4hj6Y2psuaPbiPl5P5uMOUTceY20s+ktwwNipnUf7pTpiZqI2ZpzaNF
# cMBp4QT+6gMy3Z0Ct8k/sz4wO/fPM01Mg1640S0NWCb3PB+AhQJecNm5W2Iwggdx
# MIIFWaADAgECAhMzAAAAFcXna54Cm0mZAAAAAAAVMA0GCSqGSIb3DQEBCwUAMIGI
# MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVk
# bW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMTIwMAYDVQQDEylN
# aWNyb3NvZnQgUm9vdCBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkgMjAxMDAeFw0yMTA5
# MzAxODIyMjVaFw0zMDA5MzAxODMyMjVaMHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQI
# EwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3Nv
# ZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBD
# QSAyMDEwMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA5OGmTOe0ciEL
# eaLL1yR5vQ7VgtP97pwHB9KpbE51yMo1V/YBf2xK4OK9uT4XYDP/XE/HZveVU3Fa
# 4n5KWv64NmeFRiMMtY0Tz3cywBAY6GB9alKDRLemjkZrBxTzxXb1hlDcwUTIcVxR
# MTegCjhuje3XD9gmU3w5YQJ6xKr9cmmvHaus9ja+NSZk2pg7uhp7M62AW36MEByd
# Uv626GIl3GoPz130/o5Tz9bshVZN7928jaTjkY+yOSxRnOlwaQ3KNi1wjjHINSi9
# 47SHJMPgyY9+tVSP3PoFVZhtaDuaRr3tpK56KTesy+uDRedGbsoy1cCGMFxPLOJi
# ss254o2I5JasAUq7vnGpF1tnYN74kpEeHT39IM9zfUGaRnXNxF803RKJ1v2lIH1+
# /NmeRd+2ci/bfV+AutuqfjbsNkz2K26oElHovwUDo9Fzpk03dJQcNIIP8BDyt0cY
# 7afomXw/TNuvXsLz1dhzPUNOwTM5TI4CvEJoLhDqhFFG4tG9ahhaYQFzymeiXtco
# dgLiMxhy16cg8ML6EgrXY28MyTZki1ugpoMhXV8wdJGUlNi5UPkLiWHzNgY1GIRH
# 29wb0f2y1BzFa/ZcUlFdEtsluq9QBXpsxREdcu+N+VLEhReTwDwV2xo3xwgVGD94
# q0W29R6HXtqPnhZyacaue7e3PmriLq0CAwEAAaOCAd0wggHZMBIGCSsGAQQBgjcV
# AQQFAgMBAAEwIwYJKwYBBAGCNxUCBBYEFCqnUv5kxJq+gpE8RjUpzxD/LwTuMB0G
# A1UdDgQWBBSfpxVdAF5iXYP05dJlpxtTNRnpcjBcBgNVHSAEVTBTMFEGDCsGAQQB
# gjdMg30BATBBMD8GCCsGAQUFBwIBFjNodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20v
# cGtpb3BzL0RvY3MvUmVwb3NpdG9yeS5odG0wEwYDVR0lBAwwCgYIKwYBBQUHAwgw
# GQYJKwYBBAGCNxQCBAweCgBTAHUAYgBDAEEwCwYDVR0PBAQDAgGGMA8GA1UdEwEB
# /wQFMAMBAf8wHwYDVR0jBBgwFoAU1fZWy4/oolxiaNE9lJBb186aGMQwVgYDVR0f
# BE8wTTBLoEmgR4ZFaHR0cDovL2NybC5taWNyb3NvZnQuY29tL3BraS9jcmwvcHJv
# ZHVjdHMvTWljUm9vQ2VyQXV0XzIwMTAtMDYtMjMuY3JsMFoGCCsGAQUFBwEBBE4w
# TDBKBggrBgEFBQcwAoY+aHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3BraS9jZXJ0
# cy9NaWNSb29DZXJBdXRfMjAxMC0wNi0yMy5jcnQwDQYJKoZIhvcNAQELBQADggIB
# AJ1VffwqreEsH2cBMSRb4Z5yS/ypb+pcFLY+TkdkeLEGk5c9MTO1OdfCcTY/2mRs
# fNB1OW27DzHkwo/7bNGhlBgi7ulmZzpTTd2YurYeeNg2LpypglYAA7AFvonoaeC6
# Ce5732pvvinLbtg/SHUB2RjebYIM9W0jVOR4U3UkV7ndn/OOPcbzaN9l9qRWqveV
# tihVJ9AkvUCgvxm2EhIRXT0n4ECWOKz3+SmJw7wXsFSFQrP8DJ6LGYnn8AtqgcKB
# GUIZUnWKNsIdw2FzLixre24/LAl4FOmRsqlb30mjdAy87JGA0j3mSj5mO0+7hvoy
# GtmW9I/2kQH2zsZ0/fZMcm8Qq3UwxTSwethQ/gpY3UA8x1RtnWN0SCyxTkctwRQE
# cb9k+SS+c23Kjgm9swFXSVRk2XPXfx5bRAGOWhmRaw2fpCjcZxkoJLo4S5pu+yFU
# a2pFEUep8beuyOiJXk+d0tBMdrVXVAmxaQFEfnyhYWxz/gq77EFmPWn9y8FBSX5+
# k77L+DvktxW/tM4+pTFRhLy/AsGConsXHRWJjXD+57XQKBqJC4822rpM+Zv/Cuk0
# +CQ1ZyvgDbjmjJnW4SLq8CdCPSWU5nR0W2rRnj7tfqAxM328y+l7vzhwRNGQ8cir
# Ooo6CGJ/2XBjU02N7oJtpQUQwXEGahC0HVUzWLOhcGbyoYICyzCCAjQCAQEwgfih
# gdCkgc0wgcoxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYD
# VQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJTAj
# BgNVBAsTHE1pY3Jvc29mdCBBbWVyaWNhIE9wZXJhdGlvbnMxJjAkBgNVBAsTHVRo
# YWxlcyBUU1MgRVNOOjEyQkMtRTNBRS03NEVCMSUwIwYDVQQDExxNaWNyb3NvZnQg
# VGltZS1TdGFtcCBTZXJ2aWNloiMKAQEwBwYFKw4DAhoDFQAbcXaM7gsQxUvCAoZd
# 1gw3gUGA4KCBgzCBgKR+MHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5n
# dG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9y
# YXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwMA0G
# CSqGSIb3DQEBBQUAAgUA5t7XyTAiGA8yMDIyMDkyODIyMjUxM1oYDzIwMjIwOTI5
# MjIyNTEzWjB0MDoGCisGAQQBhFkKBAExLDAqMAoCBQDm3tfJAgEAMAcCAQACAguW
# MAcCAQACAhGnMAoCBQDm4ClJAgEAMDYGCisGAQQBhFkKBAIxKDAmMAwGCisGAQQB
# hFkKAwKgCjAIAgEAAgMHoSChCjAIAgEAAgMBhqAwDQYJKoZIhvcNAQEFBQADgYEA
# kgsxAGxAtbIfNbXBjZ4J6VHUdfuxd7AH4jaEuf79/+9aTKwUnyGXK1Vy5WWBsEYZ
# lLdtvUYPgwAQ9BMeQFMO2BcnmxQMhmTgGiLwQafzinLUcLguDdfaXqHfX5+RMwI7
# wSNvOzL4GlxeTMqNSBRZuXAGlsyrEQEf0FOwFqlc04IxggQNMIIECQIBATCBkzB8
# MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVk
# bW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1N
# aWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMAITMwAAAaEBhVWZuVRdigABAAAB
# oTANBglghkgBZQMEAgEFAKCCAUowGgYJKoZIhvcNAQkDMQ0GCyqGSIb3DQEJEAEE
# MC8GCSqGSIb3DQEJBDEiBCBH0Xe2vFisCIG0fqRLsPJJnODcNmGLBErKYLn8REQy
# 4TCB+gYLKoZIhvcNAQkQAi8xgeowgecwgeQwgb0EIOsIVPE6gYJoIIKOhHIF7UlJ
# Cswl4IJPISvOKInfjtCEMIGYMIGApH4wfDELMAkGA1UEBhMCVVMxEzARBgNVBAgT
# Cldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29m
# dCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENB
# IDIwMTACEzMAAAGhAYVVmblUXYoAAQAAAaEwIgQghcCaDI2YNxUleaxNkKaCtmLv
# aiRqALIbsXtqcoQ88zEwDQYJKoZIhvcNAQELBQAEggIAg36nKE2TvbZ8N9LK5gdT
# /jF57JiTR+M7DONdxpMhP7Bd/vT2qSM5FEr3HtyWxKIwE0JM+rNTvBaj449ygwo+
# DBom+FEA1Ka3jV0XD7J3kVKc0BFIrRYQoQnoCIe0k4M7+fq0Ahs7slnj10ThCNtc
# fOn+BTM0shpqaUayLxbRHWsUFr5GIECDdlRIMr4yLu+j+guiO/mCinqQ51v0hjyN
# Df49IZ91n1gEGSZakwjtU/0ZARf9Z8zUUo5kbN02GeeKB3odM8acYQCDbXQHX0Hf
# ZZqnKh/MJuqBVby+8KVxC30kai+7uRxvWhdTKidMK7fMAWUgM86hngY9AI5qbiZ6
# sFm6L0xIlRNgmmB03rJ015zdprnSIuz5kO4kjWRRJrwEHnenpAh5RtanRuDFrl2D
# X4SvQFe7KQ2rJmWflXlPjR8DddoCCfZP+lJc5wkrecb9vQUlWrHk4QT9wueUsoxL
# /EX3v35jRhejNRC4vNjOA/iMxyY4jpAa1W92f1h/hZ/CPQbrqtFDOKjtixFY+wkE
# h3B/KRc4OIhMEjV48SG1ZPcQzT/+urlB9sK5VN9JCc4XTGMqB+F/db25uiEje5vW
# 5LDgdPbWgYsUuqA34U+sBzlUUCMkki22bnIbn6yaq8uB3zRRWr+4IsFoShnwA4RW
# 5pEccxcu9upzLmctWqDAs9Y=
# SIG # End signature block
