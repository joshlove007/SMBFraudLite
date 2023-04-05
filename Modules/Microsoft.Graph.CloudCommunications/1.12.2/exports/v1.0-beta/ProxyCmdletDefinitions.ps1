
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
Invoke action addLargeGalleryView
.Description
Invoke action addLargeGalleryView
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	ClientContext = "785f4929-92ca-497b-863f-c778c77c9758"
}
Add-MgCommunicationCallLargeGalleryView -CallId $callId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPaths12Hh6NfCommunicationsCallsCallIdMicrosoftGraphAddlargegalleryviewPostRequestbodyContentApplicationJsonSchema
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAddLargeGalleryViewOperation
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/add-mgcommunicationcalllargegalleryview
#>
function Add-MgCommunicationCallLargeGalleryView {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAddLargeGalleryViewOperation])]
[CmdletBinding(DefaultParameterSetName='AddExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Add1', Mandatory)]
    [Parameter(ParameterSetName='AddExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='AddViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='AddViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Add1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='AddViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths12Hh6NfCommunicationsCallsCallIdMicrosoftGraphAddlargegalleryviewPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='AddExpanded1')]
    [Parameter(ParameterSetName='AddViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='AddExpanded1')]
    [Parameter(ParameterSetName='AddViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ClientContext},

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
            Add1 = 'Microsoft.Graph.CloudCommunications.private\Add-MgCommunicationCallLargeGalleryView_Add1';
            AddExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Add-MgCommunicationCallLargeGalleryView_AddExpanded1';
            AddViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Add-MgCommunicationCallLargeGalleryView_AddViaIdentity1';
            AddViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Add-MgCommunicationCallLargeGalleryView_AddViaIdentityExpanded1';
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
Invoke action clearUserPreferredPresence
.Description
Invoke action clearUserPreferredPresence

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/clear-mgcommunicationpresenceuserpreferredpresence
#>
function Clear-MgCommunicationPresenceUserPreferredPresence {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Clear', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Clear', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of presence
    ${PresenceId},

    [Parameter(ParameterSetName='ClearViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Clear = 'Microsoft.Graph.CloudCommunications.private\Clear-MgCommunicationPresenceUserPreferredPresence_Clear';
            ClearViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Clear-MgCommunicationPresenceUserPreferredPresence_ClearViaIdentity';
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
Invoke action clearPresence
.Description
Invoke action clearPresence

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1Ca0Rf4CommunicationsPresencesPresenceIdMicrosoftGraphClearpresencePostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/clear-mgcommunicationpresence
#>
function Clear-MgCommunicationPresence {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='ClearExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Clear', Mandatory)]
    [Parameter(ParameterSetName='ClearExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of presence
    ${PresenceId},

    [Parameter(ParameterSetName='ClearViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ClearViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Clear', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ClearViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Ca0Rf4CommunicationsPresencesPresenceIdMicrosoftGraphClearpresencePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='ClearExpanded')]
    [Parameter(ParameterSetName='ClearViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='ClearExpanded')]
    [Parameter(ParameterSetName='ClearViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${SessionId},

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
            Clear = 'Microsoft.Graph.CloudCommunications.private\Clear-MgCommunicationPresence_Clear';
            ClearExpanded = 'Microsoft.Graph.CloudCommunications.private\Clear-MgCommunicationPresence_ClearExpanded';
            ClearViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Clear-MgCommunicationPresence_ClearViaIdentity';
            ClearViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Clear-MgCommunicationPresence_ClearViaIdentityExpanded';
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
Get audioRoutingGroups from communications
.Description
Get audioRoutingGroups from communications
.Example
Import-Module Microsoft.Graph.CloudCommunications
Get-MgCommunicationCallAudioRoutingGroup -CallId $callId -AudioRoutingGroupId $audioRoutingGroupId
.Example
Import-Module Microsoft.Graph.CloudCommunications
Get-MgCommunicationCallAudioRoutingGroup -CallId $callId

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAudioRoutingGroup1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mgcommunicationcallaudioroutinggroup
#>
function Get-MgCommunicationCallAudioRoutingGroup {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAudioRoutingGroup1])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of audioRoutingGroup
    ${AudioRoutingGroupId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Filter items by property values
    ${Filter},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Skip the first n items
    ${Skip},

    [Parameter(ParameterSetName='List1')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Order items by property values
    ${Sort},

    [Parameter(ParameterSetName='List1')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Show only the first n items
    ${Top},

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

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Int32]
    # Sets the page size of results.
    ${PageSize},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # List all pages.
    ${All},

    [Parameter(ParameterSetName='List1')]
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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallAudioRoutingGroup_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallAudioRoutingGroup_GetViaIdentity';
            List1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallAudioRoutingGroup_List1';
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
Get contentSharingSessions from communications
.Description
Get contentSharingSessions from communications
.Example
Import-Module Microsoft.Graph.CloudCommunications
Get-MgCommunicationCallContentSharingSession -CallId $callId -ContentSharingSessionId $contentSharingSessionId
.Example
Import-Module Microsoft.Graph.CloudCommunications
Get-MgCommunicationCallContentSharingSession -CallId $callId

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphContentSharingSession
.Outputs
System.String
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mgcommunicationcallcontentsharingsession
#>
function Get-MgCommunicationCallContentSharingSession {
[OutputType([System.String], [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphContentSharingSession])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of contentSharingSession
    ${ContentSharingSessionId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Filter items by property values
    ${Filter},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Skip the first n items
    ${Skip},

    [Parameter(ParameterSetName='List')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Order items by property values
    ${Sort},

    [Parameter(ParameterSetName='List')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Show only the first n items
    ${Top},

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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallContentSharingSession_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallContentSharingSession_GetViaIdentity';
            List = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallContentSharingSession_List';
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
Get operations from communications
.Description
Get operations from communications
.Example
Import-Module Microsoft.Graph.CloudCommunications
Get-MgCommunicationCallOperation -CallId $callId -CommsOperationId $commsOperationId

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCommsOperation
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mgcommunicationcalloperation
#>
function Get-MgCommunicationCallOperation {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCommsOperation])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of commsOperation
    ${CommsOperationId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Filter items by property values
    ${Filter},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Skip the first n items
    ${Skip},

    [Parameter(ParameterSetName='List1')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Order items by property values
    ${Sort},

    [Parameter(ParameterSetName='List1')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Show only the first n items
    ${Top},

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

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Int32]
    # Sets the page size of results.
    ${PageSize},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # List all pages.
    ${All},

    [Parameter(ParameterSetName='List1')]
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
            Get1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallOperation_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallOperation_GetViaIdentity1';
            List1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallOperation_List1';
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
Get participants from communications
.Description
Get participants from communications
.Example
Import-Module Microsoft.Graph.CloudCommunications
Get-MgCommunicationCallParticipant -CallId $callId -ParticipantId $participantId
.Example
Import-Module Microsoft.Graph.CloudCommunications
Get-MgCommunicationCallParticipant -CallId $callId

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipant1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mgcommunicationcallparticipant
#>
function Get-MgCommunicationCallParticipant {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipant1])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of participant
    ${ParticipantId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Filter items by property values
    ${Filter},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Skip the first n items
    ${Skip},

    [Parameter(ParameterSetName='List1')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Order items by property values
    ${Sort},

    [Parameter(ParameterSetName='List1')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Show only the first n items
    ${Top},

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

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Int32]
    # Sets the page size of results.
    ${PageSize},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # List all pages.
    ${All},

    [Parameter(ParameterSetName='List1')]
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
            Get1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallParticipant_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallParticipant_GetViaIdentity1';
            List1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallParticipant_List1';
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
List of sessions involved in the call.
Peer-to-peer calls typically only have one session, whereas group calls typically have at least one session per participant.
Read-only.
Nullable.
.Description
List of sessions involved in the call.
Peer-to-peer calls typically only have one session, whereas group calls typically have at least one session per participant.
Read-only.
Nullable.
.Example
Import-Module Microsoft.Graph.CloudCommunications
Get-MgCommunicationCallRecordSession -CallRecordId $callRecordId -ExpandProperty "segments" 
.Example
Import-Module Microsoft.Graph.CloudCommunications
Get-MgCommunicationCallRecordSession -CallRecordId $callRecordId

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsSession
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mgcommunicationcallrecordsession
#>
function Get-MgCommunicationCallRecordSession {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsSession])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of callRecord
    ${CallRecordId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of session
    ${SessionId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Filter items by property values
    ${Filter},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Skip the first n items
    ${Skip},

    [Parameter(ParameterSetName='List')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Order items by property values
    ${Sort},

    [Parameter(ParameterSetName='List')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Show only the first n items
    ${Top},

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
            Get1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallRecordSession_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallRecordSession_GetViaIdentity1';
            List = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallRecordSession_List';
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
Get callRecords from communications
.Description
Get callRecords from communications
.Example
Import-Module Microsoft.Graph.CloudCommunications
Get-MgCommunicationCallRecord -CallRecordId $callRecordId
.Example
Import-Module Microsoft.Graph.CloudCommunications
Get-MgCommunicationCallRecord -CallRecordId $callRecordId
.Example
Import-Module Microsoft.Graph.CloudCommunications
Get-MgCommunicationCallRecord -CallRecordId $callRecordId -ExpandProperty "sessions(`$expand=segments)" 
.Example
Import-Module Microsoft.Graph.CloudCommunications
Get-MgCommunicationCallRecord -CallRecordId $callRecordId

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsCallRecord
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mgcommunicationcallrecord
#>
function Get-MgCommunicationCallRecord {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsCallRecord])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of callRecord
    ${CallRecordId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallRecord_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCallRecord_GetViaIdentity';
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
Get calls from communications
.Description
Get calls from communications
.Example
Import-Module Microsoft.Graph.CloudCommunications
Get-MgCommunicationCall -CallId $callId
.Example
Import-Module Microsoft.Graph.CloudCommunications
Get-MgCommunicationCall -CallId $callId

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCall1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mgcommunicationcall
#>
function Get-MgCommunicationCall {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCall1])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

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
            Get1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCall_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationCall_GetViaIdentity1';
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
The content stream of the alternative recording of a Microsoft Teams live event.
Read-only.
.Description
The content stream of the alternative recording of a Microsoft Teams live event.
Read-only.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mgcommunicationonlinemeetingalternativerecording
#>
function Get-MgCommunicationOnlineMeetingAlternativeRecording {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(Mandatory)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Path to write output file to
    ${OutFile},

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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingAlternativeRecording_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingAlternativeRecording_GetViaIdentity';
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
List of attendance records of an attendance report.
Read-only.
.Description
List of attendance records of an attendance report.
Read-only.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttendanceRecord1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mgcommunicationonlinemeetingattendancereportattendancerecord
#>
function Get-MgCommunicationOnlineMeetingAttendanceReportAttendanceRecord {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttendanceRecord1])]
[CmdletBinding(DefaultParameterSetName='List2', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='Get2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of attendanceRecord
    ${AttendanceRecordId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of meetingAttendanceReport
    ${MeetingAttendanceReportId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='Get2', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Parameter(ParameterSetName='List2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity2', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(ParameterSetName='List1')]
    [Parameter(ParameterSetName='List2')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Filter items by property values
    ${Filter},

    [Parameter(ParameterSetName='List1')]
    [Parameter(ParameterSetName='List2')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

    [Parameter(ParameterSetName='List1')]
    [Parameter(ParameterSetName='List2')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Skip the first n items
    ${Skip},

    [Parameter(ParameterSetName='List1')]
    [Parameter(ParameterSetName='List2')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Order items by property values
    ${Sort},

    [Parameter(ParameterSetName='List1')]
    [Parameter(ParameterSetName='List2')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Show only the first n items
    ${Top},

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

    [Parameter(ParameterSetName='List1')]
    [Parameter(ParameterSetName='List2')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Int32]
    # Sets the page size of results.
    ${PageSize},

    [Parameter(ParameterSetName='List1')]
    [Parameter(ParameterSetName='List2')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # List all pages.
    ${All},

    [Parameter(ParameterSetName='List1')]
    [Parameter(ParameterSetName='List2')]
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
            Get1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingAttendanceReportAttendanceRecord_Get1';
            Get2 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingAttendanceReportAttendanceRecord_Get2';
            GetViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingAttendanceReportAttendanceRecord_GetViaIdentity1';
            GetViaIdentity2 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingAttendanceReportAttendanceRecord_GetViaIdentity2';
            List1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingAttendanceReportAttendanceRecord_List1';
            List2 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingAttendanceReportAttendanceRecord_List2';
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
The attendance reports of an online meeting.
Read-only.
.Description
The attendance reports of an online meeting.
Read-only.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingAttendanceReport1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mgcommunicationonlinemeetingattendancereport
#>
function Get-MgCommunicationOnlineMeetingAttendanceReport {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingAttendanceReport1])]
[CmdletBinding(DefaultParameterSetName='Get2', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of meetingAttendanceReport
    ${MeetingAttendanceReportId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='Get2', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity2', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Filter items by property values
    ${Filter},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Skip the first n items
    ${Skip},

    [Parameter(ParameterSetName='List1')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Order items by property values
    ${Sort},

    [Parameter(ParameterSetName='List1')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Show only the first n items
    ${Top},

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

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Int32]
    # Sets the page size of results.
    ${PageSize},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # List all pages.
    ${All},

    [Parameter(ParameterSetName='List1')]
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
            Get1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingAttendanceReport_Get1';
            Get2 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingAttendanceReport_Get2';
            GetViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingAttendanceReport_GetViaIdentity1';
            GetViaIdentity2 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingAttendanceReport_GetViaIdentity2';
            List1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingAttendanceReport_List1';
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
The content stream of the attendee report of a Teams live event.
Read-only.
.Description
The content stream of the attendee report of a Teams live event.
Read-only.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mgcommunicationonlinemeetingattendeereport
#>
function Get-MgCommunicationOnlineMeetingAttendeeReport {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(Mandatory)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Path to write output file to
    ${OutFile},

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
            Get1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingAttendeeReport_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingAttendeeReport_GetViaIdentity1';
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
The content stream of the recording of a Teams live event.
Read-only.
.Description
The content stream of the recording of a Teams live event.
Read-only.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mgcommunicationonlinemeetingrecording
#>
function Get-MgCommunicationOnlineMeetingRecording {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(Mandatory)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Path to write output file to
    ${OutFile},

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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingRecording_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingRecording_GetViaIdentity';
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
Custom registration questions.
.Description
Custom registration questions.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrationQuestion
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mgcommunicationonlinemeetingregistrationcustomquestion
#>
function Get-MgCommunicationOnlineMeetingRegistrationCustomQuestion {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrationQuestion])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of meetingRegistrationQuestion
    ${MeetingRegistrationQuestionId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Filter items by property values
    ${Filter},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Skip the first n items
    ${Skip},

    [Parameter(ParameterSetName='List')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Order items by property values
    ${Sort},

    [Parameter(ParameterSetName='List')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Show only the first n items
    ${Top},

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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingRegistrationCustomQuestion_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingRegistrationCustomQuestion_GetViaIdentity';
            List = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingRegistrationCustomQuestion_List';
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
The registration that has been enabled for an online meeting.
One online meeting can only have one registration enabled.
.Description
The registration that has been enabled for an online meeting.
One online meeting can only have one registration enabled.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistration
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mgcommunicationonlinemeetingregistration
#>
function Get-MgCommunicationOnlineMeetingRegistration {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistration])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingRegistration_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingRegistration_GetViaIdentity';
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
A field representing the content of the transcript.
Read-only.
.Description
A field representing the content of the transcript.
Read-only.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mgcommunicationonlinemeetingtranscriptcontent
#>
function Get-MgCommunicationOnlineMeetingTranscriptContent {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of callTranscript
    ${CallTranscriptId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(Mandatory)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Path to write output file to
    ${OutFile},

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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingTranscriptContent_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingTranscriptContent_GetViaIdentity';
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
The transcripts of an online meeting.
Read-only.
.Description
The transcripts of an online meeting.
Read-only.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallTranscript
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mgcommunicationonlinemeetingtranscript
#>
function Get-MgCommunicationOnlineMeetingTranscript {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallTranscript])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of callTranscript
    ${CallTranscriptId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Filter items by property values
    ${Filter},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Skip the first n items
    ${Skip},

    [Parameter(ParameterSetName='List')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Order items by property values
    ${Sort},

    [Parameter(ParameterSetName='List')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Show only the first n items
    ${Top},

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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingTranscript_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingTranscript_GetViaIdentity';
            List = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingTranscript_List';
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
Get virtualAppointment from communications
.Description
Get virtualAppointment from communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphVirtualAppointment
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mgcommunicationonlinemeetingvirtualappointment
#>
function Get-MgCommunicationOnlineMeetingVirtualAppointment {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphVirtualAppointment])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingVirtualAppointment_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeetingVirtualAppointment_GetViaIdentity';
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
Get onlineMeetings from communications
.Description
Get onlineMeetings from communications
.Example
Import-Module Microsoft.Graph.CloudCommunications
Get-MgCommunicationOnlineMeeting -Filter "VideoTeleconferenceId eq '123456789'" 

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1Pc6SxrCommunicationsOnlinemeetingsMicrosoftGraphCreateorgetPostRequestbodyContentApplicationJsonSchema1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mgcommunicationonlinemeeting
#>
function Get-MgCommunicationOnlineMeeting {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting1])]
[CmdletBinding(DefaultParameterSetName='GetExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Get2')]
    [Parameter(ParameterSetName='GetViaIdentity1')]
    [Parameter(ParameterSetName='List1')]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter(ParameterSetName='Get2')]
    [Parameter(ParameterSetName='GetViaIdentity1')]
    [Parameter(ParameterSetName='List1')]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Filter items by property values
    ${Filter},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Skip the first n items
    ${Skip},

    [Parameter(ParameterSetName='List1')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Order items by property values
    ${Sort},

    [Parameter(ParameterSetName='List1')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Show only the first n items
    ${Top},

    [Parameter(ParameterSetName='Get3', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Pc6SxrCommunicationsOnlinemeetingsMicrosoftGraphCreateorgetPostRequestbodyContentApplicationJsonSchema1]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphChatInfo]
    # chatInfo
    # To construct, please use Get-Help -Online and see NOTES section for CHATINFO properties and create a hash table.
    ${ChatInfo},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${EndDateTime},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ExternalId},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingParticipants1]
    # meetingParticipants
    # To construct, please use Get-Help -Online and see NOTES section for PARTICIPANTS properties and create a hash table.
    ${Participants},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${StartDateTime},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Subject},

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

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Int32]
    # Sets the page size of results.
    ${PageSize},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # List all pages.
    ${All},

    [Parameter(ParameterSetName='List1')]
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
            Get2 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeeting_Get2';
            Get3 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeeting_Get3';
            GetExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeeting_GetExpanded1';
            GetViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeeting_GetViaIdentity1';
            List1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationOnlineMeeting_List1';
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
Invoke action getPresencesByUserId
.Description
Invoke action getPresencesByUserId
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	Ids = @(
		"fa8bf3dc-eca7-46b7-bad1-db199b62afc3"
		"66825e03-7ef5-42da-9069-724602c31f6b"
	)
}
Get-MgCommunicationPresenceByUserId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths10WpgkzCommunicationsMicrosoftGraphGetpresencesbyuseridPostRequestbodyContentApplicationJsonSchema
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPresence1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mgcommunicationpresencebyuserid
#>
function Get-MgCommunicationPresenceByUserId {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPresence1])]
[CmdletBinding(DefaultParameterSetName='GetExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths10WpgkzCommunicationsMicrosoftGraphGetpresencesbyuseridPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Ids},

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
            Get1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationPresenceByUserId_Get1';
            GetExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationPresenceByUserId_GetExpanded1';
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
Get presences from communications
.Description
Get presences from communications
.Example
Import-Module Microsoft.Graph.CloudCommunications
Get-MgCommunicationPresence -PresenceId $presenceId

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPresence1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mgcommunicationpresence
#>
function Get-MgCommunicationPresence {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPresence1])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of presence
    ${PresenceId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Filter items by property values
    ${Filter},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Skip the first n items
    ${Skip},

    [Parameter(ParameterSetName='List1')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Order items by property values
    ${Sort},

    [Parameter(ParameterSetName='List1')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Show only the first n items
    ${Top},

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

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Int32]
    # Sets the page size of results.
    ${PageSize},

    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # List all pages.
    ${All},

    [Parameter(ParameterSetName='List1')]
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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationPresence_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationPresence_GetViaIdentity';
            List1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgCommunicationPresence_List1';
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
The content stream of the alternative recording of a Microsoft Teams live event.
Read-only.
.Description
The content stream of the alternative recording of a Microsoft Teams live event.
Read-only.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mguseronlinemeetingalternativerecording
#>
function Get-MgUserOnlineMeetingAlternativeRecording {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(Mandatory)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Path to write output file to
    ${OutFile},

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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingAlternativeRecording_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingAlternativeRecording_GetViaIdentity';
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
List of attendance records of an attendance report.
Read-only.
.Description
List of attendance records of an attendance report.
Read-only.
.Example
Import-Module Microsoft.Graph.CloudCommunications
# A UPN can also be used as -UserId.
Get-MgUserOnlineMeetingAttendanceReportAttendanceRecord -UserId $userId -OnlineMeetingId $onlineMeetingId -MeetingAttendanceReportId $meetingAttendanceReportId

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttendanceRecord1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mguseronlinemeetingattendancereportattendancerecord
#>
function Get-MgUserOnlineMeetingAttendanceReportAttendanceRecord {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttendanceRecord1])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of attendanceRecord
    ${AttendanceRecordId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of meetingAttendanceReport
    ${MeetingAttendanceReportId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(ParameterSetName='List')]
    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Filter items by property values
    ${Filter},

    [Parameter(ParameterSetName='List')]
    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

    [Parameter(ParameterSetName='List')]
    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Skip the first n items
    ${Skip},

    [Parameter(ParameterSetName='List')]
    [Parameter(ParameterSetName='List1')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Order items by property values
    ${Sort},

    [Parameter(ParameterSetName='List')]
    [Parameter(ParameterSetName='List1')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Show only the first n items
    ${Top},

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
    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Int32]
    # Sets the page size of results.
    ${PageSize},

    [Parameter(ParameterSetName='List')]
    [Parameter(ParameterSetName='List1')]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # List all pages.
    ${All},

    [Parameter(ParameterSetName='List')]
    [Parameter(ParameterSetName='List1')]
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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingAttendanceReportAttendanceRecord_Get';
            Get1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingAttendanceReportAttendanceRecord_Get1';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingAttendanceReportAttendanceRecord_GetViaIdentity';
            GetViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingAttendanceReportAttendanceRecord_GetViaIdentity1';
            List = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingAttendanceReportAttendanceRecord_List';
            List1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingAttendanceReportAttendanceRecord_List1';
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
The attendance reports of an online meeting.
Read-only.
.Description
The attendance reports of an online meeting.
Read-only.
.Example
Import-Module Microsoft.Graph.CloudCommunications
# A UPN can also be used as -UserId.
Get-MgUserOnlineMeetingAttendanceReport -UserId $userId -OnlineMeetingId $onlineMeetingId -MeetingAttendanceReportId $meetingAttendanceReportId -ExpandProperty "attendanceRecords" 
.Example
Import-Module Microsoft.Graph.CloudCommunications
# A UPN can also be used as -UserId.
Get-MgUserOnlineMeetingAttendanceReport -UserId $userId -OnlineMeetingId $onlineMeetingId

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingAttendanceReport1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mguseronlinemeetingattendancereport
#>
function Get-MgUserOnlineMeetingAttendanceReport {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingAttendanceReport1])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of meetingAttendanceReport
    ${MeetingAttendanceReportId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Filter items by property values
    ${Filter},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Skip the first n items
    ${Skip},

    [Parameter(ParameterSetName='List')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Order items by property values
    ${Sort},

    [Parameter(ParameterSetName='List')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Show only the first n items
    ${Top},

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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingAttendanceReport_Get';
            Get1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingAttendanceReport_Get1';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingAttendanceReport_GetViaIdentity';
            GetViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingAttendanceReport_GetViaIdentity1';
            List = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingAttendanceReport_List';
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
The content stream of the attendee report of a Teams live event.
Read-only.
.Description
The content stream of the attendee report of a Teams live event.
Read-only.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mguseronlinemeetingattendeereport
#>
function Get-MgUserOnlineMeetingAttendeeReport {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(Mandatory)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Path to write output file to
    ${OutFile},

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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingAttendeeReport_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingAttendeeReport_GetViaIdentity';
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
The content stream of the recording of a Teams live event.
Read-only.
.Description
The content stream of the recording of a Teams live event.
Read-only.
.Example
Import-Module Microsoft.Graph.CloudCommunications
# A UPN can also be used as -UserId.
Get-MgUserOnlineMeetingRecording -UserId $userId -OnlineMeetingId $onlineMeetingId

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mguseronlinemeetingrecording
#>
function Get-MgUserOnlineMeetingRecording {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(Mandatory)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Path to write output file to
    ${OutFile},

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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingRecording_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingRecording_GetViaIdentity';
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
Custom registration questions.
.Description
Custom registration questions.
.Example
Import-Module Microsoft.Graph.CloudCommunications
# A UPN can also be used as -UserId.
Get-MgUserOnlineMeetingRegistrationCustomQuestion -UserId $userId -OnlineMeetingId $onlineMeetingId -MeetingRegistrationQuestionId $meetingRegistrationQuestionId

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrationQuestion
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mguseronlinemeetingregistrationcustomquestion
#>
function Get-MgUserOnlineMeetingRegistrationCustomQuestion {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrationQuestion])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of meetingRegistrationQuestion
    ${MeetingRegistrationQuestionId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Filter items by property values
    ${Filter},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Skip the first n items
    ${Skip},

    [Parameter(ParameterSetName='List')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Order items by property values
    ${Sort},

    [Parameter(ParameterSetName='List')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Show only the first n items
    ${Top},

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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingRegistrationCustomQuestion_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingRegistrationCustomQuestion_GetViaIdentity';
            List = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingRegistrationCustomQuestion_List';
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
The registration that has been enabled for an online meeting.
One online meeting can only have one registration enabled.
.Description
The registration that has been enabled for an online meeting.
One online meeting can only have one registration enabled.
.Example
Import-Module Microsoft.Graph.CloudCommunications
# A UPN can also be used as -UserId.
Get-MgUserOnlineMeetingRegistration -UserId $userId -OnlineMeetingId $onlineMeetingId
.Example
Import-Module Microsoft.Graph.CloudCommunications
# A UPN can also be used as -UserId.
Get-MgUserOnlineMeetingRegistration -UserId $userId -OnlineMeetingId $onlineMeetingId -ExpandProperty "microsoft.graph.meetingRegistration/customQuestions" 

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistration
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mguseronlinemeetingregistration
#>
function Get-MgUserOnlineMeetingRegistration {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistration])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingRegistration_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingRegistration_GetViaIdentity';
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
A field representing the content of the transcript.
Read-only.
.Description
A field representing the content of the transcript.
Read-only.
.Example
Import-Module Microsoft.Graph.CloudCommunications
Get-MgUserOnlineMeetingTranscriptContent -UserId $userId -OnlineMeetingId $onlineMeetingId -CallTranscriptId $callTranscriptId
.Example
Import-Module Microsoft.Graph.CloudCommunications
Get-MgUserOnlineMeetingTranscriptContent -UserId $userId -OnlineMeetingId $onlineMeetingId -CallTranscriptId $callTranscriptId -Format "text/vtt" 
.Example
Import-Module Microsoft.Graph.CloudCommunications
Get-MgUserOnlineMeetingTranscriptContent -UserId $userId -OnlineMeetingId $onlineMeetingId -CallTranscriptId $callTranscriptId -Format "text/vtt" 
.Example
Import-Module Microsoft.Graph.CloudCommunications
Get-MgUserOnlineMeetingTranscriptContent -UserId $userId -OnlineMeetingId $onlineMeetingId -CallTranscriptId $callTranscriptId

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mguseronlinemeetingtranscriptcontent
#>
function Get-MgUserOnlineMeetingTranscriptContent {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of callTranscript
    ${CallTranscriptId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(Mandatory)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Path to write output file to
    ${OutFile},

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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingTranscriptContent_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingTranscriptContent_GetViaIdentity';
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
The transcripts of an online meeting.
Read-only.
.Description
The transcripts of an online meeting.
Read-only.
.Example
Import-Module Microsoft.Graph.CloudCommunications
Get-MgUserOnlineMeetingTranscript -UserId $userId -OnlineMeetingId $onlineMeetingId -CallTranscriptId $callTranscriptId
.Example
Import-Module Microsoft.Graph.CloudCommunications
Get-MgUserOnlineMeetingTranscript -UserId $userId -OnlineMeetingId $onlineMeetingId

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallTranscript
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mguseronlinemeetingtranscript
#>
function Get-MgUserOnlineMeetingTranscript {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallTranscript])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of callTranscript
    ${CallTranscriptId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Filter items by property values
    ${Filter},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Skip the first n items
    ${Skip},

    [Parameter(ParameterSetName='List')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Order items by property values
    ${Sort},

    [Parameter(ParameterSetName='List')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Show only the first n items
    ${Top},

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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingTranscript_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingTranscript_GetViaIdentity';
            List = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingTranscript_List';
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
Get virtualAppointment from users
.Description
Get virtualAppointment from users

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphVirtualAppointment
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mguseronlinemeetingvirtualappointment
#>
function Get-MgUserOnlineMeetingVirtualAppointment {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphVirtualAppointment])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingVirtualAppointment_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeetingVirtualAppointment_GetViaIdentity';
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
Get onlineMeetings from users
.Description
Get onlineMeetings from users

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mguseronlinemeeting
#>
function Get-MgUserOnlineMeeting {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting1])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Filter items by property values
    ${Filter},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String]
    # Search items by search phrases
    ${Search},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Skip the first n items
    ${Skip},

    [Parameter(ParameterSetName='List')]
    [Alias('OrderBy')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Order items by property values
    ${Sort},

    [Parameter(ParameterSetName='List')]
    [Alias('Limit')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.Int32]
    # Show only the first n items
    ${Top},

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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeeting_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeeting_GetViaIdentity';
            List = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserOnlineMeeting_List';
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
Get presence from users
.Description
Get presence from users
.Example
Import-Module Microsoft.Graph.CloudCommunications
Get-MgUserPresence -UserId $userId
.Example
Import-Module Microsoft.Graph.CloudCommunications
# A UPN can also be used as -UserId.
Get-MgUserPresence -UserId $userId

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPresence1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/get-mguserpresence
#>
function Get-MgUserPresence {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPresence1])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('Expand')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Expand related entities
    ${ExpandProperty},

    [Parameter()]
    [Alias('Select')]
    [Microsoft.Graph.PowerShell.Category('Query')]
    [System.String[]]
    # Select properties to be returned
    ${Property},

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
            Get = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserPresence_Get';
            GetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Get-MgUserPresence_GetViaIdentity';
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
Invoke action answer
.Description
Invoke action answer
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	CallbackUri = "https://bot.contoso.com/api/calls"
	AcceptedModalities = @(
		"audio"
	)
	MediaConfig = @{
		"@odata.type" = "#microsoft.graph.appHostedMediaConfig"
		Blob = "<Media Session Configuration Blob>"
	}
}
Invoke-MgAnswerCommunicationCall -CallId $callId -BodyParameter $params
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	CallbackUri = "callbackUri-value"
	MediaConfig = @{
		"@odata.type" = "#microsoft.graph.appHostedMediaConfig"
		Blob = "<Media Session Configuration Blob>"
	}
	AcceptedModalities = @(
		"audio"
	)
	CallOptions = @{
		"@odata.type" = "#microsoft.graph.incomingCallOptions"
		IsContentSharingNotificationEnabled = $true
	}
	ParticipantCapacity = 200
}
Invoke-MgAnswerCommunicationCall -CallId $callId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPathsQvpqn4CommunicationsCallsCallIdMicrosoftGraphAnswerPostRequestbodyContentApplicationJsonSchema1
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/invoke-mganswercommunicationcall
#>
function Invoke-MgAnswerCommunicationCall {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='AnswerExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Answer1', Mandatory)]
    [Parameter(ParameterSetName='AnswerExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='AnswerViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='AnswerViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Answer1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='AnswerViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsQvpqn4CommunicationsCallsCallIdMicrosoftGraphAnswerPostRequestbodyContentApplicationJsonSchema1]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='AnswerExpanded1')]
    [Parameter(ParameterSetName='AnswerViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${AcceptedModalities},

    [Parameter(ParameterSetName='AnswerExpanded1')]
    [Parameter(ParameterSetName='AnswerViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='AnswerExpanded1')]
    [Parameter(ParameterSetName='AnswerViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIncomingCallOptions]))]
    [System.Collections.Hashtable]
    # incomingCallOptions
    ${CallOptions},

    [Parameter(ParameterSetName='AnswerExpanded1')]
    [Parameter(ParameterSetName='AnswerViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${CallbackUri},

    [Parameter(ParameterSetName='AnswerExpanded1')]
    [Parameter(ParameterSetName='AnswerViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMediaConfig1]
    # mediaConfig
    # To construct, please use Get-Help -Online and see NOTES section for MEDIACONFIG properties and create a hash table.
    ${MediaConfig},

    [Parameter(ParameterSetName='AnswerExpanded1')]
    [Parameter(ParameterSetName='AnswerViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${ParticipantCapacity},

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
            Answer1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgAnswerCommunicationCall_Answer1';
            AnswerExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgAnswerCommunicationCall_AnswerExpanded1';
            AnswerViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgAnswerCommunicationCall_AnswerViaIdentity1';
            AnswerViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgAnswerCommunicationCall_AnswerViaIdentityExpanded1';
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
Invoke action createOrGet
.Description
Invoke action createOrGet

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1Pc6SxrCommunicationsOnlinemeetingsMicrosoftGraphCreateorgetPostRequestbodyContentApplicationJsonSchema1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/invoke-mgcreateorgetcommunicationonlinemeeting
#>
function Invoke-MgCreateOrGetCommunicationOnlineMeeting {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded3', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create3', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Pc6SxrCommunicationsOnlinemeetingsMicrosoftGraphCreateorgetPostRequestbodyContentApplicationJsonSchema1]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded3')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded3')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphChatInfo]
    # chatInfo
    # To construct, please use Get-Help -Online and see NOTES section for CHATINFO properties and create a hash table.
    ${ChatInfo},

    [Parameter(ParameterSetName='CreateExpanded3')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${EndDateTime},

    [Parameter(ParameterSetName='CreateExpanded3')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ExternalId},

    [Parameter(ParameterSetName='CreateExpanded3')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingParticipants1]
    # meetingParticipants
    # To construct, please use Get-Help -Online and see NOTES section for PARTICIPANTS properties and create a hash table.
    ${Participants},

    [Parameter(ParameterSetName='CreateExpanded3')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${StartDateTime},

    [Parameter(ParameterSetName='CreateExpanded3')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Subject},

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
            Create3 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgCreateOrGetCommunicationOnlineMeeting_Create3';
            CreateExpanded3 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgCreateOrGetCommunicationOnlineMeeting_CreateExpanded3';
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
Invoke action invite
.Description
Invoke action invite
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	Participants = @(
		@{
			"@odata.type" = "#microsoft.graph.invitationParticipantInfo"
			ReplacesCallId = "a7ebfb2d-871e-419c-87af-27290b22e8db"
			Identity = @{
				"@odata.type" = "#microsoft.graph.identitySet"
				User = @{
					"@odata.type" = "#microsoft.graph.identity"
					Id = "278405a3-f568-4b3e-b684-009193463064"
					IdentityProvider = "AAD"
				}
			}
		}
	)
	ClientContext = "f2fa86af-3c51-4bc2-8fc0-475452d9764f"
}
Invoke-MgInviteCommunicationCallParticipant -CallId $callId -BodyParameter $params
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	Participants = @(
		@{
			"@odata.type" = "#microsoft.graph.invitationParticipantInfo"
			ReplacesCallId = "a7ebfb2d-871e-419c-87af-27290b22e8db"
			Identity = @{
				"@odata.type" = "#microsoft.graph.identitySet"
				User = @{
					"@odata.type" = "#microsoft.graph.identity"
					Id = "278405a3-f568-4b3e-b684-009193463064"
					IdentityProvider = "AAD"
				}
			}
		}
	)
	ClientContext = "f2fa86af-3c51-4bc2-8fc0-475452d9764f"
}
Invoke-MgInviteCommunicationCallParticipant -CallId $callId -BodyParameter $params
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	Participants = @(
		@{
			"@odata.type" = "#microsoft.graph.invitationParticipantInfo"
			ReplacesCallId = "a7ebfb2d-871e-419c-87af-27290b22e8db"
			Identity = @{
				"@odata.type" = "#microsoft.graph.identitySet"
				User = @{
					"@odata.type" = "#microsoft.graph.identity"
					Id = "278405a3-f568-4b3e-b684-009193463064"
					IdentityProvider = "AAD"
				}
			}
		}
	)
	ClientContext = "f2fa86af-3c51-4bc2-8fc0-475452d9764f"
}
Invoke-MgInviteCommunicationCallParticipant -CallId $callId -BodyParameter $params
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	Participants = @(
		@{
			"@odata.type" = "#microsoft.graph.invitationParticipantInfo"
			Identity = @{
				"@odata.type" = "#microsoft.graph.identitySet"
				Phone = @{
					"@odata.type" = "#microsoft.graph.identity"
					Id = "+12345678901"
				}
			}
		}
	)
	ClientContext = "f2fa86af-3c51-4bc2-8fc0-475452d9764f"
}
Invoke-MgInviteCommunicationCallParticipant -CallId $callId -BodyParameter $params
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	Participants = @(
		@{
			"@odata.type" = "#microsoft.graph.invitationParticipantInfo"
			ReplacesCallId = "a7ebfb2d-871e-419c-87af-27290b22e8db"
			Identity = @{
				"@odata.type" = "#microsoft.graph.identitySet"
				User = @{
					"@odata.type" = "#microsoft.graph.identity"
					Id = "7e1b4346-85a6-4bdd-abe3-d11c5d420efe"
					IdentityProvider = "AAD"
				}
			}
		}
	)
	ClientContext = "f2fa86af-3c51-4bc2-8fc0-475452d9764f"
}
Invoke-MgInviteCommunicationCallParticipant -CallId $callId -BodyParameter $params
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	Participants = @(
		@{
			"@odata.type" = "#microsoft.graph.invitationParticipantInfo"
			ReplacesCallId = "a7ebfb2d-871e-419c-87af-27290b22e8db"
			ParticipantId = "7d501bf1-5ee4-4605-ba92-0ae4513c611c"
			Identity = @{
				"@odata.type" = "#microsoft.graph.identitySet"
				User = @{
					"@odata.type" = "#microsoft.graph.identity"
					Id = "682b6c37-0729-4fab-ace6-d730d5d9137e"
					IdentityProvider = "AAD"
				}
			}
		}
	)
	ClientContext = "f2fa86af-3c51-4bc2-8fc0-475452d9764f"
}
Invoke-MgInviteCommunicationCallParticipant -CallId $callId -BodyParameter $params
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	Participants = @(
		@{
			"@odata.type" = "#microsoft.graph.invitationParticipantInfo"
			ReplacesCallId = "a7ebfb2d-871e-419c-87af-27290b22e8db"
			Identity = @{
				"@odata.type" = "#microsoft.graph.identitySet"
				User = @{
					"@odata.type" = "#microsoft.graph.identity"
					Id = "7e1b4346-85a6-4bdd-abe3-d11c5d420efe"
					IdentityProvider = "AAD"
				}
			}
		}
		@{
			"@odata.type" = "#microsoft.graph.invitationParticipantInfo"
			ReplacesCallId = "a7ebfb2d-871e-419c-87af-27290b22e8db"
			Identity = @{
				"@odata.type" = "#microsoft.graph.identitySet"
				User = @{
					"@odata.type" = "#microsoft.graph.identity"
					Id = "1e126418-44a0-4a94-a6f8-0efe1ad71acb"
					IdentityProvider = "AAD"
				}
			}
		}
	)
	ClientContext = "f2fa86af-3c51-4bc2-8fc0-475452d9764f"
}
Invoke-MgInviteCommunicationCallParticipant -CallId $callId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1Bh76WaCommunicationsCallsCallIdParticipantsMicrosoftGraphInvitePostRequestbodyContentApplicationJsonSchema1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInviteParticipantsOperation1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/invoke-mginvitecommunicationcallparticipant
#>
function Invoke-MgInviteCommunicationCallParticipant {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInviteParticipantsOperation1])]
[CmdletBinding(DefaultParameterSetName='InviteExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Invite1', Mandatory)]
    [Parameter(ParameterSetName='InviteExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='InviteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='InviteViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Invite1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='InviteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Bh76WaCommunicationsCallsCallIdParticipantsMicrosoftGraphInvitePostRequestbodyContentApplicationJsonSchema1]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='InviteExpanded1')]
    [Parameter(ParameterSetName='InviteViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='InviteExpanded1')]
    [Parameter(ParameterSetName='InviteViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ClientContext},

    [Parameter(ParameterSetName='InviteExpanded1')]
    [Parameter(ParameterSetName='InviteViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInvitationParticipantInfo1[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for PARTICIPANTS properties and create a hash table.
    ${Participants},

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
            Invite1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgInviteCommunicationCallParticipant_Invite1';
            InviteExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgInviteCommunicationCallParticipant_InviteExpanded1';
            InviteViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgInviteCommunicationCallParticipant_InviteViaIdentity1';
            InviteViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgInviteCommunicationCallParticipant_InviteViaIdentityExpanded1';
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
Invoke action keepAlive
.Description
Invoke action keepAlive
.Example
Import-Module Microsoft.Graph.CloudCommunications
Invoke-MgKeepCommunicationCallAlive -CallId $callId

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/invoke-mgkeepcommunicationcallalive
#>
function Invoke-MgKeepCommunicationCallAlive {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Keep1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Keep1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='KeepViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Keep1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgKeepCommunicationCallAlive_Keep1';
            KeepViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgKeepCommunicationCallAlive_KeepViaIdentity1';
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
Invoke action logTeleconferenceDeviceQuality
.Description
Invoke action logTeleconferenceDeviceQuality
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	Quality = @{
		"@odata.type" = "#microsoft.graph.teleconferenceDeviceQuality"
		CallChainId = "0622673d-9f69-49b3-9d4f-5ec64f42ecce"
		ParticipantId = "ea078406-b5d4-4d3c-b85e-90103dcec7f6"
		MediaLegId = "bd9ee398-4b9d-42c7-8b8d-4e8efad9435f"
		DeviceName = "TestAgent"
		DeviceDescription = "TestDescription"
		MediaQualityList = @(
			@{
				"@odata.type" = "#microsoft.graph.teleconferenceDeviceAudioQuality"
				ChannelIndex = 1
				MediaDuration = "PT20M"
				NetworkLinkSpeedInBytes = 13000
				LocalIPAddress = "127.0.0.1"
				LocalPort = 6300
				RemoteIPAddress = "102.1.1.101"
				RemotePort = 6301
				InboundPackets = 5500
				OutboundPackets = 5400
				AverageInboundPacketLossRateInPercentage = 0.01
				AverageOutboundPacketLossRateInPercentage = 0.02
				MaximumInboundPacketLossRateInPercentage = 0.05
				MaximumOutboundPacketLossRateInPercentage = 0.06
				AverageInboundRoundTripDelay = "PT0.03S"
				AverageOutboundRoundTripDelay = "PT0.04S"
				MaximumInboundRoundTripDelay = "PT0.13S"
				MaximumOutboundRoundTripDelay = "PT0.14S"
				AverageInboundJitter = "PT0.01S"
				AverageOutboundJitter = "PT0.015S"
				MaximumInboundJitter = "PT0.023S"
				MaximumOutboundJitter = "PT0.024S"
			}
			@{
				"@odata.type" = "#microsoft.graph.teleconferenceDeviceVideoQuality"
				ChannelIndex = 1
				MediaDuration = "PT20M"
				NetworkLinkSpeedInBytes = 13000
				LocalIPAddress = "127.0.0.1"
				LocalPort = 6300
				RemoteIPAddress = "102.1.1.101"
				RemotePort = 6301
				InboundPackets = 5500
				OutboundPackets = 5400
				AverageInboundPacketLossRateInPercentage = 0.01
				AverageOutboundPacketLossRateInPercentage = 0.02
				MaximumInboundPacketLossRateInPercentage = 0.05
				MaximumOutboundPacketLossRateInPercentage = 0.06
				AverageInboundRoundTripDelay = "PT0.03S"
				AverageOutboundRoundTripDelay = "PT0.04S"
				MaximumInboundRoundTripDelay = "PT0.13S"
				MaximumOutboundRoundTripDelay = "PT0.14S"
				AverageInboundJitter = "PT0.01S"
				AverageOutboundJitter = "PT0.015S"
				MaximumInboundJitter = "PT0.023S"
				MaximumOutboundJitter = "PT0.024S"
			}
			@{
				"@odata.type" = "#microsoft.graph.teleconferenceDeviceScreenSharingQuality"
				ChannelIndex = 1
				MediaDuration = "PT20M"
				NetworkLinkSpeedInBytes = 13000
				LocalIPAddress = "127.0.0.1"
				LocalPort = 6300
				RemoteIPAddress = "102.1.1.101"
				RemotePort = 6301
				InboundPackets = 5500
				OutboundPackets = 5400
				AverageInboundPacketLossRateInPercentage = 0.01
				AverageOutboundPacketLossRateInPercentage = 0.02
				MaximumInboundPacketLossRateInPercentage = 0.05
				MaximumOutboundPacketLossRateInPercentage = 0.06
				AverageInboundRoundTripDelay = "PT0.03S"
				AverageOutboundRoundTripDelay = "PT0.04S"
				MaximumInboundRoundTripDelay = "PT0.13S"
				MaximumOutboundRoundTripDelay = "PT0.14S"
				AverageInboundJitter = "PT0.01S"
				AverageOutboundJitter = "PT0.015S"
				MaximumInboundJitter = "PT0.023S"
				MaximumOutboundJitter = "PT0.024S"
			}
		)
	}
}
Invoke-MgLogCommunicationCallTeleconferenceDeviceQuality -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1JbdsmaCommunicationsCallsMicrosoftGraphLogteleconferencedevicequalityPostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/invoke-mglogcommunicationcallteleconferencedevicequality
#>
function Invoke-MgLogCommunicationCallTeleconferenceDeviceQuality {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='LogExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Log1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1JbdsmaCommunicationsCallsMicrosoftGraphLogteleconferencedevicequalityPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='LogExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='LogExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTeleconferenceDeviceQuality]
    # teleconferenceDeviceQuality
    # To construct, please use Get-Help -Online and see NOTES section for QUALITY properties and create a hash table.
    ${Quality},

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
            Log1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgLogCommunicationCallTeleconferenceDeviceQuality_Log1';
            LogExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgLogCommunicationCallTeleconferenceDeviceQuality_LogExpanded1';
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
Invoke action muteAll
.Description
Invoke action muteAll
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	Participants = @(
		""
	)
	ClientContext = "clientContext-value"
}
Invoke-MgMuteAllCommunicationCallParticipant -CallId $callId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPathsKpvac3CommunicationsCallsCallIdParticipantsMicrosoftGraphMuteallPostRequestbodyContentApplicationJsonSchema
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMuteParticipantsOperation
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/invoke-mgmuteallcommunicationcallparticipant
#>
function Invoke-MgMuteAllCommunicationCallParticipant {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMuteParticipantsOperation])]
[CmdletBinding(DefaultParameterSetName='MuteExpanded2', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Mute2', Mandatory)]
    [Parameter(ParameterSetName='MuteExpanded2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='MuteViaIdentity2', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='MuteViaIdentityExpanded2', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Mute2', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='MuteViaIdentity2', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsKpvac3CommunicationsCallsCallIdParticipantsMicrosoftGraphMuteallPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='MuteExpanded2')]
    [Parameter(ParameterSetName='MuteViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='MuteExpanded2')]
    [Parameter(ParameterSetName='MuteViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ClientContext},

    [Parameter(ParameterSetName='MuteExpanded2')]
    [Parameter(ParameterSetName='MuteViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Participants},

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
            Mute2 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgMuteAllCommunicationCallParticipant_Mute2';
            MuteExpanded2 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgMuteAllCommunicationCallParticipant_MuteExpanded2';
            MuteViaIdentity2 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgMuteAllCommunicationCallParticipant_MuteViaIdentity2';
            MuteViaIdentityExpanded2 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgMuteAllCommunicationCallParticipant_MuteViaIdentityExpanded2';
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
Invoke action mute
.Description
Invoke action mute
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	ClientContext = "d45324c1-fcb5-430a-902c-f20af696537c"
}
Invoke-MgMuteCommunicationCallParticipant -CallId $callId -ParticipantId $participantId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPathsTobgxoCommunicationsCallsCallIdParticipantsParticipantIdMicrosoftGraphMutePostRequestbodyContentApplicationJsonSchema
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMuteParticipantOperation
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/invoke-mgmutecommunicationcallparticipant
#>
function Invoke-MgMuteCommunicationCallParticipant {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMuteParticipantOperation])]
[CmdletBinding(DefaultParameterSetName='MuteExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Mute1', Mandatory)]
    [Parameter(ParameterSetName='MuteExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='Mute1', Mandatory)]
    [Parameter(ParameterSetName='MuteExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of participant
    ${ParticipantId},

    [Parameter(ParameterSetName='MuteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='MuteViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Mute1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='MuteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsTobgxoCommunicationsCallsCallIdParticipantsParticipantIdMicrosoftGraphMutePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='MuteExpanded1')]
    [Parameter(ParameterSetName='MuteViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='MuteExpanded1')]
    [Parameter(ParameterSetName='MuteViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ClientContext},

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
            Mute1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgMuteCommunicationCallParticipant_Mute1';
            MuteExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgMuteCommunicationCallParticipant_MuteExpanded1';
            MuteViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgMuteCommunicationCallParticipant_MuteViaIdentity1';
            MuteViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgMuteCommunicationCallParticipant_MuteViaIdentityExpanded1';
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
Invoke action mute
.Description
Invoke action mute
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	ClientContext = "clientContext-value"
}
Invoke-MgMuteCommunicationCall -CallId $callId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPaths13Zt223CommunicationsCallsCallIdMicrosoftGraphMutePostRequestbodyContentApplicationJsonSchema
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMuteParticipantOperation
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/invoke-mgmutecommunicationcall
#>
function Invoke-MgMuteCommunicationCall {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMuteParticipantOperation])]
[CmdletBinding(DefaultParameterSetName='MuteExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Mute1', Mandatory)]
    [Parameter(ParameterSetName='MuteExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='MuteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='MuteViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Mute1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='MuteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths13Zt223CommunicationsCallsCallIdMicrosoftGraphMutePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='MuteExpanded1')]
    [Parameter(ParameterSetName='MuteViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='MuteExpanded1')]
    [Parameter(ParameterSetName='MuteViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ClientContext},

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
            Mute1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgMuteCommunicationCall_Mute1';
            MuteExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgMuteCommunicationCall_MuteExpanded1';
            MuteViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgMuteCommunicationCall_MuteViaIdentity1';
            MuteViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgMuteCommunicationCall_MuteViaIdentityExpanded1';
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
Invoke action playPrompt
.Description
Invoke action playPrompt
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	ClientContext = "d45324c1-fcb5-430a-902c-f20af696537c"
	Prompts = @(
		@{
			"@odata.type" = "#microsoft.graph.mediaPrompt"
			MediaInfo = @{
				"@odata.type" = "#microsoft.graph.mediaInfo"
				Uri = "https://cdn.contoso.com/beep.wav"
				ResourceId = "1D6DE2D4-CD51-4309-8DAA-70768651088E"
			}
		}
	)
	Loop = $false
}
Invoke-MgPlayCommunicationCallPrompt -CallId $callId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1Gzqcv2CommunicationsCallsCallIdMicrosoftGraphPlaypromptPostRequestbodyContentApplicationJsonSchema1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlayPromptOperation1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/invoke-mgplaycommunicationcallprompt
#>
function Invoke-MgPlayCommunicationCallPrompt {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPlayPromptOperation1])]
[CmdletBinding(DefaultParameterSetName='PlayExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Play1', Mandatory)]
    [Parameter(ParameterSetName='PlayExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='PlayViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='PlayViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Play1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='PlayViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Gzqcv2CommunicationsCallsCallIdMicrosoftGraphPlaypromptPostRequestbodyContentApplicationJsonSchema1]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='PlayExpanded1')]
    [Parameter(ParameterSetName='PlayViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='PlayExpanded1')]
    [Parameter(ParameterSetName='PlayViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ClientContext},

    [Parameter(ParameterSetName='PlayExpanded1')]
    [Parameter(ParameterSetName='PlayViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${Loop},

    [Parameter(ParameterSetName='PlayExpanded1')]
    [Parameter(ParameterSetName='PlayViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPrompt[]]
    # .
    ${Prompts},

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
            Play1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgPlayCommunicationCallPrompt_Play1';
            PlayExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgPlayCommunicationCallPrompt_PlayExpanded1';
            PlayViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgPlayCommunicationCallPrompt_PlayViaIdentity1';
            PlayViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgPlayCommunicationCallPrompt_PlayViaIdentityExpanded1';
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
Invoke action recordResponse
.Description
Invoke action recordResponse
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	BargeInAllowed = $true
	ClientContext = "d45324c1-fcb5-430a-902c-f20af696537c"
	Prompts = @(
		@{
			"@odata.type" = "#microsoft.graph.mediaPrompt"
		}
	)
	MaxRecordDurationInSeconds = 10
	InitialSilenceTimeoutInSeconds = 5
	MaxSilenceTimeoutInSeconds = 2
	PlayBeep = $true
	StopTones = @(
		"#"
		"1"
		"*"
	)
}
Invoke-MgRecordCommunicationCallResponse -CallId $callId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPaths14Wb7KqCommunicationsCallsCallIdMicrosoftGraphRecordresponsePostRequestbodyContentApplicationJsonSchema
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecordOperation1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/invoke-mgrecordcommunicationcallresponse
#>
function Invoke-MgRecordCommunicationCallResponse {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecordOperation1])]
[CmdletBinding(DefaultParameterSetName='RecordExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Record1', Mandatory)]
    [Parameter(ParameterSetName='RecordExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='RecordViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Record1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='RecordViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths14Wb7KqCommunicationsCallsCallIdMicrosoftGraphRecordresponsePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='RecordExpanded1')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='RecordExpanded1')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${BargeInAllowed},

    [Parameter(ParameterSetName='RecordExpanded1')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ClientContext},

    [Parameter(ParameterSetName='RecordExpanded1')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${InitialSilenceTimeoutInSeconds},

    [Parameter(ParameterSetName='RecordExpanded1')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${MaxRecordDurationInSeconds},

    [Parameter(ParameterSetName='RecordExpanded1')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${MaxSilenceTimeoutInSeconds},

    [Parameter(ParameterSetName='RecordExpanded1')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${PlayBeep},

    [Parameter(ParameterSetName='RecordExpanded1')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPrompt[]]
    # .
    ${Prompts},

    [Parameter(ParameterSetName='RecordExpanded1')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${StopTones},

    [Parameter(ParameterSetName='RecordExpanded1')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${StreamWhileRecording},

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
            Record1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRecordCommunicationCallResponse_Record1';
            RecordExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRecordCommunicationCallResponse_RecordExpanded1';
            RecordViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRecordCommunicationCallResponse_RecordViaIdentity1';
            RecordViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRecordCommunicationCallResponse_RecordViaIdentityExpanded1';
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
Invoke action record
.Description
Invoke action record

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1Mdqe66CommunicationsCallsCallIdMicrosoftGraphRecordPostRequestbodyContentApplicationJsonSchema
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecordOperation1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/invoke-mgrecordcommunicationcall
#>
function Invoke-MgRecordCommunicationCall {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecordOperation1])]
[CmdletBinding(DefaultParameterSetName='RecordExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Record', Mandatory)]
    [Parameter(ParameterSetName='RecordExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='RecordViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Record', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='RecordViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Mdqe66CommunicationsCallsCallIdMicrosoftGraphRecordPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='RecordExpanded')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='RecordExpanded')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${BargeInAllowed},

    [Parameter(ParameterSetName='RecordExpanded')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ClientContext},

    [Parameter(ParameterSetName='RecordExpanded')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${InitialSilenceTimeoutInSeconds},

    [Parameter(ParameterSetName='RecordExpanded')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${MaxRecordDurationInSeconds},

    [Parameter(ParameterSetName='RecordExpanded')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${MaxSilenceTimeoutInSeconds},

    [Parameter(ParameterSetName='RecordExpanded')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${PlayBeep},

    [Parameter(ParameterSetName='RecordExpanded')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPrompt[]]
    # .
    ${Prompts},

    [Parameter(ParameterSetName='RecordExpanded')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${StopTones},

    [Parameter(ParameterSetName='RecordExpanded')]
    [Parameter(ParameterSetName='RecordViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${StreamWhileRecording},

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
            Record = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRecordCommunicationCall_Record';
            RecordExpanded = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRecordCommunicationCall_RecordExpanded';
            RecordViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRecordCommunicationCall_RecordViaIdentity';
            RecordViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRecordCommunicationCall_RecordViaIdentityExpanded';
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
Invoke action redirect
.Description
Invoke action redirect
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	Targets = @(
		@{
			"@odata.type" = "#microsoft.graph.invitationParticipantInfo"
			Identity = @{
				"@odata.type" = "#microsoft.graph.identitySet"
				Application = @{
					"@odata.type" = "#microsoft.graph.identity"
					DisplayName = "test bot 2"
					Id = "22bfd41f-550e-477d-8789-f6f7bd2a5e8b"
				}
			}
		}
	)
	CallbackUri = "https://bot.contoso.com/api/calls/24701998-1a73-4d42-8085-bf46ed0ae039"
}
Invoke-MgRedirectCommunicationCall -CallId $callId -BodyParameter $params
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	Targets = @(
		@{
			"@odata.type" = "#microsoft.graph.invitationParticipantInfo"
			Identity = @{
				"@odata.type" = "#microsoft.graph.identitySet"
				Phone = @{
					"@odata.type" = "#microsoft.graph.identity"
					Id = "+12345678901"
				}
			}
		}
	)
	CallbackUri = "https://bot.contoso.com/api/calls/24701998-1a73-4d42-8085-bf46ed0ae039"
}
Invoke-MgRedirectCommunicationCall -CallId $callId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPaths183Gi8UCommunicationsCallsCallIdMicrosoftGraphRedirectPostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/invoke-mgredirectcommunicationcall
#>
function Invoke-MgRedirectCommunicationCall {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='RedirectExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Redirect1', Mandatory)]
    [Parameter(ParameterSetName='RedirectExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='RedirectViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='RedirectViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Redirect1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='RedirectViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths183Gi8UCommunicationsCallsCallIdMicrosoftGraphRedirectPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='RedirectExpanded1')]
    [Parameter(ParameterSetName='RedirectViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='RedirectExpanded1')]
    [Parameter(ParameterSetName='RedirectViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${CallbackUri},

    [Parameter(ParameterSetName='RedirectExpanded1')]
    [Parameter(ParameterSetName='RedirectViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${MaskCallee},

    [Parameter(ParameterSetName='RedirectExpanded1')]
    [Parameter(ParameterSetName='RedirectViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${MaskCaller},

    [Parameter(ParameterSetName='RedirectExpanded1')]
    [Parameter(ParameterSetName='RedirectViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # callDisposition
    ${TargetDisposition},

    [Parameter(ParameterSetName='RedirectExpanded1')]
    [Parameter(ParameterSetName='RedirectViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInvitationParticipantInfo1[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for TARGETS properties and create a hash table.
    ${Targets},

    [Parameter(ParameterSetName='RedirectExpanded1')]
    [Parameter(ParameterSetName='RedirectViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${Timeout},

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
            Redirect1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRedirectCommunicationCall_Redirect1';
            RedirectExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRedirectCommunicationCall_RedirectExpanded1';
            RedirectViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRedirectCommunicationCall_RedirectViaIdentity1';
            RedirectViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRedirectCommunicationCall_RedirectViaIdentityExpanded1';
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
Invoke action reject
.Description
Invoke action reject
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	Reason = "none"
}
Invoke-MgRejectCommunicationCall -CallId $callId -BodyParameter $params
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	Reason = "busy"
}
Invoke-MgRejectCommunicationCall -CallId $callId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPaths4QrghdCommunicationsCallsCallIdMicrosoftGraphRejectPostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/invoke-mgrejectcommunicationcall
#>
function Invoke-MgRejectCommunicationCall {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='RejectExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Reject1', Mandatory)]
    [Parameter(ParameterSetName='RejectExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='RejectViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='RejectViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Reject1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='RejectViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths4QrghdCommunicationsCallsCallIdMicrosoftGraphRejectPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='RejectExpanded1')]
    [Parameter(ParameterSetName='RejectViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='RejectExpanded1')]
    [Parameter(ParameterSetName='RejectViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${CallbackUri},

    [Parameter(ParameterSetName='RejectExpanded1')]
    [Parameter(ParameterSetName='RejectViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # rejectReason
    ${Reason},

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
            Reject1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRejectCommunicationCall_Reject1';
            RejectExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRejectCommunicationCall_RejectExpanded1';
            RejectViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRejectCommunicationCall_RejectViaIdentity1';
            RejectViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgRejectCommunicationCall_RejectViaIdentityExpanded1';
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
Invoke action subscribeToTone
.Description
Invoke action subscribeToTone
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	ClientContext = "fd1c7836-4d84-4e24-b6aa-23188688cc54"
}
Invoke-MgSubscribeCommunicationCallToTone -CallId $callId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPathsXyl6WiCommunicationsCallsCallIdMicrosoftGraphSubscribetotonePostRequestbodyContentApplicationJsonSchema
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSubscribeToToneOperation
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/invoke-mgsubscribecommunicationcalltotone
#>
function Invoke-MgSubscribeCommunicationCallToTone {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSubscribeToToneOperation])]
[CmdletBinding(DefaultParameterSetName='SubscribeExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Subscribe1', Mandatory)]
    [Parameter(ParameterSetName='SubscribeExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='SubscribeViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SubscribeViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Subscribe1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SubscribeViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsXyl6WiCommunicationsCallsCallIdMicrosoftGraphSubscribetotonePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='SubscribeExpanded1')]
    [Parameter(ParameterSetName='SubscribeViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='SubscribeExpanded1')]
    [Parameter(ParameterSetName='SubscribeViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ClientContext},

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
            Subscribe1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgSubscribeCommunicationCallToTone_Subscribe1';
            SubscribeExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgSubscribeCommunicationCallToTone_SubscribeExpanded1';
            SubscribeViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgSubscribeCommunicationCallToTone_SubscribeViaIdentity1';
            SubscribeViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgSubscribeCommunicationCallToTone_SubscribeViaIdentityExpanded1';
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
Invoke action unmute
.Description
Invoke action unmute
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	ClientContext = "clientContext-value"
}
Invoke-MgUnmuteCommunicationCall -CallId $callId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1X7BvttCommunicationsCallsCallIdMicrosoftGraphUnmutePostRequestbodyContentApplicationJsonSchema
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnmuteParticipantOperation
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/invoke-mgunmutecommunicationcall
#>
function Invoke-MgUnmuteCommunicationCall {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUnmuteParticipantOperation])]
[CmdletBinding(DefaultParameterSetName='UnmuteExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Unmute1', Mandatory)]
    [Parameter(ParameterSetName='UnmuteExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='UnmuteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UnmuteViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Unmute1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UnmuteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1X7BvttCommunicationsCallsCallIdMicrosoftGraphUnmutePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UnmuteExpanded1')]
    [Parameter(ParameterSetName='UnmuteViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UnmuteExpanded1')]
    [Parameter(ParameterSetName='UnmuteViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ClientContext},

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
            Unmute1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgUnmuteCommunicationCall_Unmute1';
            UnmuteExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgUnmuteCommunicationCall_UnmuteExpanded1';
            UnmuteViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgUnmuteCommunicationCall_UnmuteViaIdentity1';
            UnmuteViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Invoke-MgUnmuteCommunicationCall_UnmuteViaIdentityExpanded1';
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
Invoke action transfer
.Description
Invoke action transfer
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	TransferTarget = @{
		EndpointType = "default"
		Identity = @{
			User = @{
				Id = "550fae72-d251-43ec-868c-373732c2704f"
				TenantId = "72f988bf-86f1-41af-91ab-2d7cd011db47"
				DisplayName = "Heidi Steen"
			}
		}
		LanguageId = "languageId-value"
		Region = "region-value"
	}
}
Move-MgCommunicationCall -CallId $callId -BodyParameter $params
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	TransferTarget = @{
		"@odata.type" = "#microsoft.graph.invitationParticipantInfo"
		EndpointType = "default"
		Identity = @{
			"@odata.type" = "#microsoft.graph.identitySet"
			User = @{
				"@odata.type" = "#microsoft.graph.identity"
				Id = "550fae72-d251-43ec-868c-373732c2704f"
				TenantId = "72f988bf-86f1-41af-91ab-2d7cd011db47"
				DisplayName = "Heidi Steen"
			}
		}
		LanguageId = "en-us"
		Region = "amer"
		ReplacesCallId = "e5d39592-99bd-4db8-bca8-30fb894ec51d"
	}
}
Move-MgCommunicationCall -CallId $callId -BodyParameter $params
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	TransferTarget = @{
		EndpointType = "default"
		Identity = @{
			Phone = @{
				"@odata.type" = "#microsoft.graph.identity"
				Id = "+12345678901"
			}
		}
		LanguageId = "languageId-value"
		Region = "region-value"
	}
}
Move-MgCommunicationCall -CallId $callId -BodyParameter $params
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	TransferTarget = @{
		"@odata.type" = "#microsoft.graph.invitationParticipantInfo"
		EndpointType = "default"
		Identity = @{
			"@odata.type" = "#microsoft.graph.identitySet"
			Phone = @{
				"@odata.type" = "#microsoft.graph.identity"
				Id = "+12345678901"
			}
		}
		LanguageId = "en-us"
		Region = "amer"
		ReplacesCallId = "e5d39592-99bd-4db8-bca8-30fb894ec51d"
	}
}
Move-MgCommunicationCall -CallId $callId -BodyParameter $params
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	TransferTarget = @{
		EndpointType = "default"
		Identity = @{
			User = @{
				Id = "550fae72-d251-43ec-868c-373732c2704f"
				TenantId = "72f988bf-86f1-41af-91ab-2d7cd011db47"
				DisplayName = "Heidi Steen"
			}
		}
	}
	Transferee = @{
		Identity = @{
			User = @{
				Id = "751f6800-3180-414d-bd94-333364659951"
				TenantId = "72f988bf-86f1-41af-91ab-2d7cd011db47"
			}
		}
		ParticipantId = "909c6581-5130-43e9-88f3-fcb3582cde37"
	}
	LanguageId = "languageId-value"
	Region = "region-value"
}
Move-MgCommunicationCall -CallId $callId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPaths4Zbm7LCommunicationsCallsCallIdMicrosoftGraphTransferPostRequestbodyContentApplicationJsonSchema1
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/move-mgcommunicationcall
#>
function Move-MgCommunicationCall {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='TransferExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Transfer1', Mandatory)]
    [Parameter(ParameterSetName='TransferExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='TransferViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='TransferViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Transfer1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='TransferViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths4Zbm7LCommunicationsCallsCallIdMicrosoftGraphTransferPostRequestbodyContentApplicationJsonSchema1]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='TransferExpanded1')]
    [Parameter(ParameterSetName='TransferViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='TransferExpanded1')]
    [Parameter(ParameterSetName='TransferViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInvitationParticipantInfo1]
    # invitationParticipantInfo
    # To construct, please use Get-Help -Online and see NOTES section for TRANSFERTARGET properties and create a hash table.
    ${TransferTarget},

    [Parameter(ParameterSetName='TransferExpanded1')]
    [Parameter(ParameterSetName='TransferViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipantInfo1]
    # participantInfo
    # To construct, please use Get-Help -Online and see NOTES section for TRANSFEREE properties and create a hash table.
    ${Transferee},

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
            Transfer1 = 'Microsoft.Graph.CloudCommunications.private\Move-MgCommunicationCall_Transfer1';
            TransferExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Move-MgCommunicationCall_TransferExpanded1';
            TransferViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Move-MgCommunicationCall_TransferViaIdentity1';
            TransferViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Move-MgCommunicationCall_TransferViaIdentityExpanded1';
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
Create new navigation property to audioRoutingGroups for communications
.Description
Create new navigation property to audioRoutingGroups for communications
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	Id = "oneToOne"
	RoutingMode = "oneToOne"
	Sources = @(
		"632899f8-2ea1-4604-8413-27bd2892079f"
	)
	Receivers = @(
		"550fae72-d251-43ec-868c-373732c2704f"
	)
}
New-MgCommunicationCallAudioRoutingGroup -CallId $callId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAudioRoutingGroup1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAudioRoutingGroup1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/new-mgcommunicationcallaudioroutinggroup
#>
function New-MgCommunicationCallAudioRoutingGroup {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAudioRoutingGroup1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAudioRoutingGroup1]
    # audioRoutingGroup
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # List of receiving participant ids.
    ${Receivers},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${RoutingMode},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # List of source participant ids.
    ${Sources},

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
            Create = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallAudioRoutingGroup_Create';
            CreateExpanded = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallAudioRoutingGroup_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallAudioRoutingGroup_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallAudioRoutingGroup_CreateViaIdentityExpanded';
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
Create new navigation property to contentSharingSessions for communications
.Description
Create new navigation property to contentSharingSessions for communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
System.Collections.Hashtable
.Outputs
System.String
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/new-mgcommunicationcallcontentsharingsession
#>
function New-MgCommunicationCallContentSharingSession {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(Required, PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphContentSharingSession]))]
    [System.Collections.Hashtable]
    # contentSharingSession
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

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
            Create = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallContentSharingSession_Create';
            CreateExpanded = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallContentSharingSession_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallContentSharingSession_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallContentSharingSession_CreateViaIdentityExpanded';
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
Create new navigation property to operations for communications
.Description
Create new navigation property to operations for communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCommsOperation
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCommsOperation
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/new-mgcommunicationcalloperation
#>
function New-MgCommunicationCallOperation {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCommsOperation])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCommsOperation]
    # commsOperation
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Unique Client Context string.
    # Max limit is 256 chars.
    ${ClientContext},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphResultInfo]
    # resultInfo
    # To construct, please use Get-Help -Online and see NOTES section for RESULTINFO properties and create a hash table.
    ${ResultInfo},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # operationStatus
    ${Status},

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
            Create1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallOperation_Create1';
            CreateExpanded1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallOperation_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallOperation_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallOperation_CreateViaIdentityExpanded1';
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
Create new navigation property to participants for communications
.Description
Create new navigation property to participants for communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipant1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipant1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/new-mgcommunicationcallparticipant
#>
function New-MgCommunicationCallParticipant {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipant1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipant1]
    # participant
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipantInfo1]
    # participantInfo
    # To construct, please use Get-Help -Online and see NOTES section for INFO properties and create a hash table.
    ${Info},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsIdentityAnonymized},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # true if the participant is in lobby.
    ${IsInLobby},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # true if the participant is muted (client or server muted).
    ${IsMuted},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMediaStream1[]]
    # The list of media streams.
    # To construct, please use Get-Help -Online and see NOTES section for MEDIASTREAMS properties and create a hash table.
    ${MediaStreams},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # A blob of data provided by the participant in the roster.
    ${Metadata},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecordingInfo1]
    # recordingInfo
    # To construct, please use Get-Help -Online and see NOTES section for RECORDINGINFO properties and create a hash table.
    ${RecordingInfo},

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
            Create1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallParticipant_Create1';
            CreateExpanded1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallParticipant_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallParticipant_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallParticipant_CreateViaIdentityExpanded1';
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
Create new navigation property to sessions for communications
.Description
Create new navigation property to sessions for communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsSession
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsSession
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/new-mgcommunicationcallrecordsession
#>
function New-MgCommunicationCallRecordSession {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsSession])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of callRecord
    ${CallRecordId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsSession]
    # session
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsEndpoint]
    # endpoint
    # To construct, please use Get-Help -Online and see NOTES section for CALLEE properties and create a hash table.
    ${Callee},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsEndpoint]
    # endpoint
    # To construct, please use Get-Help -Online and see NOTES section for CALLER properties and create a hash table.
    ${Caller},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # UTC time when the last user left the session.
    # The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${EndDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsFailureInfo]
    # failureInfo
    # To construct, please use Get-Help -Online and see NOTES section for FAILUREINFO properties and create a hash table.
    ${FailureInfo},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # List of modalities present in the session.
    # Possible values are: unknown, audio, video, videoBasedScreenSharing, data, screenSharing, unknownFutureValue.
    ${Modalities},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsSegment[]]
    # The list of segments involved in the session.
    # Read-only.
    # Nullable.
    # To construct, please use Get-Help -Online and see NOTES section for SEGMENTS properties and create a hash table.
    ${Segments},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # UTC time when the first user joined the session.
    # The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${StartDateTime},

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
            Create1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallRecordSession_Create1';
            CreateExpanded1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallRecordSession_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallRecordSession_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCallRecordSession_CreateViaIdentityExpanded1';
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
Create new navigation property to calls for communications
.Description
Create new navigation property to calls for communications
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	"@odata.type" = "#microsoft.graph.call"
	CallbackUri = "https://bot.contoso.com/callback"
	Source = @{
		"@odata.type" = "#microsoft.graph.participantInfo"
		Identity = @{
			"@odata.type" = "#microsoft.graph.identitySet"
			Application = @{
				"@odata.type" = "#microsoft.graph.identity"
				DisplayName = "Calling Bot"
				Id = "2891555a-92ff-42e6-80fa-6e1300c6b5c6"
			}
		}
		Region = $null
		LanguageId = $null
	}
	Targets = @(
		@{
			"@odata.type" = "#microsoft.graph.invitationParticipantInfo"
			Identity = @{
				"@odata.type" = "#microsoft.graph.identitySet"
				User = @{
					"@odata.type" = "#microsoft.graph.identity"
					DisplayName = "John"
					Id = "112f7296-5fa4-42ca-bae8-6a692b15d4b8"
				}
			}
		}
	)
	RequestedModalities = @(
		"audio"
	)
	MediaConfig = @{
		"@odata.type" = "#microsoft.graph.appHostedMediaConfig"
		Blob = "<Media Session Configuration>"
	}
}
New-MgCommunicationCall -BodyParameter $params
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	"@odata.type" = "#microsoft.graph.call"
	CallbackUri = "https://bot.contoso.com/callback"
	Targets = @(
		@{
			"@odata.type" = "#microsoft.graph.invitationParticipantInfo"
			Identity = @{
				"@odata.type" = "#microsoft.graph.identitySet"
				User = @{
					"@odata.type" = "#microsoft.graph.identity"
					DisplayName = "John"
					Id = "112f7296-5fa4-42ca-bae8-6a692b15d4b8"
				}
			}
		}
	)
	RequestedModalities = @(
		"audio"
	)
	CallOptions = @{
		"@odata.type" = "#microsoft.graph.outgoingCallOptions"
		IsContentSharingNotificationEnabled = $true
	}
	MediaConfig = @{
		"@odata.type" = "#microsoft.graph.serviceHostedMediaConfig"
	}
}
New-MgCommunicationCall -BodyParameter $params
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	"@odata.type" = "#microsoft.graph.call"
	CallbackUri = "https://bot.contoso.com/callback"
	Source = @{
		"@odata.type" = "#microsoft.graph.participantInfo"
		Identity = @{
			"@odata.type" = "#microsoft.graph.identitySet"
			ApplicationInstance = @{
				"@odata.type" = "#microsoft.graph.identity"
				DisplayName = "Calling Bot"
				Id = "3d913abb-aec0-4964-8fa6-3c6850c4f278"
			}
		}
		CountryCode = $null
		EndpointType = $null
		Region = $null
		LanguageId = $null
	}
	Targets = @(
		@{
			"@odata.type" = "#microsoft.graph.invitationParticipantInfo"
			Identity = @{
				"@odata.type" = "#microsoft.graph.identitySet"
				Phone = @{
					"@odata.type" = "#microsoft.graph.identity"
					Id = "+12345678901"
				}
			}
		}
	)
	RequestedModalities = @(
		"audio"
	)
	MediaConfig = @{
		"@odata.type" = "#microsoft.graph.serviceHostedMediaConfig"
	}
	TenantId = "aa67bd4c-8475-432d-bd41-39f255720e0a"
}
New-MgCommunicationCall -BodyParameter $params
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	"@odata.type" = "#microsoft.graph.call"
	CallbackUri = "https://bot.contoso.com/callback"
	Source = @{
		"@odata.type" = "#microsoft.graph.participantInfo"
		Identity = @{
			"@odata.type" = "#microsoft.graph.identitySet"
			ApplicationInstance = @{
				"@odata.type" = "#microsoft.graph.identity"
				DisplayName = "Calling Bot"
				Id = "3d913abb-aec0-4964-8fa6-3c6850c4f278"
			}
		}
		CountryCode = $null
		EndpointType = $null
		Region = $null
		LanguageId = $null
	}
	Targets = @(
		@{
			"@odata.type" = "#microsoft.graph.invitationParticipantInfo"
			Identity = @{
				"@odata.type" = "#microsoft.graph.identitySet"
				Phone = @{
					"@odata.type" = "#microsoft.graph.identity"
					Id = "+12345678901"
				}
			}
		}
	)
	RequestedModalities = @(
		"audio"
	)
	MediaConfig = @{
		"@odata.type" = "#microsoft.graph.appHostedMediaConfig"
		Blob = "<Media Session Configuration>"
	}
	TenantId = "aa67bd4c-8475-432d-bd41-39f255720e0a"
}
New-MgCommunicationCall -BodyParameter $params
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	"@odata.type" = "#microsoft.graph.call"
	Direction = "outgoing"
	Subject = "Create a group call with app hosted media"
	CallbackUri = "https://bot.contoso.com/callback"
	Source = @{
		"@odata.type" = "#microsoft.graph.participantInfo"
		Identity = @{
			"@odata.type" = "#microsoft.graph.identitySet"
			Application = @{
				"@odata.type" = "#microsoft.graph.identity"
				DisplayName = "TestBot"
				Id = "dd3885da-f9ab-486b-bfae-85de3d445555"
			}
		}
	}
	Targets = @(
		@{
			"@odata.type" = "#microsoft.graph.invitationParticipantInfo"
			Identity = @{
				"@odata.type" = "#microsoft.graph.identitySet"
				User = @{
					"@odata.type" = "#microsoft.graph.identity"
					DisplayName = "user1"
					Id = "98da8a1a-1b87-452c-a713-65d3f10b5555"
				}
			}
		}
		@{
			"@odata.type" = "#microsoft.graph.participantInfo"
			Identity = @{
				"@odata.type" = "#microsoft.graph.identitySet"
				User = @{
					"@odata.type" = "#microsoft.graph.identity"
					DisplayName = "user2"
					Id = "bf5aae9a-d11d-47a8-93b1-782504c95555"
				}
			}
		}
	)
	RequestedModalities = @(
		"audio"
	)
	MediaConfig = @{
		"@odata.type" = "#microsoft.graph.appHostedMediaConfig"
		Blob = "<Media Session Configuration>"
		RemoveFromDefaultAudioGroup = $false
	}
	TenantId = "aa67bd4c-8475-432d-bd41-39f255720e0a"
}
New-MgCommunicationCall -BodyParameter $params
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	"@odata.type" = "#microsoft.graph.call"
	Direction = "outgoing"
	Subject = "Create a group call with service hosted media"
	CallbackUri = "https://bot.contoso.com/callback"
	Source = @{
		"@odata.type" = "#microsoft.graph.participantInfo"
		Identity = @{
			"@odata.type" = "#microsoft.graph.identitySet"
			Application = @{
				"@odata.type" = "#microsoft.graph.identity"
				DisplayName = "TestBot"
				Id = "dd3885da-f9ab-486b-bfae-85de3d445555"
			}
		}
	}
	Targets = @(
		@{
			"@odata.type" = "#microsoft.graph.invitationParticipantInfo"
			Identity = @{
				"@odata.type" = "#microsoft.graph.identitySet"
				User = @{
					"@odata.type" = "#microsoft.graph.identity"
					DisplayName = "user1"
					Id = "98da8a1a-1b87-452c-a713-65d3f10b5555"
				}
			}
		}
		@{
			"@odata.type" = "#microsoft.graph.participantInfo"
			Identity = @{
				"@odata.type" = "#microsoft.graph.identitySet"
				User = @{
					"@odata.type" = "#microsoft.graph.identity"
					DisplayName = "user2"
					Id = "bf5aae9a-d11d-47a8-93b1-782504c95555"
				}
			}
		}
	)
	RequestedModalities = @(
		"audio"
	)
	MediaConfig = @{
		"@odata.type" = "#microsoft.graph.serviceHostedMediaConfig"
		RemoveFromDefaultAudioGroup = $false
	}
	TenantId = "aa67bd4c-8475-432d-bd41-39f255720e0a"
}
New-MgCommunicationCall -BodyParameter $params
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	"@odata.type" = "#microsoft.graph.call"
	CallbackUri = "https://bot.contoso.com/callback"
	Source = @{
		"@odata.type" = "#microsoft.graph.participantInfo"
		Identity = @{
			"@odata.type" = "#microsoft.graph.identitySet"
			Guest = @{
				"@odata.type" = "#microsoft.graph.identity"
				DisplayName = "Guest User"
				Id = "d7a3b999-17ac-4bca-9e77-e6a730d2ec2e"
			}
		}
	}
	RequestedModalities = @(
		"audio"
	)
	MediaConfig = @{
		"@odata.type" = "#microsoft.graph.serviceHostedMediaConfig"
		PreFetchMedia = @(
		)
	}
	ChatInfo = @{
		"@odata.type" = "#microsoft.graph.chatInfo"
		ThreadId = "19:cbee7c1c860e465f8258e3cebf7bee0d@thread.skype"
		MessageId = "1533758867081"
	}
	MeetingInfo = @{
		"@odata.type" = "#microsoft.graph.organizerMeetingInfo"
		Organizer = @{
			"@odata.type" = "#microsoft.graph.identitySet"
			User = @{
				"@odata.type" = "#microsoft.graph.identity"
				Id = "5810cede-f3cc-42eb-b2c1-e9bd5d53ec96"
				TenantId = "aa67bd4c-8475-432d-bd41-39f255720e0a"
				DisplayName = "Bob"
			}
		}
		AllowConversationWithoutHost = $true
	}
}
New-MgCommunicationCall -BodyParameter $params
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	"@odata.type" = "#microsoft.graph.call"
	CallbackUri = "https://bot.contoso.com/callback"
	RequestedModalities = @(
		"audio"
	)
	MediaConfig = @{
		"@odata.type" = "#microsoft.graph.serviceHostedMediaConfig"
		PreFetchMedia = @(
		)
	}
	ChatInfo = @{
		"@odata.type" = "#microsoft.graph.chatInfo"
		ThreadId = "19:cbee7c1c860e465f8258e3cebf7bee0d@thread.skype"
		MessageId = "1533758867081"
	}
	MeetingInfo = @{
		"@odata.type" = "#microsoft.graph.organizerMeetingInfo"
		Organizer = @{
			"@odata.type" = "#microsoft.graph.identitySet"
			User = @{
				"@odata.type" = "#microsoft.graph.identity"
				Id = "5810cede-f3cc-42eb-b2c1-e9bd5d53ec96"
				TenantId = "aa67bd4c-8475-432d-bd41-39f255720e0a"
				DisplayName = "Bob"
			}
		}
		AllowConversationWithoutHost = $true
	}
}
New-MgCommunicationCall -BodyParameter $params
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	"@odata.type" = "#microsoft.graph.call"
	Direction = "outgoing"
	CallbackUri = "https://bot.contoso.com/callback"
	RequestedModalities = @(
		"audio"
	)
	MediaConfig = @{
		"@odata.type" = "#microsoft.graph.appHostedMediaConfig"
		Blob = "<Media Session Configuration>"
	}
	ChatInfo = @{
		"@odata.type" = "#microsoft.graph.chatInfo"
		ThreadId = "19:meeting_Win6Ydo4wsMijFjZS00ZGVjLTk5MGUtOTRjNWY2NmNkYTFm@thread.v2"
		MessageId = "0"
	}
	MeetingInfo = @{
		"@odata.type" = "#microsoft.graph.organizerMeetingInfo"
		Organizer = @{
			"@odata.type" = "#microsoft.graph.identitySet"
			User = @{
				"@odata.type" = "#microsoft.graph.identity"
				Id = "5810cede-f3cc-42eb-b2c1-e9bd5d53ec96"
				TenantId = "aa67bd4c-8475-432d-bd41-39f255720e0a"
				DisplayName = "Bob"
			}
		}
		AllowConversationWithoutHost = $true
	}
	TenantId = "aa67bd4c-8475-432d-bd41-39f255720e0a"
}
New-MgCommunicationCall -BodyParameter $params
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	"@odata.type" = "#microsoft.graph.call"
	CallbackUri = "https://bot.contoso.com/callback"
	RequestedModalities = @(
		"audio"
	)
	MediaConfig = @{
		"@odata.type" = "#microsoft.graph.serviceHostedMediaConfig"
		PreFetchMedia = @(
		)
	}
	ChatInfo = @{
		"@odata.type" = "#microsoft.graph.chatInfo"
		ThreadId = "19:meeting_Win6Ydo4wsMijFjZS00ZGVjLTk5MGUtOTRjNWY2NmNkYTFm@thread.v2"
		MessageId = "0"
	}
	MeetingInfo = @{
		"@odata.type" = "#microsoft.graph.organizerMeetingInfo"
		Organizer = @{
			"@odata.type" = "#microsoft.graph.identitySet"
			User = @{
				"@odata.type" = "#microsoft.graph.identity"
				Id = "5810cede-f3cc-42eb-b2c1-e9bd5d53ec96"
				TenantId = "9f386a15-f9cc-445b-8106-ac85e314a07b"
				DisplayName = "Bob"
			}
		}
		AllowConversationWithoutHost = $true
	}
	TenantId = "86dc81db-c112-4228-9222-63f3esaa1edb"
}
New-MgCommunicationCall -BodyParameter $params
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	"@odata.type" = "#microsoft.graph.call"
	CallbackUri = "https://bot.contoso.com/callback"
	RequestedModalities = @(
		"audio"
	)
	MediaConfig = @{
		"@odata.type" = "#microsoft.graph.serviceHostedMediaConfig"
		PreFetchMedia = @(
		)
	}
	MeetingInfo = @{
		"@odata.type" = "#microsoft.graph.joinMeetingIdMeetingInfo"
		JoinMeetingId = "1234567"
		Passcode = "psw123"
	}
	TenantId = "86dc81db-c112-4228-9222-63f3esaa1edb"
}
New-MgCommunicationCall -BodyParameter $params
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	"@odata.type" = "#microsoft.graph.call"
	CallbackUri = "https://bot.contoso.com/callback"
	RequestedModalities = @(
		"audio"
	)
	MediaConfig = @{
		"@odata.type" = "#microsoft.graph.serviceHostedMediaConfig"
		PreFetchMedia = @(
		)
	}
	MeetingInfo = @{
		"@odata.type" = "#microsoft.graph.joinMeetingIdMeetingInfo"
		JoinMeetingId = "1234567"
		Passcode = $null
	}
	TenantId = "86dc81db-c112-4228-9222-63f3esaa1edb"
}
New-MgCommunicationCall -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCall1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCall1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/new-mgcommunicationcall
#>
function New-MgCommunicationCall {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCall1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCall1]
    # call
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # The list of active modalities.
    # Possible values are: unknown, audio, video, videoBasedScreenSharing, data.
    # Read-only.
    ${ActiveModalities},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipantInfo1]
    # participantInfo
    # To construct, please use Get-Help -Online and see NOTES section for ANSWEREDBY properties and create a hash table.
    ${AnsweredBy},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAudioRoutingGroup1[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for AUDIOROUTINGGROUPS properties and create a hash table.
    ${AudioRoutingGroups},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # A unique identifier for all the participant calls in a conference or a unique identifier for two participant calls in a P2P call.
    # This needs to be copied over from Microsoft.Graph.Call.CallChainId.
    ${CallChainId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallOptions]
    # callOptions
    # To construct, please use Get-Help -Online and see NOTES section for CALLOPTIONS properties and create a hash table.
    ${CallOptions},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRoute[]]
    # The routing information on how the call was retargeted.
    # Read-only.
    # To construct, please use Get-Help -Online and see NOTES section for CALLROUTES properties and create a hash table.
    ${CallRoutes},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The callback URL on which callbacks will be delivered.
    # Must be https.
    ${CallbackUri},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphChatInfo]
    # chatInfo
    # To construct, please use Get-Help -Online and see NOTES section for CHATINFO properties and create a hash table.
    ${ChatInfo},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphContentSharingSession[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for CONTENTSHARINGSESSIONS properties and create a hash table.
    ${ContentSharingSessions},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # callDirection
    ${Direction},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIncomingContext]
    # incomingContext
    # To construct, please use Get-Help -Online and see NOTES section for INCOMINGCONTEXT properties and create a hash table.
    ${IncomingContext},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMediaConfig1]
    # mediaConfig
    # To construct, please use Get-Help -Online and see NOTES section for MEDIACONFIG properties and create a hash table.
    ${MediaConfig},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallMediaState]
    # callMediaState
    # To construct, please use Get-Help -Online and see NOTES section for MEDIASTATE properties and create a hash table.
    ${MediaState},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingCapability]
    # meetingCapability
    # To construct, please use Get-Help -Online and see NOTES section for MEETINGCAPABILITY properties and create a hash table.
    ${MeetingCapability},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingInfo1]
    # meetingInfo
    # To construct, please use Get-Help -Online and see NOTES section for MEETINGINFO properties and create a hash table.
    ${MeetingInfo},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${MyParticipantId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCommsOperation[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for OPERATIONS properties and create a hash table.
    ${Operations},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipant1[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for PARTICIPANTS properties and create a hash table.
    ${Participants},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${RequestedModalities},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphResultInfo]
    # resultInfo
    # To construct, please use Get-Help -Online and see NOTES section for RESULTINFO properties and create a hash table.
    ${ResultInfo},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${RingingTimeoutInSeconds},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${RoutingPolicies},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipantInfo1]
    # participantInfo
    # To construct, please use Get-Help -Online and see NOTES section for SOURCE properties and create a hash table.
    ${Source},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${State},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Subject},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInvitationParticipantInfo1[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for TARGETS properties and create a hash table.
    ${Targets},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${TenantId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${TerminationReason},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphToneInfo]
    # toneInfo
    # To construct, please use Get-Help -Online and see NOTES section for TONEINFO properties and create a hash table.
    ${ToneInfo},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallTranscriptionInfo]
    # callTranscriptionInfo
    # To construct, please use Get-Help -Online and see NOTES section for TRANSCRIPTION properties and create a hash table.
    ${Transcription},

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
            Create1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCall_Create1';
            CreateExpanded1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationCall_CreateExpanded1';
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
Create new navigation property to attendanceRecords for communications
.Description
Create new navigation property to attendanceRecords for communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttendanceRecord1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttendanceRecord1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/new-mgcommunicationonlinemeetingattendancereportattendancerecord
#>
function New-MgCommunicationOnlineMeetingAttendanceReportAttendanceRecord {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttendanceRecord1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded2', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of meetingAttendanceReport
    ${MeetingAttendanceReportId},

    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='Create2', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity2', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded2', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='Create2', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity2', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttendanceRecord1]
    # attendanceRecord
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateExpanded2')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateExpanded2')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttendanceInterval[]]
    # List of time periods between joining and leaving a meeting.
    # To construct, please use Get-Help -Online and see NOTES section for ATTENDANCEINTERVALS properties and create a hash table.
    ${AttendanceIntervals},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateExpanded2')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Email address of the user associated with this atttendance record.
    ${EmailAddress},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateExpanded2')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateExpanded2')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentity]
    # identity
    # To construct, please use Get-Help -Online and see NOTES section for IDENTITY properties and create a hash table.
    ${Identity},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateExpanded2')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Unique identifier of a meetingRegistrant.
    # Presents when the participant has registered for the meeting.
    ${RegistrantId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateExpanded2')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Role of the attendee.
    # Possible values are: None, Attendee, Presenter, and Organizer.
    ${Role},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateExpanded2')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Total duration of the attendances in seconds.
    ${TotalAttendanceInSeconds},

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
            Create1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationOnlineMeetingAttendanceReportAttendanceRecord_Create1';
            Create2 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationOnlineMeetingAttendanceReportAttendanceRecord_Create2';
            CreateExpanded1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationOnlineMeetingAttendanceReportAttendanceRecord_CreateExpanded1';
            CreateExpanded2 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationOnlineMeetingAttendanceReportAttendanceRecord_CreateExpanded2';
            CreateViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationOnlineMeetingAttendanceReportAttendanceRecord_CreateViaIdentity1';
            CreateViaIdentity2 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationOnlineMeetingAttendanceReportAttendanceRecord_CreateViaIdentity2';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationOnlineMeetingAttendanceReportAttendanceRecord_CreateViaIdentityExpanded1';
            CreateViaIdentityExpanded2 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationOnlineMeetingAttendanceReportAttendanceRecord_CreateViaIdentityExpanded2';
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
Create new navigation property to attendanceReports for communications
.Description
Create new navigation property to attendanceReports for communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingAttendanceReport1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingAttendanceReport1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/new-mgcommunicationonlinemeetingattendancereport
#>
function New-MgCommunicationOnlineMeetingAttendanceReport {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingAttendanceReport1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingAttendanceReport1]
    # meetingAttendanceReport
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttendanceRecord1[]]
    # List of attendance records of an attendance report.
    # Read-only.
    # To construct, please use Get-Help -Online and see NOTES section for ATTENDANCERECORDS properties and create a hash table.
    ${AttendanceRecords},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # UTC time when the meeting ended.
    # Read-only.
    ${MeetingEndDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # UTC time when the meeting started.
    # Read-only.
    ${MeetingStartDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Total number of participants.
    # Read-only.
    ${TotalParticipantCount},

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
            Create1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationOnlineMeetingAttendanceReport_Create1';
            CreateExpanded1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationOnlineMeetingAttendanceReport_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationOnlineMeetingAttendanceReport_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationOnlineMeetingAttendanceReport_CreateViaIdentityExpanded1';
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
Create new navigation property to customQuestions for communications
.Description
Create new navigation property to customQuestions for communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrationQuestion
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrationQuestion
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/new-mgcommunicationonlinemeetingregistrationcustomquestion
#>
function New-MgCommunicationOnlineMeetingRegistrationCustomQuestion {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrationQuestion])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrationQuestion]
    # meetingRegistrationQuestion
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # answerInputType
    ${AnswerInputType},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Answer options when answerInputType is radioButton.
    ${AnswerOptions},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Display name of the custom registration question.
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether the question is required.
    # Default value is false.
    ${IsRequired},

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
            Create = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationOnlineMeetingRegistrationCustomQuestion_Create';
            CreateExpanded = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationOnlineMeetingRegistrationCustomQuestion_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationOnlineMeetingRegistrationCustomQuestion_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationOnlineMeetingRegistrationCustomQuestion_CreateViaIdentityExpanded';
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
Create new navigation property to transcripts for communications
.Description
Create new navigation property to transcripts for communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallTranscript
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallTranscript
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/new-mgcommunicationonlinemeetingtranscript
#>
function New-MgCommunicationOnlineMeetingTranscript {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallTranscript])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallTranscript]
    # callTranscript
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for Content (A field representing the content of the transcript.
    # Read-only.)
    ${ContentInputFile},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Date and time at which the transcript was created.
    # Read-only.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

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
            Create = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationOnlineMeetingTranscript_Create';
            CreateExpanded = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationOnlineMeetingTranscript_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationOnlineMeetingTranscript_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationOnlineMeetingTranscript_CreateViaIdentityExpanded';
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
Create new navigation property to onlineMeetings for communications
.Description
Create new navigation property to onlineMeetings for communications

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/new-mgcommunicationonlinemeeting
#>
function New-MgCommunicationOnlineMeeting {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded2', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create2', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting1]
    # onlineMeeting
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether attendees can turn on their camera.
    ${AllowAttendeeToEnableCamera},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether attendees can turn on their microphone.
    ${AllowAttendeeToEnableMic},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates if Teams reactions are enabled for the meeting.
    ${AllowTeamworkReactions},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # onlineMeetingPresenters
    ${AllowedPresenters},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for AlternativeRecording (The content stream of the alternative recording of a Microsoft Teams live event.
    # Read-only.)
    ${AlternativeRecordingInputFile},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${AnonymizeIdentityForRoles},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingAttendanceReport1[]]
    # The attendance reports of an online meeting.
    # Read-only.
    # To construct, please use Get-Help -Online and see NOTES section for ATTENDANCEREPORTS properties and create a hash table.
    ${AttendanceReports},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for AttendeeReport (The content stream of the attendee report of a Teams live event.
    # Read-only.)
    ${AttendeeReportInputFile},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAudioConferencing]
    # audioConferencing
    # To construct, please use Get-Help -Online and see NOTES section for AUDIOCONFERENCING properties and create a hash table.
    ${AudioConferencing},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBroadcastMeetingSettings]
    # broadcastMeetingSettings
    # To construct, please use Get-Help -Online and see NOTES section for BROADCASTSETTINGS properties and create a hash table.
    ${BroadcastSettings},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Capabilities},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphChatInfo]
    # chatInfo
    # To construct, please use Get-Help -Online and see NOTES section for CHATINFO properties and create a hash table.
    ${ChatInfo},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting creation time in UTC.
    # Read-only.
    ${CreationDateTime},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting end time in UTC.
    ${EndDateTime},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The external ID.
    # A custom ID.
    # Optional.
    ${ExternalId},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether this is a Teams live event.
    ${IsBroadcast},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether to announce when callers join or leave.
    ${IsEntryExitAnnounced},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemBody]
    # itemBody
    # To construct, please use Get-Help -Online and see NOTES section for JOININFORMATION properties and create a hash table.
    ${JoinInformation},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphJoinMeetingIdSettings]
    # joinMeetingIdSettings
    # To construct, please use Get-Help -Online and see NOTES section for JOINMEETINGIDSETTINGS properties and create a hash table.
    ${JoinMeetingIdSettings},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${JoinUrl},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The join URL of the online meeting.
    # Read-only.
    ${JoinWebUrl},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphLobbyBypassSettings]
    # lobbyBypassSettings
    # To construct, please use Get-Help -Online and see NOTES section for LOBBYBYPASSSETTINGS properties and create a hash table.
    ${LobbyBypassSettings},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingAttendanceReport1]
    # meetingAttendanceReport
    # To construct, please use Get-Help -Online and see NOTES section for MEETINGATTENDANCEREPORT properties and create a hash table.
    ${MeetingAttendanceReport},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingParticipants1]
    # meetingParticipants
    # To construct, please use Get-Help -Online and see NOTES section for PARTICIPANTS properties and create a hash table.
    ${Participants},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether to record the meeting automatically.
    ${RecordAutomatically},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for Recording (The content stream of the recording of a Teams live event.
    # Read-only.)
    ${RecordingInputFile},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistration]
    # meetingRegistration
    # To construct, please use Get-Help -Online and see NOTES section for REGISTRATION properties and create a hash table.
    ${Registration},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting start time in UTC.
    ${StartDateTime},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The subject of the online meeting.
    ${Subject},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallTranscript[]]
    # The transcripts of an online meeting.
    # Read-only.
    # To construct, please use Get-Help -Online and see NOTES section for TRANSCRIPTS properties and create a hash table.
    ${Transcripts},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The video teleconferencing ID.
    # Read-only.
    ${VideoTeleconferenceId},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphVirtualAppointment]
    # virtualAppointment
    # To construct, please use Get-Help -Online and see NOTES section for VIRTUALAPPOINTMENT properties and create a hash table.
    ${VirtualAppointment},

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
            Create2 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationOnlineMeeting_Create2';
            CreateExpanded2 = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationOnlineMeeting_CreateExpanded2';
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
Create new navigation property to presences for communications
.Description
Create new navigation property to presences for communications

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPresence1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPresence1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/new-mgcommunicationpresence
#>
function New-MgCommunicationPresence {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPresence1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPresence1]
    # presence
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The supplemental information to a user's availability.
    # Possible values are Available, Away, BeRightBack, Busy, DoNotDisturb, InACall, InAConferenceCall, Inactive,InAMeeting, Offline, OffWork,OutOfOffice, PresenceUnknown,Presenting, UrgentInterruptionsOnly.
    ${Activity},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The base presence information for a user.
    # Possible values are Available, AvailableIdle, Away, BeRightBack, Busy, BusyIdle, DoNotDisturb, Offline, PresenceUnknown
    ${Availability},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOutOfOfficeSettings]
    # outOfOfficeSettings
    # To construct, please use Get-Help -Online and see NOTES section for OUTOFOFFICESETTINGS properties and create a hash table.
    ${OutOfOfficeSettings},

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
            Create = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationPresence_Create';
            CreateExpanded = 'Microsoft.Graph.CloudCommunications.private\New-MgCommunicationPresence_CreateExpanded';
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
Create new navigation property to attendanceRecords for users
.Description
Create new navigation property to attendanceRecords for users

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttendanceRecord1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttendanceRecord1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/new-mguseronlinemeetingattendancereportattendancerecord
#>
function New-MgUserOnlineMeetingAttendanceReportAttendanceRecord {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttendanceRecord1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of meetingAttendanceReport
    ${MeetingAttendanceReportId},

    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttendanceRecord1]
    # attendanceRecord
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttendanceInterval[]]
    # List of time periods between joining and leaving a meeting.
    # To construct, please use Get-Help -Online and see NOTES section for ATTENDANCEINTERVALS properties and create a hash table.
    ${AttendanceIntervals},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Email address of the user associated with this atttendance record.
    ${EmailAddress},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentity]
    # identity
    # To construct, please use Get-Help -Online and see NOTES section for IDENTITY properties and create a hash table.
    ${Identity},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Unique identifier of a meetingRegistrant.
    # Presents when the participant has registered for the meeting.
    ${RegistrantId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Role of the attendee.
    # Possible values are: None, Attendee, Presenter, and Organizer.
    ${Role},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Total duration of the attendances in seconds.
    ${TotalAttendanceInSeconds},

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
            Create = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeetingAttendanceReportAttendanceRecord_Create';
            Create1 = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeetingAttendanceReportAttendanceRecord_Create1';
            CreateExpanded = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeetingAttendanceReportAttendanceRecord_CreateExpanded';
            CreateExpanded1 = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeetingAttendanceReportAttendanceRecord_CreateExpanded1';
            CreateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeetingAttendanceReportAttendanceRecord_CreateViaIdentity';
            CreateViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeetingAttendanceReportAttendanceRecord_CreateViaIdentity1';
            CreateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeetingAttendanceReportAttendanceRecord_CreateViaIdentityExpanded';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeetingAttendanceReportAttendanceRecord_CreateViaIdentityExpanded1';
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
Create new navigation property to attendanceReports for users
.Description
Create new navigation property to attendanceReports for users

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingAttendanceReport1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingAttendanceReport1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/new-mguseronlinemeetingattendancereport
#>
function New-MgUserOnlineMeetingAttendanceReport {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingAttendanceReport1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingAttendanceReport1]
    # meetingAttendanceReport
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttendanceRecord1[]]
    # List of attendance records of an attendance report.
    # Read-only.
    # To construct, please use Get-Help -Online and see NOTES section for ATTENDANCERECORDS properties and create a hash table.
    ${AttendanceRecords},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # UTC time when the meeting ended.
    # Read-only.
    ${MeetingEndDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # UTC time when the meeting started.
    # Read-only.
    ${MeetingStartDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Total number of participants.
    # Read-only.
    ${TotalParticipantCount},

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
            Create = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeetingAttendanceReport_Create';
            CreateExpanded = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeetingAttendanceReport_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeetingAttendanceReport_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeetingAttendanceReport_CreateViaIdentityExpanded';
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
Create new navigation property to customQuestions for users
.Description
Create new navigation property to customQuestions for users

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrationQuestion
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrationQuestion
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/new-mguseronlinemeetingregistrationcustomquestion
#>
function New-MgUserOnlineMeetingRegistrationCustomQuestion {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrationQuestion])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrationQuestion]
    # meetingRegistrationQuestion
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # answerInputType
    ${AnswerInputType},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Answer options when answerInputType is radioButton.
    ${AnswerOptions},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Display name of the custom registration question.
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether the question is required.
    # Default value is false.
    ${IsRequired},

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
            Create = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeetingRegistrationCustomQuestion_Create';
            CreateExpanded = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeetingRegistrationCustomQuestion_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeetingRegistrationCustomQuestion_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeetingRegistrationCustomQuestion_CreateViaIdentityExpanded';
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
Create new navigation property to transcripts for users
.Description
Create new navigation property to transcripts for users

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallTranscript
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallTranscript
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/new-mguseronlinemeetingtranscript
#>
function New-MgUserOnlineMeetingTranscript {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallTranscript])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallTranscript]
    # callTranscript
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for Content (A field representing the content of the transcript.
    # Read-only.)
    ${ContentInputFile},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Date and time at which the transcript was created.
    # Read-only.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

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
            Create = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeetingTranscript_Create';
            CreateExpanded = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeetingTranscript_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeetingTranscript_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeetingTranscript_CreateViaIdentityExpanded';
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
Create new navigation property to onlineMeetings for users
.Description
Create new navigation property to onlineMeetings for users
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	StartDateTime = [System.DateTime]::Parse("2019-07-12T14:30:34.2444915-07:00")
	EndDateTime = [System.DateTime]::Parse("2019-07-12T15:00:34.2464912-07:00")
	Subject = "User Token Meeting"
}
# A UPN can also be used as -UserId.
New-MgUserOnlineMeeting -UserId $userId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/new-mguseronlinemeeting
#>
function New-MgUserOnlineMeeting {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting1]
    # onlineMeeting
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether attendees can turn on their camera.
    ${AllowAttendeeToEnableCamera},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether attendees can turn on their microphone.
    ${AllowAttendeeToEnableMic},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates if Teams reactions are enabled for the meeting.
    ${AllowTeamworkReactions},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # onlineMeetingPresenters
    ${AllowedPresenters},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for AlternativeRecording (The content stream of the alternative recording of a Microsoft Teams live event.
    # Read-only.)
    ${AlternativeRecordingInputFile},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${AnonymizeIdentityForRoles},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingAttendanceReport1[]]
    # The attendance reports of an online meeting.
    # Read-only.
    # To construct, please use Get-Help -Online and see NOTES section for ATTENDANCEREPORTS properties and create a hash table.
    ${AttendanceReports},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for AttendeeReport (The content stream of the attendee report of a Teams live event.
    # Read-only.)
    ${AttendeeReportInputFile},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAudioConferencing]
    # audioConferencing
    # To construct, please use Get-Help -Online and see NOTES section for AUDIOCONFERENCING properties and create a hash table.
    ${AudioConferencing},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBroadcastMeetingSettings]
    # broadcastMeetingSettings
    # To construct, please use Get-Help -Online and see NOTES section for BROADCASTSETTINGS properties and create a hash table.
    ${BroadcastSettings},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Capabilities},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphChatInfo]
    # chatInfo
    # To construct, please use Get-Help -Online and see NOTES section for CHATINFO properties and create a hash table.
    ${ChatInfo},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting creation time in UTC.
    # Read-only.
    ${CreationDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting end time in UTC.
    ${EndDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The external ID.
    # A custom ID.
    # Optional.
    ${ExternalId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether this is a Teams live event.
    ${IsBroadcast},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether to announce when callers join or leave.
    ${IsEntryExitAnnounced},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemBody]
    # itemBody
    # To construct, please use Get-Help -Online and see NOTES section for JOININFORMATION properties and create a hash table.
    ${JoinInformation},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphJoinMeetingIdSettings]
    # joinMeetingIdSettings
    # To construct, please use Get-Help -Online and see NOTES section for JOINMEETINGIDSETTINGS properties and create a hash table.
    ${JoinMeetingIdSettings},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${JoinUrl},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The join URL of the online meeting.
    # Read-only.
    ${JoinWebUrl},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphLobbyBypassSettings]
    # lobbyBypassSettings
    # To construct, please use Get-Help -Online and see NOTES section for LOBBYBYPASSSETTINGS properties and create a hash table.
    ${LobbyBypassSettings},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingAttendanceReport1]
    # meetingAttendanceReport
    # To construct, please use Get-Help -Online and see NOTES section for MEETINGATTENDANCEREPORT properties and create a hash table.
    ${MeetingAttendanceReport},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingParticipants1]
    # meetingParticipants
    # To construct, please use Get-Help -Online and see NOTES section for PARTICIPANTS properties and create a hash table.
    ${Participants},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether to record the meeting automatically.
    ${RecordAutomatically},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for Recording (The content stream of the recording of a Teams live event.
    # Read-only.)
    ${RecordingInputFile},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistration]
    # meetingRegistration
    # To construct, please use Get-Help -Online and see NOTES section for REGISTRATION properties and create a hash table.
    ${Registration},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting start time in UTC.
    ${StartDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The subject of the online meeting.
    ${Subject},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallTranscript[]]
    # The transcripts of an online meeting.
    # Read-only.
    # To construct, please use Get-Help -Online and see NOTES section for TRANSCRIPTS properties and create a hash table.
    ${Transcripts},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The video teleconferencing ID.
    # Read-only.
    ${VideoTeleconferenceId},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphVirtualAppointment]
    # virtualAppointment
    # To construct, please use Get-Help -Online and see NOTES section for VIRTUALAPPOINTMENT properties and create a hash table.
    ${VirtualAppointment},

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
            Create = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeeting_Create';
            CreateExpanded = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeeting_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeeting_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\New-MgUserOnlineMeeting_CreateViaIdentityExpanded';
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
Delete navigation property audioRoutingGroups for communications
.Description
Delete navigation property audioRoutingGroups for communications
.Example
Import-Module Microsoft.Graph.CloudCommunications
Remove-MgCommunicationCallAudioRoutingGroup -CallId $callId -AudioRoutingGroupId $audioRoutingGroupId

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/remove-mgcommunicationcallaudioroutinggroup
#>
function Remove-MgCommunicationCallAudioRoutingGroup {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of audioRoutingGroup
    ${AudioRoutingGroupId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Delete = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationCallAudioRoutingGroup_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationCallAudioRoutingGroup_DeleteViaIdentity';
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
Delete navigation property contentSharingSessions for communications
.Description
Delete navigation property contentSharingSessions for communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/remove-mgcommunicationcallcontentsharingsession
#>
function Remove-MgCommunicationCallContentSharingSession {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of contentSharingSession
    ${ContentSharingSessionId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Delete1 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationCallContentSharingSession_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationCallContentSharingSession_DeleteViaIdentity1';
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
Delete navigation property operations for communications
.Description
Delete navigation property operations for communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/remove-mgcommunicationcalloperation
#>
function Remove-MgCommunicationCallOperation {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of commsOperation
    ${CommsOperationId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Delete1 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationCallOperation_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationCallOperation_DeleteViaIdentity1';
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
Delete navigation property participants for communications
.Description
Delete navigation property participants for communications
.Example
Import-Module Microsoft.Graph.CloudCommunications
Remove-MgCommunicationCallParticipant -CallId $callId -ParticipantId $participantId
.Example
Import-Module Microsoft.Graph.CloudCommunications
Remove-MgCommunicationCallParticipant -CallId $callId -ParticipantId $participantId
.Example
Import-Module Microsoft.Graph.CloudCommunications
Remove-MgCommunicationCallParticipant -CallId $callId -ParticipantId $participantId

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/remove-mgcommunicationcallparticipant
#>
function Remove-MgCommunicationCallParticipant {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of participant
    ${ParticipantId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Delete1 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationCallParticipant_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationCallParticipant_DeleteViaIdentity1';
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
Delete navigation property sessions for communications
.Description
Delete navigation property sessions for communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/remove-mgcommunicationcallrecordsession
#>
function Remove-MgCommunicationCallRecordSession {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of callRecord
    ${CallRecordId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of session
    ${SessionId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Delete1 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationCallRecordSession_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationCallRecordSession_DeleteViaIdentity1';
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
Delete navigation property calls for communications
.Description
Delete navigation property calls for communications
.Example
Import-Module Microsoft.Graph.CloudCommunications
Remove-MgCommunicationCall -CallId $callId

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/remove-mgcommunicationcall
#>
function Remove-MgCommunicationCall {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Delete1 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationCall_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationCall_DeleteViaIdentity1';
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
Delete navigation property attendanceRecords for communications
.Description
Delete navigation property attendanceRecords for communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/remove-mgcommunicationonlinemeetingattendancereportattendancerecord
#>
function Remove-MgCommunicationOnlineMeetingAttendanceReportAttendanceRecord {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete2', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Parameter(ParameterSetName='Delete2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of attendanceRecord
    ${AttendanceRecordId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of meetingAttendanceReport
    ${MeetingAttendanceReportId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Parameter(ParameterSetName='Delete2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='DeleteViaIdentity2', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Delete1 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationOnlineMeetingAttendanceReportAttendanceRecord_Delete1';
            Delete2 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationOnlineMeetingAttendanceReportAttendanceRecord_Delete2';
            DeleteViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationOnlineMeetingAttendanceReportAttendanceRecord_DeleteViaIdentity1';
            DeleteViaIdentity2 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationOnlineMeetingAttendanceReportAttendanceRecord_DeleteViaIdentity2';
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
Delete navigation property attendanceReports for communications
.Description
Delete navigation property attendanceReports for communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/remove-mgcommunicationonlinemeetingattendancereport
#>
function Remove-MgCommunicationOnlineMeetingAttendanceReport {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete2', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of meetingAttendanceReport
    ${MeetingAttendanceReportId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Parameter(ParameterSetName='Delete2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='DeleteViaIdentity2', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Delete1 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationOnlineMeetingAttendanceReport_Delete1';
            Delete2 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationOnlineMeetingAttendanceReport_Delete2';
            DeleteViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationOnlineMeetingAttendanceReport_DeleteViaIdentity1';
            DeleteViaIdentity2 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationOnlineMeetingAttendanceReport_DeleteViaIdentity2';
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
Delete navigation property customQuestions for communications
.Description
Delete navigation property customQuestions for communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/remove-mgcommunicationonlinemeetingregistrationcustomquestion
#>
function Remove-MgCommunicationOnlineMeetingRegistrationCustomQuestion {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of meetingRegistrationQuestion
    ${MeetingRegistrationQuestionId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Delete = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationOnlineMeetingRegistrationCustomQuestion_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationOnlineMeetingRegistrationCustomQuestion_DeleteViaIdentity';
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
Delete navigation property registration for communications
.Description
Delete navigation property registration for communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/remove-mgcommunicationonlinemeetingregistration
#>
function Remove-MgCommunicationOnlineMeetingRegistration {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Delete = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationOnlineMeetingRegistration_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationOnlineMeetingRegistration_DeleteViaIdentity';
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
Delete navigation property transcripts for communications
.Description
Delete navigation property transcripts for communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/remove-mgcommunicationonlinemeetingtranscript
#>
function Remove-MgCommunicationOnlineMeetingTranscript {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of callTranscript
    ${CallTranscriptId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Delete = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationOnlineMeetingTranscript_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationOnlineMeetingTranscript_DeleteViaIdentity';
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
Delete navigation property virtualAppointment for communications
.Description
Delete navigation property virtualAppointment for communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/remove-mgcommunicationonlinemeetingvirtualappointment
#>
function Remove-MgCommunicationOnlineMeetingVirtualAppointment {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Delete = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationOnlineMeetingVirtualAppointment_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationOnlineMeetingVirtualAppointment_DeleteViaIdentity';
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
Delete navigation property onlineMeetings for communications
.Description
Delete navigation property onlineMeetings for communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/remove-mgcommunicationonlinemeeting
#>
function Remove-MgCommunicationOnlineMeeting {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Delete1 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationOnlineMeeting_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationOnlineMeeting_DeleteViaIdentity1';
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
Delete navigation property presences for communications
.Description
Delete navigation property presences for communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/remove-mgcommunicationpresence
#>
function Remove-MgCommunicationPresence {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of presence
    ${PresenceId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Delete = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationPresence_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Remove-MgCommunicationPresence_DeleteViaIdentity';
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
Delete navigation property attendanceRecords for users
.Description
Delete navigation property attendanceRecords for users

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/remove-mguseronlinemeetingattendancereportattendancerecord
#>
function Remove-MgUserOnlineMeetingAttendanceReportAttendanceRecord {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of attendanceRecord
    ${AttendanceRecordId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of meetingAttendanceReport
    ${MeetingAttendanceReportId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Delete = 'Microsoft.Graph.CloudCommunications.private\Remove-MgUserOnlineMeetingAttendanceReportAttendanceRecord_Delete';
            Delete1 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgUserOnlineMeetingAttendanceReportAttendanceRecord_Delete1';
            DeleteViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Remove-MgUserOnlineMeetingAttendanceReportAttendanceRecord_DeleteViaIdentity';
            DeleteViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgUserOnlineMeetingAttendanceReportAttendanceRecord_DeleteViaIdentity1';
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
Delete navigation property attendanceReports for users
.Description
Delete navigation property attendanceReports for users

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/remove-mguseronlinemeetingattendancereport
#>
function Remove-MgUserOnlineMeetingAttendanceReport {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of meetingAttendanceReport
    ${MeetingAttendanceReportId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Delete = 'Microsoft.Graph.CloudCommunications.private\Remove-MgUserOnlineMeetingAttendanceReport_Delete';
            Delete1 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgUserOnlineMeetingAttendanceReport_Delete1';
            DeleteViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Remove-MgUserOnlineMeetingAttendanceReport_DeleteViaIdentity';
            DeleteViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Remove-MgUserOnlineMeetingAttendanceReport_DeleteViaIdentity1';
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
Delete navigation property customQuestions for users
.Description
Delete navigation property customQuestions for users
.Example
Import-Module Microsoft.Graph.CloudCommunications
# A UPN can also be used as -UserId.
Remove-MgUserOnlineMeetingRegistrationCustomQuestion -UserId $userId -OnlineMeetingId $onlineMeetingId -MeetingRegistrationQuestionId $meetingRegistrationQuestionId

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/remove-mguseronlinemeetingregistrationcustomquestion
#>
function Remove-MgUserOnlineMeetingRegistrationCustomQuestion {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of meetingRegistrationQuestion
    ${MeetingRegistrationQuestionId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Delete = 'Microsoft.Graph.CloudCommunications.private\Remove-MgUserOnlineMeetingRegistrationCustomQuestion_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Remove-MgUserOnlineMeetingRegistrationCustomQuestion_DeleteViaIdentity';
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
Delete navigation property registration for users
.Description
Delete navigation property registration for users
.Example
Import-Module Microsoft.Graph.CloudCommunications
# A UPN can also be used as -UserId.
Remove-MgUserOnlineMeetingRegistration -UserId $userId -OnlineMeetingId $onlineMeetingId
.Example
Import-Module Microsoft.Graph.CloudCommunications
# A UPN can also be used as -UserId.
Remove-MgUserOnlineMeetingRegistration -UserId $userId -OnlineMeetingId $onlineMeetingId

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/remove-mguseronlinemeetingregistration
#>
function Remove-MgUserOnlineMeetingRegistration {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Delete = 'Microsoft.Graph.CloudCommunications.private\Remove-MgUserOnlineMeetingRegistration_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Remove-MgUserOnlineMeetingRegistration_DeleteViaIdentity';
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
Delete navigation property transcripts for users
.Description
Delete navigation property transcripts for users

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/remove-mguseronlinemeetingtranscript
#>
function Remove-MgUserOnlineMeetingTranscript {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of callTranscript
    ${CallTranscriptId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Delete = 'Microsoft.Graph.CloudCommunications.private\Remove-MgUserOnlineMeetingTranscript_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Remove-MgUserOnlineMeetingTranscript_DeleteViaIdentity';
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
Delete navigation property virtualAppointment for users
.Description
Delete navigation property virtualAppointment for users

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/remove-mguseronlinemeetingvirtualappointment
#>
function Remove-MgUserOnlineMeetingVirtualAppointment {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Delete = 'Microsoft.Graph.CloudCommunications.private\Remove-MgUserOnlineMeetingVirtualAppointment_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Remove-MgUserOnlineMeetingVirtualAppointment_DeleteViaIdentity';
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
Delete navigation property onlineMeetings for users
.Description
Delete navigation property onlineMeetings for users
.Example
Import-Module Microsoft.Graph.CloudCommunications
# A UPN can also be used as -UserId.
Remove-MgUserOnlineMeeting -UserId $userId -OnlineMeetingId $onlineMeetingId

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/remove-mguseronlinemeeting
#>
function Remove-MgUserOnlineMeeting {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Delete = 'Microsoft.Graph.CloudCommunications.private\Remove-MgUserOnlineMeeting_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Remove-MgUserOnlineMeeting_DeleteViaIdentity';
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
Delete navigation property presence for users
.Description
Delete navigation property presence for users

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/remove-mguserpresence
#>
function Remove-MgUserPresence {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
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
            Delete = 'Microsoft.Graph.CloudCommunications.private\Remove-MgUserPresence_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Remove-MgUserPresence_DeleteViaIdentity';
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
Invoke action changeScreenSharingRole
.Description
Invoke action changeScreenSharingRole
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	Role = "viewer"
}
Rename-MgCommunicationCallScreenSharingRole -CallId $callId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPathsOj95ZpCommunicationsCallsCallIdMicrosoftGraphChangescreensharingrolePostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/rename-mgcommunicationcallscreensharingrole
#>
function Rename-MgCommunicationCallScreenSharingRole {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='ChangeExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Change1', Mandatory)]
    [Parameter(ParameterSetName='ChangeExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='ChangeViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ChangeViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Change1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ChangeViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsOj95ZpCommunicationsCallsCallIdMicrosoftGraphChangescreensharingrolePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='ChangeExpanded1')]
    [Parameter(ParameterSetName='ChangeViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='ChangeExpanded1')]
    [Parameter(ParameterSetName='ChangeViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # screenSharingRole
    ${Role},

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
            Change1 = 'Microsoft.Graph.CloudCommunications.private\Rename-MgCommunicationCallScreenSharingRole_Change1';
            ChangeExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Rename-MgCommunicationCallScreenSharingRole_ChangeExpanded1';
            ChangeViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Rename-MgCommunicationCallScreenSharingRole_ChangeViaIdentity1';
            ChangeViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Rename-MgCommunicationCallScreenSharingRole_ChangeViaIdentityExpanded1';
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
The content stream of the alternative recording of a Microsoft Teams live event.
Read-only.
.Description
The content stream of the alternative recording of a Microsoft Teams live event.
Read-only.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
System.IO.Stream
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/set-mgcommunicationonlinemeetingalternativerecording
#>
function Set-MgCommunicationOnlineMeetingAlternativeRecording {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Set', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Set', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='SetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.IO.Stream]
    # .
    ${BodyParameter},

    [Parameter(Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.String]
    # The path to the file to upload.
    # This should include a path and file name.
    # If you omit the path, the current location will be used.
    ${InFile},

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
            Set = 'Microsoft.Graph.CloudCommunications.private\Set-MgCommunicationOnlineMeetingAlternativeRecording_Set';
            SetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Set-MgCommunicationOnlineMeetingAlternativeRecording_SetViaIdentity';
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
The content stream of the attendee report of a Teams live event.
Read-only.
.Description
The content stream of the attendee report of a Teams live event.
Read-only.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
System.IO.Stream
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/set-mgcommunicationonlinemeetingattendeereport
#>
function Set-MgCommunicationOnlineMeetingAttendeeReport {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Set1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Set1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='SetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.IO.Stream]
    # .
    ${BodyParameter},

    [Parameter(Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.String]
    # The path to the file to upload.
    # This should include a path and file name.
    # If you omit the path, the current location will be used.
    ${InFile},

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
            Set1 = 'Microsoft.Graph.CloudCommunications.private\Set-MgCommunicationOnlineMeetingAttendeeReport_Set1';
            SetViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Set-MgCommunicationOnlineMeetingAttendeeReport_SetViaIdentity1';
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
The content stream of the recording of a Teams live event.
Read-only.
.Description
The content stream of the recording of a Teams live event.
Read-only.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
System.IO.Stream
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/set-mgcommunicationonlinemeetingrecording
#>
function Set-MgCommunicationOnlineMeetingRecording {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Set', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Set', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='SetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.IO.Stream]
    # .
    ${BodyParameter},

    [Parameter(Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.String]
    # The path to the file to upload.
    # This should include a path and file name.
    # If you omit the path, the current location will be used.
    ${InFile},

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
            Set = 'Microsoft.Graph.CloudCommunications.private\Set-MgCommunicationOnlineMeetingRecording_Set';
            SetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Set-MgCommunicationOnlineMeetingRecording_SetViaIdentity';
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
A field representing the content of the transcript.
Read-only.
.Description
A field representing the content of the transcript.
Read-only.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
System.IO.Stream
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/set-mgcommunicationonlinemeetingtranscriptcontent
#>
function Set-MgCommunicationOnlineMeetingTranscriptContent {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Set', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Set', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of callTranscript
    ${CallTranscriptId},

    [Parameter(ParameterSetName='Set', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='SetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.IO.Stream]
    # .
    ${BodyParameter},

    [Parameter(Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.String]
    # The path to the file to upload.
    # This should include a path and file name.
    # If you omit the path, the current location will be used.
    ${InFile},

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
            Set = 'Microsoft.Graph.CloudCommunications.private\Set-MgCommunicationOnlineMeetingTranscriptContent_Set';
            SetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Set-MgCommunicationOnlineMeetingTranscriptContent_SetViaIdentity';
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
Invoke action setUserPreferredPresence
.Description
Invoke action setUserPreferredPresence

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPaths16OmbuoCommunicationsPresencesPresenceIdMicrosoftGraphSetuserpreferredpresencePostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/set-mgcommunicationpresenceuserpreferredpresence
#>
function Set-MgCommunicationPresenceUserPreferredPresence {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='SetExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Set', Mandatory)]
    [Parameter(ParameterSetName='SetExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of presence
    ${PresenceId},

    [Parameter(ParameterSetName='SetViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SetViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Set', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths16OmbuoCommunicationsPresencesPresenceIdMicrosoftGraphSetuserpreferredpresencePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Activity},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Availability},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.TimeSpan]
    # .
    ${ExpirationDuration},

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
            Set = 'Microsoft.Graph.CloudCommunications.private\Set-MgCommunicationPresenceUserPreferredPresence_Set';
            SetExpanded = 'Microsoft.Graph.CloudCommunications.private\Set-MgCommunicationPresenceUserPreferredPresence_SetExpanded';
            SetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Set-MgCommunicationPresenceUserPreferredPresence_SetViaIdentity';
            SetViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Set-MgCommunicationPresenceUserPreferredPresence_SetViaIdentityExpanded';
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
Invoke action setPresence
.Description
Invoke action setPresence

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPathsTm7IsmCommunicationsPresencesPresenceIdMicrosoftGraphSetpresencePostRequestbodyContentApplicationJsonSchema
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/set-mgcommunicationpresence
#>
function Set-MgCommunicationPresence {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='SetExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Set', Mandatory)]
    [Parameter(ParameterSetName='SetExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of presence
    ${PresenceId},

    [Parameter(ParameterSetName='SetViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SetViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Set', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsTm7IsmCommunicationsPresencesPresenceIdMicrosoftGraphSetpresencePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Activity},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Availability},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.TimeSpan]
    # .
    ${ExpirationDuration},

    [Parameter(ParameterSetName='SetExpanded')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${SessionId},

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
            Set = 'Microsoft.Graph.CloudCommunications.private\Set-MgCommunicationPresence_Set';
            SetExpanded = 'Microsoft.Graph.CloudCommunications.private\Set-MgCommunicationPresence_SetExpanded';
            SetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Set-MgCommunicationPresence_SetViaIdentity';
            SetViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Set-MgCommunicationPresence_SetViaIdentityExpanded';
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
The content stream of the alternative recording of a Microsoft Teams live event.
Read-only.
.Description
The content stream of the alternative recording of a Microsoft Teams live event.
Read-only.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
System.IO.Stream
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/set-mguseronlinemeetingalternativerecording
#>
function Set-MgUserOnlineMeetingAlternativeRecording {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Set', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Set', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Set', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='SetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.IO.Stream]
    # .
    ${BodyParameter},

    [Parameter(Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.String]
    # The path to the file to upload.
    # This should include a path and file name.
    # If you omit the path, the current location will be used.
    ${InFile},

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
            Set = 'Microsoft.Graph.CloudCommunications.private\Set-MgUserOnlineMeetingAlternativeRecording_Set';
            SetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Set-MgUserOnlineMeetingAlternativeRecording_SetViaIdentity';
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
The content stream of the attendee report of a Teams live event.
Read-only.
.Description
The content stream of the attendee report of a Teams live event.
Read-only.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
System.IO.Stream
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/set-mguseronlinemeetingattendeereport
#>
function Set-MgUserOnlineMeetingAttendeeReport {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Set', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Set', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Set', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='SetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.IO.Stream]
    # .
    ${BodyParameter},

    [Parameter(Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.String]
    # The path to the file to upload.
    # This should include a path and file name.
    # If you omit the path, the current location will be used.
    ${InFile},

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
            Set = 'Microsoft.Graph.CloudCommunications.private\Set-MgUserOnlineMeetingAttendeeReport_Set';
            SetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Set-MgUserOnlineMeetingAttendeeReport_SetViaIdentity';
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
The content stream of the recording of a Teams live event.
Read-only.
.Description
The content stream of the recording of a Teams live event.
Read-only.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
System.IO.Stream
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/set-mguseronlinemeetingrecording
#>
function Set-MgUserOnlineMeetingRecording {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Set', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Set', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Set', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='SetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.IO.Stream]
    # .
    ${BodyParameter},

    [Parameter(Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.String]
    # The path to the file to upload.
    # This should include a path and file name.
    # If you omit the path, the current location will be used.
    ${InFile},

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
            Set = 'Microsoft.Graph.CloudCommunications.private\Set-MgUserOnlineMeetingRecording_Set';
            SetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Set-MgUserOnlineMeetingRecording_SetViaIdentity';
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
A field representing the content of the transcript.
Read-only.
.Description
A field representing the content of the transcript.
Read-only.

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
System.IO.Stream
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/set-mguseronlinemeetingtranscriptcontent
#>
function Set-MgUserOnlineMeetingTranscriptContent {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Set', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Set', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of callTranscript
    ${CallTranscriptId},

    [Parameter(ParameterSetName='Set', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Set', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='SetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.IO.Stream]
    # .
    ${BodyParameter},

    [Parameter(Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.String]
    # The path to the file to upload.
    # This should include a path and file name.
    # If you omit the path, the current location will be used.
    ${InFile},

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
            Set = 'Microsoft.Graph.CloudCommunications.private\Set-MgUserOnlineMeetingTranscriptContent_Set';
            SetViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Set-MgUserOnlineMeetingTranscriptContent_SetViaIdentity';
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
Invoke action startHoldMusic
.Description
Invoke action startHoldMusic
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	CustomPrompt = @{
		"@odata.type" = "#microsoft.graph.mediaPrompt"
		MediaInfo = @{
			"@odata.type" = "#microsoft.graph.mediaInfo"
			Uri = "https://bot.contoso.com/onHold.wav"
		}
	}
	ClientContext = "d45324c1-fcb5-430a-902c-f20af696537c"
}
Start-MgCommunicationCallParticipantHoldMusic -CallId $callId -ParticipantId $participantId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPathsKtcw9WCommunicationsCallsCallIdParticipantsParticipantIdMicrosoftGraphStartholdmusicPostRequestbodyContentApplicationJsonSchema
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphStartHoldMusicOperation
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/start-mgcommunicationcallparticipantholdmusic
#>
function Start-MgCommunicationCallParticipantHoldMusic {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphStartHoldMusicOperation])]
[CmdletBinding(DefaultParameterSetName='StartExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Start1', Mandatory)]
    [Parameter(ParameterSetName='StartExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='Start1', Mandatory)]
    [Parameter(ParameterSetName='StartExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of participant
    ${ParticipantId},

    [Parameter(ParameterSetName='StartViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='StartViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Start1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='StartViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsKtcw9WCommunicationsCallsCallIdParticipantsParticipantIdMicrosoftGraphStartholdmusicPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='StartExpanded1')]
    [Parameter(ParameterSetName='StartViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='StartExpanded1')]
    [Parameter(ParameterSetName='StartViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ClientContext},

    [Parameter(ParameterSetName='StartExpanded1')]
    [Parameter(ParameterSetName='StartViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPrompt]))]
    [System.Collections.Hashtable]
    # prompt
    ${CustomPrompt},

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
            Start1 = 'Microsoft.Graph.CloudCommunications.private\Start-MgCommunicationCallParticipantHoldMusic_Start1';
            StartExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Start-MgCommunicationCallParticipantHoldMusic_StartExpanded1';
            StartViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Start-MgCommunicationCallParticipantHoldMusic_StartViaIdentity1';
            StartViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Start-MgCommunicationCallParticipantHoldMusic_StartViaIdentityExpanded1';
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
Invoke action cancelMediaProcessing
.Description
Invoke action cancelMediaProcessing
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	ClientContext = "clientContext-value"
}
Stop-MgCommunicationCallMediaProcessing -CallId $callId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPathsYp37FjCommunicationsCallsCallIdMicrosoftGraphCancelmediaprocessingPostRequestbodyContentApplicationJsonSchema
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCancelMediaProcessingOperation
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/stop-mgcommunicationcallmediaprocessing
#>
function Stop-MgCommunicationCallMediaProcessing {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCancelMediaProcessingOperation])]
[CmdletBinding(DefaultParameterSetName='CancelExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Cancel1', Mandatory)]
    [Parameter(ParameterSetName='CancelExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='CancelViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CancelViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Cancel1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CancelViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsYp37FjCommunicationsCallsCallIdMicrosoftGraphCancelmediaprocessingPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CancelExpanded1')]
    [Parameter(ParameterSetName='CancelViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CancelExpanded1')]
    [Parameter(ParameterSetName='CancelViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ClientContext},

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
            Cancel1 = 'Microsoft.Graph.CloudCommunications.private\Stop-MgCommunicationCallMediaProcessing_Cancel1';
            CancelExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Stop-MgCommunicationCallMediaProcessing_CancelExpanded1';
            CancelViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Stop-MgCommunicationCallMediaProcessing_CancelViaIdentity1';
            CancelViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Stop-MgCommunicationCallMediaProcessing_CancelViaIdentityExpanded1';
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
Invoke action stopHoldMusic
.Description
Invoke action stopHoldMusic
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	ClientContext = "d45324c1-fcb5-430a-902c-f20af696537c"
}
Stop-MgCommunicationCallParticipantHoldMusic -CallId $callId -ParticipantId $participantId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1AuzqgwCommunicationsCallsCallIdParticipantsParticipantIdMicrosoftGraphStopholdmusicPostRequestbodyContentApplicationJsonSchema
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphStopHoldMusicOperation
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/stop-mgcommunicationcallparticipantholdmusic
#>
function Stop-MgCommunicationCallParticipantHoldMusic {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphStopHoldMusicOperation])]
[CmdletBinding(DefaultParameterSetName='StopExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Stop1', Mandatory)]
    [Parameter(ParameterSetName='StopExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='Stop1', Mandatory)]
    [Parameter(ParameterSetName='StopExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of participant
    ${ParticipantId},

    [Parameter(ParameterSetName='StopViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='StopViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Stop1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='StopViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1AuzqgwCommunicationsCallsCallIdParticipantsParticipantIdMicrosoftGraphStopholdmusicPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='StopExpanded1')]
    [Parameter(ParameterSetName='StopViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='StopExpanded1')]
    [Parameter(ParameterSetName='StopViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ClientContext},

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
            Stop1 = 'Microsoft.Graph.CloudCommunications.private\Stop-MgCommunicationCallParticipantHoldMusic_Stop1';
            StopExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Stop-MgCommunicationCallParticipantHoldMusic_StopExpanded1';
            StopViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Stop-MgCommunicationCallParticipantHoldMusic_StopViaIdentity1';
            StopViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Stop-MgCommunicationCallParticipantHoldMusic_StopViaIdentityExpanded1';
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
Update the navigation property audioRoutingGroups in communications
.Description
Update the navigation property audioRoutingGroups in communications
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	Id = "oneToOne"
	RoutingMode = "oneToOne"
	Sources = @(
		"632899f8-2ea1-4604-8413-27bd2892079f"
	)
	Receivers = @(
		"550fae72-d251-43ec-868c-373732c2704f"
		"72f988bf-86f1-41af-91ab-2d7cd011db47"
	)
}
Update-MgCommunicationCallAudioRoutingGroup -CallId $callId -AudioRoutingGroupId $audioRoutingGroupId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAudioRoutingGroup1
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mgcommunicationcallaudioroutinggroup
#>
function Update-MgCommunicationCallAudioRoutingGroup {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of audioRoutingGroup
    ${AudioRoutingGroupId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAudioRoutingGroup1]
    # audioRoutingGroup
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
    # .
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # List of receiving participant ids.
    ${Receivers},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${RoutingMode},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # List of source participant ids.
    ${Sources},

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
            Update = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallAudioRoutingGroup_Update';
            UpdateExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallAudioRoutingGroup_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallAudioRoutingGroup_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallAudioRoutingGroup_UpdateViaIdentityExpanded';
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
Update the navigation property contentSharingSessions in communications
.Description
Update the navigation property contentSharingSessions in communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
System.Collections.Hashtable
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mgcommunicationcallcontentsharingsession
#>
function Update-MgCommunicationCallContentSharingSession {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of contentSharingSession
    ${ContentSharingSessionId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(Required, PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphContentSharingSession]))]
    [System.Collections.Hashtable]
    # contentSharingSession
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
    # .
    ${Id},

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
            Update = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallContentSharingSession_Update';
            UpdateExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallContentSharingSession_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallContentSharingSession_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallContentSharingSession_UpdateViaIdentityExpanded';
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
Update the navigation property operations in communications
.Description
Update the navigation property operations in communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCommsOperation
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mgcommunicationcalloperation
#>
function Update-MgCommunicationCallOperation {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of commsOperation
    ${CommsOperationId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCommsOperation]
    # commsOperation
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Unique Client Context string.
    # Max limit is 256 chars.
    ${ClientContext},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphResultInfo]
    # resultInfo
    # To construct, please use Get-Help -Online and see NOTES section for RESULTINFO properties and create a hash table.
    ${ResultInfo},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # operationStatus
    ${Status},

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
            Update1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallOperation_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallOperation_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallOperation_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallOperation_UpdateViaIdentityExpanded1';
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
Update the navigation property participants in communications
.Description
Update the navigation property participants in communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipant1
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mgcommunicationcallparticipant
#>
function Update-MgCommunicationCallParticipant {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of participant
    ${ParticipantId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipant1]
    # participant
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphParticipantInfo1]
    # participantInfo
    # To construct, please use Get-Help -Online and see NOTES section for INFO properties and create a hash table.
    ${Info},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsIdentityAnonymized},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # true if the participant is in lobby.
    ${IsInLobby},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # true if the participant is muted (client or server muted).
    ${IsMuted},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMediaStream1[]]
    # The list of media streams.
    # To construct, please use Get-Help -Online and see NOTES section for MEDIASTREAMS properties and create a hash table.
    ${MediaStreams},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # A blob of data provided by the participant in the roster.
    ${Metadata},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecordingInfo1]
    # recordingInfo
    # To construct, please use Get-Help -Online and see NOTES section for RECORDINGINFO properties and create a hash table.
    ${RecordingInfo},

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
            Update1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallParticipant_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallParticipant_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallParticipant_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallParticipant_UpdateViaIdentityExpanded1';
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
Invoke action updateRecordingStatus
.Description
Invoke action updateRecordingStatus
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	ClientContext = "clientContext-value"
	Status = "notRecording | recording | failed"
}
Update-MgCommunicationCallRecordingStatus -CallId $callId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IPathsEipedyCommunicationsCallsCallIdMicrosoftGraphUpdaterecordingstatusPostRequestbodyContentApplicationJsonSchema
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUpdateRecordingStatusOperation
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mgcommunicationcallrecordingstatus
#>
function Update-MgCommunicationCallRecordingStatus {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUpdateRecordingStatusOperation])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of call
    ${CallId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsEipedyCommunicationsCallsCallIdMicrosoftGraphUpdaterecordingstatusPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ClientContext},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # recordingStatus
    ${Status},

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
            Update1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallRecordingStatus_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallRecordingStatus_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallRecordingStatus_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallRecordingStatus_UpdateViaIdentityExpanded1';
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
Update the navigation property sessions in communications
.Description
Update the navigation property sessions in communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsSession
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mgcommunicationcallrecordsession
#>
function Update-MgCommunicationCallRecordSession {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of callRecord
    ${CallRecordId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of session
    ${SessionId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsSession]
    # session
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsEndpoint]
    # endpoint
    # To construct, please use Get-Help -Online and see NOTES section for CALLEE properties and create a hash table.
    ${Callee},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsEndpoint]
    # endpoint
    # To construct, please use Get-Help -Online and see NOTES section for CALLER properties and create a hash table.
    ${Caller},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # UTC time when the last user left the session.
    # The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${EndDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsFailureInfo]
    # failureInfo
    # To construct, please use Get-Help -Online and see NOTES section for FAILUREINFO properties and create a hash table.
    ${FailureInfo},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # List of modalities present in the session.
    # Possible values are: unknown, audio, video, videoBasedScreenSharing, data, screenSharing, unknownFutureValue.
    ${Modalities},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallRecordsSegment[]]
    # The list of segments involved in the session.
    # Read-only.
    # Nullable.
    # To construct, please use Get-Help -Online and see NOTES section for SEGMENTS properties and create a hash table.
    ${Segments},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # UTC time when the first user joined the session.
    # The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${StartDateTime},

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
            Update1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallRecordSession_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallRecordSession_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallRecordSession_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationCallRecordSession_UpdateViaIdentityExpanded1';
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
Update the navigation property attendanceRecords in communications
.Description
Update the navigation property attendanceRecords in communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttendanceRecord1
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mgcommunicationonlinemeetingattendancereportattendancerecord
#>
function Update-MgCommunicationOnlineMeetingAttendanceReportAttendanceRecord {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded2', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='Update2', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of attendanceRecord
    ${AttendanceRecordId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of meetingAttendanceReport
    ${MeetingAttendanceReportId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='Update2', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity2', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded2', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='Update2', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity2', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttendanceRecord1]
    # attendanceRecord
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttendanceInterval[]]
    # List of time periods between joining and leaving a meeting.
    # To construct, please use Get-Help -Online and see NOTES section for ATTENDANCEINTERVALS properties and create a hash table.
    ${AttendanceIntervals},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Email address of the user associated with this atttendance record.
    ${EmailAddress},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentity]
    # identity
    # To construct, please use Get-Help -Online and see NOTES section for IDENTITY properties and create a hash table.
    ${Identity},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Unique identifier of a meetingRegistrant.
    # Presents when the participant has registered for the meeting.
    ${RegistrantId},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Role of the attendee.
    # Possible values are: None, Attendee, Presenter, and Organizer.
    ${Role},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Total duration of the attendances in seconds.
    ${TotalAttendanceInSeconds},

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
            Update1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingAttendanceReportAttendanceRecord_Update1';
            Update2 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingAttendanceReportAttendanceRecord_Update2';
            UpdateExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingAttendanceReportAttendanceRecord_UpdateExpanded1';
            UpdateExpanded2 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingAttendanceReportAttendanceRecord_UpdateExpanded2';
            UpdateViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingAttendanceReportAttendanceRecord_UpdateViaIdentity1';
            UpdateViaIdentity2 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingAttendanceReportAttendanceRecord_UpdateViaIdentity2';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingAttendanceReportAttendanceRecord_UpdateViaIdentityExpanded1';
            UpdateViaIdentityExpanded2 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingAttendanceReportAttendanceRecord_UpdateViaIdentityExpanded2';
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
Update the navigation property attendanceReports in communications
.Description
Update the navigation property attendanceReports in communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingAttendanceReport1
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mgcommunicationonlinemeetingattendancereport
#>
function Update-MgCommunicationOnlineMeetingAttendanceReport {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded2', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of meetingAttendanceReport
    ${MeetingAttendanceReportId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='Update2', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity2', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded2', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='Update2', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity2', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingAttendanceReport1]
    # meetingAttendanceReport
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttendanceRecord1[]]
    # List of attendance records of an attendance report.
    # Read-only.
    # To construct, please use Get-Help -Online and see NOTES section for ATTENDANCERECORDS properties and create a hash table.
    ${AttendanceRecords},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # UTC time when the meeting ended.
    # Read-only.
    ${MeetingEndDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # UTC time when the meeting started.
    # Read-only.
    ${MeetingStartDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateExpanded2')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Total number of participants.
    # Read-only.
    ${TotalParticipantCount},

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
            Update1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingAttendanceReport_Update1';
            Update2 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingAttendanceReport_Update2';
            UpdateExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingAttendanceReport_UpdateExpanded1';
            UpdateExpanded2 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingAttendanceReport_UpdateExpanded2';
            UpdateViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingAttendanceReport_UpdateViaIdentity1';
            UpdateViaIdentity2 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingAttendanceReport_UpdateViaIdentity2';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingAttendanceReport_UpdateViaIdentityExpanded1';
            UpdateViaIdentityExpanded2 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingAttendanceReport_UpdateViaIdentityExpanded2';
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
Update the navigation property customQuestions in communications
.Description
Update the navigation property customQuestions in communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrationQuestion
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mgcommunicationonlinemeetingregistrationcustomquestion
#>
function Update-MgCommunicationOnlineMeetingRegistrationCustomQuestion {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of meetingRegistrationQuestion
    ${MeetingRegistrationQuestionId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrationQuestion]
    # meetingRegistrationQuestion
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
    # answerInputType
    ${AnswerInputType},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Answer options when answerInputType is radioButton.
    ${AnswerOptions},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Display name of the custom registration question.
    ${DisplayName},

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
    # Indicates whether the question is required.
    # Default value is false.
    ${IsRequired},

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
            Update = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingRegistrationCustomQuestion_Update';
            UpdateExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingRegistrationCustomQuestion_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingRegistrationCustomQuestion_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingRegistrationCustomQuestion_UpdateViaIdentityExpanded';
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
Update the navigation property registration in communications
.Description
Update the navigation property registration in communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistration
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mgcommunicationonlinemeetingregistration
#>
function Update-MgCommunicationOnlineMeetingRegistration {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistration]
    # meetingRegistration
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
    # meetingAudience
    ${AllowedRegistrant},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrationQuestion[]]
    # Custom registration questions.
    # To construct, please use Get-Help -Online and see NOTES section for CUSTOMQUESTIONS properties and create a hash table.
    ${CustomQuestions},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The description of the meeting.
    ${Description},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting end time in UTC.
    ${EndDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrantBase[]]
    # Registrants of the online meeting.
    # To construct, please use Get-Help -Online and see NOTES section for REGISTRANTS properties and create a hash table.
    ${Registrants},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # The number of times the registration page has been visited.
    # Read-only.
    ${RegistrationPageViewCount},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The URL of the registration page.
    # Read-only.
    ${RegistrationPageWebUrl},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingSpeaker[]]
    # The meeting speaker's information.
    # To construct, please use Get-Help -Online and see NOTES section for SPEAKERS properties and create a hash table.
    ${Speakers},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting start time in UTC.
    ${StartDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The subject of the meeting.
    ${Subject},

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
            Update = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingRegistration_Update';
            UpdateExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingRegistration_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingRegistration_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingRegistration_UpdateViaIdentityExpanded';
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
Update the navigation property transcripts in communications
.Description
Update the navigation property transcripts in communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallTranscript
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mgcommunicationonlinemeetingtranscript
#>
function Update-MgCommunicationOnlineMeetingTranscript {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of callTranscript
    ${CallTranscriptId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallTranscript]
    # callTranscript
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
    # Input File for Content (A field representing the content of the transcript.
    # Read-only.)
    ${ContentInputFile},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Date and time at which the transcript was created.
    # Read-only.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

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
            Update = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingTranscript_Update';
            UpdateExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingTranscript_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingTranscript_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingTranscript_UpdateViaIdentityExpanded';
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
Update the navigation property virtualAppointment in communications
.Description
Update the navigation property virtualAppointment in communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphVirtualAppointment
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mgcommunicationonlinemeetingvirtualappointment
#>
function Update-MgCommunicationOnlineMeetingVirtualAppointment {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphVirtualAppointment]
    # virtualAppointment
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
    # The join web URL of the virtual appointment for clients with waiting room and browser join.
    # Optional.
    ${AppointmentClientJoinWebUrl},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphVirtualAppointmentUser[]]
    # The client information for the virtual appointment, including name, email, and SMS phone number.
    # Optional.
    # To construct, please use Get-Help -Online and see NOTES section for APPOINTMENTCLIENTS properties and create a hash table.
    ${AppointmentClients},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The identifier of the appointment from the scheduling system, associated with the current virtual appointment.
    # Optional.
    ${ExternalAppointmentId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The URL of the appointment resource from the scheduling system, associated with the current virtual appointment.
    # Optional.
    ${ExternalAppointmentUrl},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphVirtualAppointmentSettings]
    # virtualAppointmentSettings
    # To construct, please use Get-Help -Online and see NOTES section for SETTINGS properties and create a hash table.
    ${Settings},

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
            Update = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingVirtualAppointment_Update';
            UpdateExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingVirtualAppointment_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingVirtualAppointment_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeetingVirtualAppointment_UpdateViaIdentityExpanded';
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
Update the navigation property onlineMeetings in communications
.Description
Update the navigation property onlineMeetings in communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting1
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mgcommunicationonlinemeeting
#>
function Update-MgCommunicationOnlineMeeting {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting1]
    # onlineMeeting
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether attendees can turn on their camera.
    ${AllowAttendeeToEnableCamera},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether attendees can turn on their microphone.
    ${AllowAttendeeToEnableMic},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates if Teams reactions are enabled for the meeting.
    ${AllowTeamworkReactions},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # onlineMeetingPresenters
    ${AllowedPresenters},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for AlternativeRecording (The content stream of the alternative recording of a Microsoft Teams live event.
    # Read-only.)
    ${AlternativeRecordingInputFile},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${AnonymizeIdentityForRoles},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingAttendanceReport1[]]
    # The attendance reports of an online meeting.
    # Read-only.
    # To construct, please use Get-Help -Online and see NOTES section for ATTENDANCEREPORTS properties and create a hash table.
    ${AttendanceReports},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for AttendeeReport (The content stream of the attendee report of a Teams live event.
    # Read-only.)
    ${AttendeeReportInputFile},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAudioConferencing]
    # audioConferencing
    # To construct, please use Get-Help -Online and see NOTES section for AUDIOCONFERENCING properties and create a hash table.
    ${AudioConferencing},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBroadcastMeetingSettings]
    # broadcastMeetingSettings
    # To construct, please use Get-Help -Online and see NOTES section for BROADCASTSETTINGS properties and create a hash table.
    ${BroadcastSettings},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Capabilities},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphChatInfo]
    # chatInfo
    # To construct, please use Get-Help -Online and see NOTES section for CHATINFO properties and create a hash table.
    ${ChatInfo},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting creation time in UTC.
    # Read-only.
    ${CreationDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting end time in UTC.
    ${EndDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The external ID.
    # A custom ID.
    # Optional.
    ${ExternalId},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether this is a Teams live event.
    ${IsBroadcast},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether to announce when callers join or leave.
    ${IsEntryExitAnnounced},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemBody]
    # itemBody
    # To construct, please use Get-Help -Online and see NOTES section for JOININFORMATION properties and create a hash table.
    ${JoinInformation},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphJoinMeetingIdSettings]
    # joinMeetingIdSettings
    # To construct, please use Get-Help -Online and see NOTES section for JOINMEETINGIDSETTINGS properties and create a hash table.
    ${JoinMeetingIdSettings},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${JoinUrl},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The join URL of the online meeting.
    # Read-only.
    ${JoinWebUrl},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphLobbyBypassSettings]
    # lobbyBypassSettings
    # To construct, please use Get-Help -Online and see NOTES section for LOBBYBYPASSSETTINGS properties and create a hash table.
    ${LobbyBypassSettings},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingAttendanceReport1]
    # meetingAttendanceReport
    # To construct, please use Get-Help -Online and see NOTES section for MEETINGATTENDANCEREPORT properties and create a hash table.
    ${MeetingAttendanceReport},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingParticipants1]
    # meetingParticipants
    # To construct, please use Get-Help -Online and see NOTES section for PARTICIPANTS properties and create a hash table.
    ${Participants},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether to record the meeting automatically.
    ${RecordAutomatically},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for Recording (The content stream of the recording of a Teams live event.
    # Read-only.)
    ${RecordingInputFile},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistration]
    # meetingRegistration
    # To construct, please use Get-Help -Online and see NOTES section for REGISTRATION properties and create a hash table.
    ${Registration},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting start time in UTC.
    ${StartDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The subject of the online meeting.
    ${Subject},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallTranscript[]]
    # The transcripts of an online meeting.
    # Read-only.
    # To construct, please use Get-Help -Online and see NOTES section for TRANSCRIPTS properties and create a hash table.
    ${Transcripts},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The video teleconferencing ID.
    # Read-only.
    ${VideoTeleconferenceId},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphVirtualAppointment]
    # virtualAppointment
    # To construct, please use Get-Help -Online and see NOTES section for VIRTUALAPPOINTMENT properties and create a hash table.
    ${VirtualAppointment},

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
            Update1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeeting_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeeting_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeeting_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationOnlineMeeting_UpdateViaIdentityExpanded1';
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
Update the navigation property presences in communications
.Description
Update the navigation property presences in communications

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPresence1
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mgcommunicationpresence
#>
function Update-MgCommunicationPresence {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of presence
    ${PresenceId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPresence1]
    # presence
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The supplemental information to a user's availability.
    # Possible values are Available, Away, BeRightBack, Busy, DoNotDisturb, InACall, InAConferenceCall, Inactive,InAMeeting, Offline, OffWork,OutOfOffice, PresenceUnknown,Presenting, UrgentInterruptionsOnly.
    ${Activity},

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
    # The base presence information for a user.
    # Possible values are Available, AvailableIdle, Away, BeRightBack, Busy, BusyIdle, DoNotDisturb, Offline, PresenceUnknown
    ${Availability},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOutOfOfficeSettings]
    # outOfOfficeSettings
    # To construct, please use Get-Help -Online and see NOTES section for OUTOFOFFICESETTINGS properties and create a hash table.
    ${OutOfOfficeSettings},

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
            Update = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationPresence_Update';
            UpdateExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationPresence_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationPresence_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgCommunicationPresence_UpdateViaIdentityExpanded';
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
Update the navigation property attendanceRecords in users
.Description
Update the navigation property attendanceRecords in users

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttendanceRecord1
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mguseronlinemeetingattendancereportattendancerecord
#>
function Update-MgUserOnlineMeetingAttendanceReportAttendanceRecord {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of attendanceRecord
    ${AttendanceRecordId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of meetingAttendanceReport
    ${MeetingAttendanceReportId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttendanceRecord1]
    # attendanceRecord
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttendanceInterval[]]
    # List of time periods between joining and leaving a meeting.
    # To construct, please use Get-Help -Online and see NOTES section for ATTENDANCEINTERVALS properties and create a hash table.
    ${AttendanceIntervals},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Email address of the user associated with this atttendance record.
    ${EmailAddress},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentity]
    # identity
    # To construct, please use Get-Help -Online and see NOTES section for IDENTITY properties and create a hash table.
    ${Identity},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Unique identifier of a meetingRegistrant.
    # Presents when the participant has registered for the meeting.
    ${RegistrantId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Role of the attendee.
    # Possible values are: None, Attendee, Presenter, and Organizer.
    ${Role},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Total duration of the attendances in seconds.
    ${TotalAttendanceInSeconds},

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
            Update = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingAttendanceReportAttendanceRecord_Update';
            Update1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingAttendanceReportAttendanceRecord_Update1';
            UpdateExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingAttendanceReportAttendanceRecord_UpdateExpanded';
            UpdateExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingAttendanceReportAttendanceRecord_UpdateExpanded1';
            UpdateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingAttendanceReportAttendanceRecord_UpdateViaIdentity';
            UpdateViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingAttendanceReportAttendanceRecord_UpdateViaIdentity1';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingAttendanceReportAttendanceRecord_UpdateViaIdentityExpanded';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingAttendanceReportAttendanceRecord_UpdateViaIdentityExpanded1';
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
Update the navigation property attendanceReports in users
.Description
Update the navigation property attendanceReports in users

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingAttendanceReport1
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mguseronlinemeetingattendancereport
#>
function Update-MgUserOnlineMeetingAttendanceReport {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of meetingAttendanceReport
    ${MeetingAttendanceReportId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingAttendanceReport1]
    # meetingAttendanceReport
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttendanceRecord1[]]
    # List of attendance records of an attendance report.
    # Read-only.
    # To construct, please use Get-Help -Online and see NOTES section for ATTENDANCERECORDS properties and create a hash table.
    ${AttendanceRecords},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # UTC time when the meeting ended.
    # Read-only.
    ${MeetingEndDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # UTC time when the meeting started.
    # Read-only.
    ${MeetingStartDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Total number of participants.
    # Read-only.
    ${TotalParticipantCount},

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
            Update = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingAttendanceReport_Update';
            Update1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingAttendanceReport_Update1';
            UpdateExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingAttendanceReport_UpdateExpanded';
            UpdateExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingAttendanceReport_UpdateExpanded1';
            UpdateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingAttendanceReport_UpdateViaIdentity';
            UpdateViaIdentity1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingAttendanceReport_UpdateViaIdentity1';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingAttendanceReport_UpdateViaIdentityExpanded';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingAttendanceReport_UpdateViaIdentityExpanded1';
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
Update the navigation property customQuestions in users
.Description
Update the navigation property customQuestions in users
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	AnswerInputType = "radioButton"
	AnswerOptions = @(
		"Software Engineer"
		"Software Development Manager"
		"Product Manager"
		"Data scientist"
		"Other"
	)
}
# A UPN can also be used as -UserId.
Update-MgUserOnlineMeetingRegistrationCustomQuestion -UserId $userId -OnlineMeetingId $onlineMeetingId -MeetingRegistrationQuestionId $meetingRegistrationQuestionId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrationQuestion
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mguseronlinemeetingregistrationcustomquestion
#>
function Update-MgUserOnlineMeetingRegistrationCustomQuestion {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of meetingRegistrationQuestion
    ${MeetingRegistrationQuestionId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrationQuestion]
    # meetingRegistrationQuestion
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
    # answerInputType
    ${AnswerInputType},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Answer options when answerInputType is radioButton.
    ${AnswerOptions},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Display name of the custom registration question.
    ${DisplayName},

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
    # Indicates whether the question is required.
    # Default value is false.
    ${IsRequired},

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
            Update = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingRegistrationCustomQuestion_Update';
            UpdateExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingRegistrationCustomQuestion_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingRegistrationCustomQuestion_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingRegistrationCustomQuestion_UpdateViaIdentityExpanded';
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
Update the navigation property registration in users
.Description
Update the navigation property registration in users
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	Subject = "Microsoft Ignite: Day 1"
	StartDateTime = [System.DateTime]::Parse("2021-11-02T08:00:00-08:00")
	EndDateTime = [System.DateTime]::Parse("2021-11-02T15:45:00-08:00")
	Speakers = @(
		@{
			DisplayName = "Henry Ross"
			Bio = "Chairman and Chief Executive Officer"
		}
		@{
			DisplayName = "Fred Ryan"
			Bio = "CVP"
		}
	)
}
# A UPN can also be used as -UserId.
Update-MgUserOnlineMeetingRegistration -UserId $userId -OnlineMeetingId $onlineMeetingId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistration
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mguseronlinemeetingregistration
#>
function Update-MgUserOnlineMeetingRegistration {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistration]
    # meetingRegistration
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
    # meetingAudience
    ${AllowedRegistrant},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrationQuestion[]]
    # Custom registration questions.
    # To construct, please use Get-Help -Online and see NOTES section for CUSTOMQUESTIONS properties and create a hash table.
    ${CustomQuestions},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The description of the meeting.
    ${Description},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting end time in UTC.
    ${EndDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistrantBase[]]
    # Registrants of the online meeting.
    # To construct, please use Get-Help -Online and see NOTES section for REGISTRANTS properties and create a hash table.
    ${Registrants},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # The number of times the registration page has been visited.
    # Read-only.
    ${RegistrationPageViewCount},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The URL of the registration page.
    # Read-only.
    ${RegistrationPageWebUrl},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingSpeaker[]]
    # The meeting speaker's information.
    # To construct, please use Get-Help -Online and see NOTES section for SPEAKERS properties and create a hash table.
    ${Speakers},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting start time in UTC.
    ${StartDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The subject of the meeting.
    ${Subject},

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
            Update = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingRegistration_Update';
            UpdateExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingRegistration_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingRegistration_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingRegistration_UpdateViaIdentityExpanded';
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
Update the navigation property transcripts in users
.Description
Update the navigation property transcripts in users

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallTranscript
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mguseronlinemeetingtranscript
#>
function Update-MgUserOnlineMeetingTranscript {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of callTranscript
    ${CallTranscriptId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallTranscript]
    # callTranscript
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
    # Input File for Content (A field representing the content of the transcript.
    # Read-only.)
    ${ContentInputFile},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Date and time at which the transcript was created.
    # Read-only.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

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
            Update = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingTranscript_Update';
            UpdateExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingTranscript_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingTranscript_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingTranscript_UpdateViaIdentityExpanded';
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
Update the navigation property virtualAppointment in users
.Description
Update the navigation property virtualAppointment in users

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphVirtualAppointment
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mguseronlinemeetingvirtualappointment
#>
function Update-MgUserOnlineMeetingVirtualAppointment {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphVirtualAppointment]
    # virtualAppointment
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
    # The join web URL of the virtual appointment for clients with waiting room and browser join.
    # Optional.
    ${AppointmentClientJoinWebUrl},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphVirtualAppointmentUser[]]
    # The client information for the virtual appointment, including name, email, and SMS phone number.
    # Optional.
    # To construct, please use Get-Help -Online and see NOTES section for APPOINTMENTCLIENTS properties and create a hash table.
    ${AppointmentClients},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The identifier of the appointment from the scheduling system, associated with the current virtual appointment.
    # Optional.
    ${ExternalAppointmentId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The URL of the appointment resource from the scheduling system, associated with the current virtual appointment.
    # Optional.
    ${ExternalAppointmentUrl},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphVirtualAppointmentSettings]
    # virtualAppointmentSettings
    # To construct, please use Get-Help -Online and see NOTES section for SETTINGS properties and create a hash table.
    ${Settings},

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
            Update = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingVirtualAppointment_Update';
            UpdateExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingVirtualAppointment_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingVirtualAppointment_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeetingVirtualAppointment_UpdateViaIdentityExpanded';
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
Update the navigation property onlineMeetings in users
.Description
Update the navigation property onlineMeetings in users
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	LobbyBypassSettings = @{
		IsDialInBypassEnabled = $true
	}
}
# A UPN can also be used as -UserId.
Update-MgUserOnlineMeeting -UserId $userId -OnlineMeetingId $onlineMeetingId -BodyParameter $params
.Example
Import-Module Microsoft.Graph.CloudCommunications
$params = @{
	StartDateTime = [System.DateTime]::Parse("2020-09-09T14:33:30.8546353-07:00")
	EndDateTime = [System.DateTime]::Parse("2020-09-09T15:03:30.8566356-07:00")
	Subject = "Patch Meeting Subject"
}
# A UPN can also be used as -UserId.
Update-MgUserOnlineMeeting -UserId $userId -OnlineMeetingId $onlineMeetingId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting1
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mguseronlinemeeting
#>
function Update-MgUserOnlineMeeting {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onlineMeeting
    ${OnlineMeetingId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting1]
    # onlineMeeting
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
    [System.Management.Automation.SwitchParameter]
    # Indicates whether attendees can turn on their camera.
    ${AllowAttendeeToEnableCamera},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether attendees can turn on their microphone.
    ${AllowAttendeeToEnableMic},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates if Teams reactions are enabled for the meeting.
    ${AllowTeamworkReactions},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # onlineMeetingPresenters
    ${AllowedPresenters},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for AlternativeRecording (The content stream of the alternative recording of a Microsoft Teams live event.
    # Read-only.)
    ${AlternativeRecordingInputFile},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${AnonymizeIdentityForRoles},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingAttendanceReport1[]]
    # The attendance reports of an online meeting.
    # Read-only.
    # To construct, please use Get-Help -Online and see NOTES section for ATTENDANCEREPORTS properties and create a hash table.
    ${AttendanceReports},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for AttendeeReport (The content stream of the attendee report of a Teams live event.
    # Read-only.)
    ${AttendeeReportInputFile},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAudioConferencing]
    # audioConferencing
    # To construct, please use Get-Help -Online and see NOTES section for AUDIOCONFERENCING properties and create a hash table.
    ${AudioConferencing},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphBroadcastMeetingSettings]
    # broadcastMeetingSettings
    # To construct, please use Get-Help -Online and see NOTES section for BROADCASTSETTINGS properties and create a hash table.
    ${BroadcastSettings},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Capabilities},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphChatInfo]
    # chatInfo
    # To construct, please use Get-Help -Online and see NOTES section for CHATINFO properties and create a hash table.
    ${ChatInfo},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting creation time in UTC.
    # Read-only.
    ${CreationDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting end time in UTC.
    ${EndDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The external ID.
    # A custom ID.
    # Optional.
    ${ExternalId},

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
    # Indicates whether this is a Teams live event.
    ${IsBroadcast},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether to announce when callers join or leave.
    ${IsEntryExitAnnounced},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemBody]
    # itemBody
    # To construct, please use Get-Help -Online and see NOTES section for JOININFORMATION properties and create a hash table.
    ${JoinInformation},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphJoinMeetingIdSettings]
    # joinMeetingIdSettings
    # To construct, please use Get-Help -Online and see NOTES section for JOINMEETINGIDSETTINGS properties and create a hash table.
    ${JoinMeetingIdSettings},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${JoinUrl},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The join URL of the online meeting.
    # Read-only.
    ${JoinWebUrl},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphLobbyBypassSettings]
    # lobbyBypassSettings
    # To construct, please use Get-Help -Online and see NOTES section for LOBBYBYPASSSETTINGS properties and create a hash table.
    ${LobbyBypassSettings},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingAttendanceReport1]
    # meetingAttendanceReport
    # To construct, please use Get-Help -Online and see NOTES section for MEETINGATTENDANCEREPORT properties and create a hash table.
    ${MeetingAttendanceReport},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingParticipants1]
    # meetingParticipants
    # To construct, please use Get-Help -Online and see NOTES section for PARTICIPANTS properties and create a hash table.
    ${Participants},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Indicates whether to record the meeting automatically.
    ${RecordAutomatically},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Input File for Recording (The content stream of the recording of a Teams live event.
    # Read-only.)
    ${RecordingInputFile},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingRegistration]
    # meetingRegistration
    # To construct, please use Get-Help -Online and see NOTES section for REGISTRATION properties and create a hash table.
    ${Registration},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The meeting start time in UTC.
    ${StartDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The subject of the online meeting.
    ${Subject},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCallTranscript[]]
    # The transcripts of an online meeting.
    # Read-only.
    # To construct, please use Get-Help -Online and see NOTES section for TRANSCRIPTS properties and create a hash table.
    ${Transcripts},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The video teleconferencing ID.
    # Read-only.
    ${VideoTeleconferenceId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphVirtualAppointment]
    # virtualAppointment
    # To construct, please use Get-Help -Online and see NOTES section for VIRTUALAPPOINTMENT properties and create a hash table.
    ${VirtualAppointment},

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
            Update = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeeting_Update';
            UpdateExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeeting_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeeting_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserOnlineMeeting_UpdateViaIdentityExpanded';
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
Update the navigation property presence in users
.Description
Update the navigation property presence in users

.Inputs
Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity
.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPresence1
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.cloudcommunications/update-mguserpresence
#>
function Update-MgUserPresence {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0-beta')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ICloudCommunicationsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPresence1]
    # presence
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The supplemental information to a user's availability.
    # Possible values are Available, Away, BeRightBack, Busy, DoNotDisturb, InACall, InAConferenceCall, Inactive,InAMeeting, Offline, OffWork,OutOfOffice, PresenceUnknown,Presenting, UrgentInterruptionsOnly.
    ${Activity},

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
    # The base presence information for a user.
    # Possible values are Available, AvailableIdle, Away, BeRightBack, Busy, BusyIdle, DoNotDisturb, Offline, PresenceUnknown
    ${Availability},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOutOfOfficeSettings]
    # outOfOfficeSettings
    # To construct, please use Get-Help -Online and see NOTES section for OUTOFOFFICESETTINGS properties and create a hash table.
    ${OutOfOfficeSettings},

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
            Update = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserPresence_Update';
            UpdateExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserPresence_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserPresence_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.CloudCommunications.private\Update-MgUserPresence_UpdateViaIdentityExpanded';
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
# MIInoQYJKoZIhvcNAQcCoIInkjCCJ44CAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCBb1E7sjdWjEFQ/
# qZY+pBV/yWjGqJYN2gC8QOQYJtI5BaCCDYEwggX/MIID56ADAgECAhMzAAACzI61
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
# RcBCyZt2WwqASGv9eZ/BvW1taslScxMNelDNMYIZdjCCGXICAQEwgZUwfjELMAkG
# A1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQx
# HjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEoMCYGA1UEAxMfTWljcm9z
# b2Z0IENvZGUgU2lnbmluZyBQQ0EgMjAxMQITMwAAAsyOtZamvdHJTgAAAAACzDAN
# BglghkgBZQMEAgEFAKCBrjAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgor
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgG6+Y89BH
# 136ybsnoLXidUIc2Yu96zAxNSmYlRceoi7IwQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQAWkp8Yx6azqg1QPzLoByEHqsVQEinSgvWXoJV/Il7y
# 0tmGDNaZvOBVkixt6TBY/mypeNQRZ/bQnZQPYdC6tC80jZ9eBdJqWjGoX5+nyxvD
# dkz7mXUDrRN2GYZG5Ksgn7f4vFN3Mz/Ewvb9SY24AslTa9O9QUU5T/kgV7dpfPtZ
# i+nbWuTutQedh7Yx+J7n4z0YCmzOg9PZ+u6TXnGAEggrd3yc/aWtOWLKLWEIFcOM
# SutgUQwFnqVs9qAvQQvRhBljgIuN0ZLDB+p8Y6EVG5oKVN6szDwcpmGmgxpnuhkc
# cEeX54O974hanWJqDB+oSHwRdLNsVbHRYakby43b9Q+voYIXADCCFvwGCisGAQQB
# gjcDAwExghbsMIIW6AYJKoZIhvcNAQcCoIIW2TCCFtUCAQMxDzANBglghkgBZQME
# AgEFADCCAVEGCyqGSIb3DQEJEAEEoIIBQASCATwwggE4AgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEIKETaXmUYE4JGkfLfATXbc4CdRFVDdKNFugsEFP2
# kCi/AgZjI1S3jvgYEzIwMjIwOTI4MTkzMDM1LjEyMlowBIACAfSggdCkgc0wgcox
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJTAjBgNVBAsTHE1p
# Y3Jvc29mdCBBbWVyaWNhIE9wZXJhdGlvbnMxJjAkBgNVBAsTHVRoYWxlcyBUU1Mg
# RVNOOkFFMkMtRTMyQi0xQUZDMSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFt
# cCBTZXJ2aWNloIIRVzCCBwwwggT0oAMCAQICEzMAAAGWSVti4S/d908AAQAAAZYw
# DQYJKoZIhvcNAQELBQAwfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0
# b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3Jh
# dGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTAwHhcN
# MjExMjAyMTkwNTEzWhcNMjMwMjI4MTkwNTEzWjCByjELMAkGA1UEBhMCVVMxEzAR
# BgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1p
# Y3Jvc29mdCBDb3Jwb3JhdGlvbjElMCMGA1UECxMcTWljcm9zb2Z0IEFtZXJpY2Eg
# T3BlcmF0aW9uczEmMCQGA1UECxMdVGhhbGVzIFRTUyBFU046QUUyQy1FMzJCLTFB
# RkMxJTAjBgNVBAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1wIFNlcnZpY2UwggIiMA0G
# CSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDSH2wQC2+t/jzA6jL6LZMhDNJG0nv1
# cUqe+H4MGKyEgRZUwp1YsHl1ITGyi8K9rkPRKKKAi0lT8g0b1GIipkWc8qCtE3wi
# bxoNR4mCyrvgEsXutnbxI1obx8cMfa2XgchG/XBGZcFtGd0UQvXkxUYvokfG1TyB
# MqnIZvQ2LtcmGj86laPRNuRodkEM7VVUO2oMSHJbaTNj1b2kAC8sqlytH1zmfrQp
# TA3rZOyEmywT43DRfsNlXmkNKMiW7BafNnHZLGHGacpimE4doDMur3yiH/qCCx2P
# O4pIqkA6WLGSN8yhYavcQZRFVtsl/x/IiuL0fxPGpQmRc84m41yauncveNh/5/14
# MqsZ7ugY1ix8fkOYgJBlLss8myPhaMA6qcEB/RWWqcCfhyARNjCcmBNGNXeMgKyZ
# /+e3bCOlXmWeDtVJDLmOtzEDBLmkg2/etp3T9hOX+LodYwdBkY2noCDEzPWVa834
# AmkJvR6ynEeBGj6ouWifpXxaobBdasb0+r/9eYr+T00yrLFn16rrTULnVzkW7lLy
# XWEousvzYnul3HPCQooQS4LY1HBKTyTSftGX56ZgOz7Rk+esvbcr+NjLvBBy7Xeo
# mgkuw1F/Uru7lZ9AR+EQbpg2pvCHSarMQQHbf1GXPhlDTHwkeskRiz5jPjTr1Wz/
# f+9CZx5ovtTF0QIDAQABo4IBNjCCATIwHQYDVR0OBBYEFNLfCNksLmWtIGEsiYuE
# KprRzXSyMB8GA1UdIwQYMBaAFJ+nFV0AXmJdg/Tl0mWnG1M1GelyMF8GA1UdHwRY
# MFYwVKBSoFCGTmh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2lvcHMvY3JsL01p
# Y3Jvc29mdCUyMFRpbWUtU3RhbXAlMjBQQ0ElMjAyMDEwKDEpLmNybDBsBggrBgEF
# BQcBAQRgMF4wXAYIKwYBBQUHMAKGUGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9w
# a2lvcHMvY2VydHMvTWljcm9zb2Z0JTIwVGltZS1TdGFtcCUyMFBDQSUyMDIwMTAo
# MSkuY3J0MAwGA1UdEwEB/wQCMAAwEwYDVR0lBAwwCgYIKwYBBQUHAwgwDQYJKoZI
# hvcNAQELBQADggIBAK9gCxC4IVbYKVQBHP5ztJc/kfgSubcL5hTReVE1uwSVKp92
# Sfd/IIvFgGQcwVlAZc8DubOhTshlR2fSFfK6+sUzoMOuf9ItKF7m348+SpZ455iI
# TDyTgEjqXhTmTTvBfyEHA6gxHGzVo578k2Qsc7qSuXmPr8ZkeuRNHNOxFRQmnUWm
# dTOLGJlbJq9zTH+KYbnJZ2tK5xwT2d2irtBu7U/FruzCxSbnM00y6dpYZcMUCdLu
# zxHEnX8/epO1nQlrpUTpJ6gel2Pv+E+4oktdX8zz0Y0WfwdQOZVbn5gr/wPLvIoc
# eKJJ366AA36lbc8Do5h6TSvJbVArNutbg/1JcCT5Tl9peMEmiK1b3z5kRFZffztU
# e9pNYnhijkGaQnRTbsBqXaCCLmPU9i4PEHcOyh8z7t5tzjOAnQYXi7oNBbRXitz8
# XbPK2XasNB9QaU+01TKZRlVtYlsWrDriN7xCwCcx4bUnyiHGNiV5reIsDMbCKZ7h
# 1sxLIQeg5tW/Mg3R30EnzjFV5cq8RPXvoaFj89LpFMlmJbk8+KFmHzwXcl5wS+GV
# y38VulA+36aEM4FADKqMjW10FCUEVVfznFZ3UlGdSS7GqyFeoXBzEqvwaIWxv0BX
# vLtNPfR+YxOzeCaeiMVC3cx0PlDcz+AF/VN2WHKI81dOAmE/qLJkd/EpmLZzMIIH
# cTCCBVmgAwIBAgITMwAAABXF52ueAptJmQAAAAAAFTANBgkqhkiG9w0BAQsFADCB
# iDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1Jl
# ZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEyMDAGA1UEAxMp
# TWljcm9zb2Z0IFJvb3QgQ2VydGlmaWNhdGUgQXV0aG9yaXR5IDIwMTAwHhcNMjEw
# OTMwMTgyMjI1WhcNMzAwOTMwMTgzMjI1WjB8MQswCQYDVQQGEwJVUzETMBEGA1UE
# CBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9z
# b2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQ
# Q0EgMjAxMDCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAOThpkzntHIh
# C3miy9ckeb0O1YLT/e6cBwfSqWxOdcjKNVf2AX9sSuDivbk+F2Az/1xPx2b3lVNx
# WuJ+Slr+uDZnhUYjDLWNE893MsAQGOhgfWpSg0S3po5GawcU88V29YZQ3MFEyHFc
# UTE3oAo4bo3t1w/YJlN8OWECesSq/XJprx2rrPY2vjUmZNqYO7oaezOtgFt+jBAc
# nVL+tuhiJdxqD89d9P6OU8/W7IVWTe/dvI2k45GPsjksUZzpcGkNyjYtcI4xyDUo
# veO0hyTD4MmPfrVUj9z6BVWYbWg7mka97aSueik3rMvrg0XnRm7KMtXAhjBcTyzi
# YrLNueKNiOSWrAFKu75xqRdbZ2De+JKRHh09/SDPc31BmkZ1zcRfNN0Sidb9pSB9
# fvzZnkXftnIv231fgLrbqn427DZM9ituqBJR6L8FA6PRc6ZNN3SUHDSCD/AQ8rdH
# GO2n6Jl8P0zbr17C89XYcz1DTsEzOUyOArxCaC4Q6oRRRuLRvWoYWmEBc8pnol7X
# KHYC4jMYctenIPDC+hIK12NvDMk2ZItboKaDIV1fMHSRlJTYuVD5C4lh8zYGNRiE
# R9vcG9H9stQcxWv2XFJRXRLbJbqvUAV6bMURHXLvjflSxIUXk8A8FdsaN8cIFRg/
# eKtFtvUeh17aj54WcmnGrnu3tz5q4i6tAgMBAAGjggHdMIIB2TASBgkrBgEEAYI3
# FQEEBQIDAQABMCMGCSsGAQQBgjcVAgQWBBQqp1L+ZMSavoKRPEY1Kc8Q/y8E7jAd
# BgNVHQ4EFgQUn6cVXQBeYl2D9OXSZacbUzUZ6XIwXAYDVR0gBFUwUzBRBgwrBgEE
# AYI3TIN9AQEwQTA/BggrBgEFBQcCARYzaHR0cDovL3d3dy5taWNyb3NvZnQuY29t
# L3BraW9wcy9Eb2NzL1JlcG9zaXRvcnkuaHRtMBMGA1UdJQQMMAoGCCsGAQUFBwMI
# MBkGCSsGAQQBgjcUAgQMHgoAUwB1AGIAQwBBMAsGA1UdDwQEAwIBhjAPBgNVHRMB
# Af8EBTADAQH/MB8GA1UdIwQYMBaAFNX2VsuP6KJcYmjRPZSQW9fOmhjEMFYGA1Ud
# HwRPME0wS6BJoEeGRWh0dHA6Ly9jcmwubWljcm9zb2Z0LmNvbS9wa2kvY3JsL3By
# b2R1Y3RzL01pY1Jvb0NlckF1dF8yMDEwLTA2LTIzLmNybDBaBggrBgEFBQcBAQRO
# MEwwSgYIKwYBBQUHMAKGPmh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2kvY2Vy
# dHMvTWljUm9vQ2VyQXV0XzIwMTAtMDYtMjMuY3J0MA0GCSqGSIb3DQEBCwUAA4IC
# AQCdVX38Kq3hLB9nATEkW+Geckv8qW/qXBS2Pk5HZHixBpOXPTEztTnXwnE2P9pk
# bHzQdTltuw8x5MKP+2zRoZQYIu7pZmc6U03dmLq2HnjYNi6cqYJWAAOwBb6J6Gng
# ugnue99qb74py27YP0h1AdkY3m2CDPVtI1TkeFN1JFe53Z/zjj3G82jfZfakVqr3
# lbYoVSfQJL1AoL8ZthISEV09J+BAljis9/kpicO8F7BUhUKz/AyeixmJ5/ALaoHC
# gRlCGVJ1ijbCHcNhcy4sa3tuPywJeBTpkbKpW99Jo3QMvOyRgNI95ko+ZjtPu4b6
# MhrZlvSP9pEB9s7GdP32THJvEKt1MMU0sHrYUP4KWN1APMdUbZ1jdEgssU5HLcEU
# BHG/ZPkkvnNtyo4JvbMBV0lUZNlz138eW0QBjloZkWsNn6Qo3GcZKCS6OEuabvsh
# VGtqRRFHqfG3rsjoiV5PndLQTHa1V1QJsWkBRH58oWFsc/4Ku+xBZj1p/cvBQUl+
# fpO+y/g75LcVv7TOPqUxUYS8vwLBgqJ7Fx0ViY1w/ue10CgaiQuPNtq6TPmb/wrp
# NPgkNWcr4A245oyZ1uEi6vAnQj0llOZ0dFtq0Z4+7X6gMTN9vMvpe784cETRkPHI
# qzqKOghif9lwY1NNje6CbaUFEMFxBmoQtB1VM1izoXBm8qGCAs4wggI3AgEBMIH4
# oYHQpIHNMIHKMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4G
# A1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSUw
# IwYDVQQLExxNaWNyb3NvZnQgQW1lcmljYSBPcGVyYXRpb25zMSYwJAYDVQQLEx1U
# aGFsZXMgVFNTIEVTTjpBRTJDLUUzMkItMUFGQzElMCMGA1UEAxMcTWljcm9zb2Z0
# IFRpbWUtU3RhbXAgU2VydmljZaIjCgEBMAcGBSsOAwIaAxUA0PommlVZaduKtDHg
# hztBZDfmVv6ggYMwgYCkfjB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGlu
# Z3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBv
# cmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDAN
# BgkqhkiG9w0BAQUFAAIFAObe9eswIhgPMjAyMjA5MjkwMDMzNDdaGA8yMDIyMDkz
# MDAwMzM0N1owdzA9BgorBgEEAYRZCgQBMS8wLTAKAgUA5t716wIBADAKAgEAAgIp
# 0QIB/zAHAgEAAgIRvTAKAgUA5uBHawIBADA2BgorBgEEAYRZCgQCMSgwJjAMBgor
# BgEEAYRZCgMCoAowCAIBAAIDB6EgoQowCAIBAAIDAYagMA0GCSqGSIb3DQEBBQUA
# A4GBAIVqyJ56xBXWfDs1Ini3sUYCJgP42oWxRdklN54+Yf2bx1B4wvytCc6qbH6n
# zlLlYTWG/0xjwXXiVRscZFh60pTG9XMfcMATDJ2N4L67P33iJAuE7RCQZ6O1Aw7+
# cOXzeQKOR1LBFpc26iaVeZMejJ4UtLkR8bY/HLv0RXPfMO0lMYIEDTCCBAkCAQEw
# gZMwfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcT
# B1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UE
# AxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTACEzMAAAGWSVti4S/d908A
# AQAAAZYwDQYJYIZIAWUDBAIBBQCgggFKMBoGCSqGSIb3DQEJAzENBgsqhkiG9w0B
# CRABBDAvBgkqhkiG9w0BCQQxIgQg28jUJXmxnl0v/wB8uRPTbuB5gwnxyiexXDP2
# m/O7rE4wgfoGCyqGSIb3DQEJEAIvMYHqMIHnMIHkMIG9BCB2BNYC+B0105J2Ry6C
# fnZ0JA8JflZQQ6sLpHI3LbK9kDCBmDCBgKR+MHwxCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1w
# IFBDQSAyMDEwAhMzAAABlklbYuEv3fdPAAEAAAGWMCIEILzuhNIEqPeBqFiJuLYD
# WBIxKsX/L9oCD49BLWidg91eMA0GCSqGSIb3DQEBCwUABIICAF7PmR61AmRBBA0n
# +GrWAu1vAEElQPrKchJYPOlAigiJig5xZcTHXPKPE/4O4YIdBSD8beBuLTt1Izm8
# B0AGKdJlSp8Y8NYlAElphPzwk8NoXEYEAFbN9ZokGohdpclx+HR6SqE3p/9NdaJw
# Qpnv/v1IaQD9AC5WWn5uBshPT8ILf1GhANGwCKM09/g/73MyTQTsZuUX26HNnkjp
# ZvuGHHpZnhV9vpUyEAnMh3nIOtHyPni3owTzypbhIjM2VWu6dXNjqMH0yQ0m/Elp
# EanRDjy7ClzucP1gcOWtUcLeQBCWQUfvU+sp4ieqaEXtTXKCpn2BIiLkjRXaDZEE
# RVVGDbynhkkCv+Wa6N4fnpus4U7s2b9JoEtCKpzlZ+jbjWw8tqjxGAKG/JSDmSof
# EGvrttIxOjKTN81ApL8B9bJVG3qAwndEJjZvgQrDKVKThUSk03pglGvGGu1iSg3M
# T9IKPLYsriQ5n4fTZz+pRfdxAApJqTneL0n8XlyjAvZq8uymNU7eOshQGo7Q0QkI
# EM4D10Xa+asN3FM+kN9f2hIMObtyewXtF/iKOYVm53fe0enbMFy5zNli2GHS4ofs
# ol47mtXHsQIUaU3lCNiSvxKOn5MT/ZQgsJZyumsMdCPqqRFG3yP5olAHuGfcmCk+
# tpEbbMNqVsDO0hQUgFrbjYWgWceR
# SIG # End signature block
