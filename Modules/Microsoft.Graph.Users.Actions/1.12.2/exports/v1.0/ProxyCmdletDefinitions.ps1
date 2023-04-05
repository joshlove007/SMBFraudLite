
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
Invoke action add
.Description
Invoke action add

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1Uoy9ZaUsersUserIdChatsChatIdMembersMicrosoftGraphAddPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphActionResultPart
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/add-mguserchatmember
#>
function Add-MgUserChatMember {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphActionResultPart])]
[CmdletBinding(DefaultParameterSetName='AddExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Add1', Mandatory)]
    [Parameter(ParameterSetName='AddExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of chat
    ${ChatId},

    [Parameter(ParameterSetName='Add1', Mandatory)]
    [Parameter(ParameterSetName='AddExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='AddViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='AddViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Add1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='AddViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Uoy9ZaUsersUserIdChatsChatIdMembersMicrosoftGraphAddPostRequestbodyContentApplicationJsonSchema]
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphConversationMember[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for VALUES properties and create a hash table.
    ${Values},

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
            Add1 = 'Microsoft.Graph.Users.Actions.private\Add-MgUserChatMember_Add1';
            AddExpanded1 = 'Microsoft.Graph.Users.Actions.private\Add-MgUserChatMember_AddExpanded1';
            AddViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Add-MgUserChatMember_AddViaIdentity1';
            AddViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Add-MgUserChatMember_AddViaIdentityExpanded1';
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
Invoke action addCopyFromContentTypeHub
.Description
Invoke action addCopyFromContentTypeHub

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsDybicoUsersUserIdDrivesDriveIdListContenttypesMicrosoftGraphAddcopyfromcontenttypehubPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphContentType1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/add-mguserdrivelistcontenttypecopyfromcontenttypehub
#>
function Add-MgUserDriveListContentTypeCopyFromContentTypeHub {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphContentType1])]
[CmdletBinding(DefaultParameterSetName='AddExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Add', Mandatory)]
    [Parameter(ParameterSetName='AddExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Add', Mandatory)]
    [Parameter(ParameterSetName='AddExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='AddViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='AddViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Add', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='AddViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsDybicoUsersUserIdDrivesDriveIdListContenttypesMicrosoftGraphAddcopyfromcontenttypehubPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='AddExpanded')]
    [Parameter(ParameterSetName='AddViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='AddExpanded')]
    [Parameter(ParameterSetName='AddViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ContentTypeId},

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
            Add = 'Microsoft.Graph.Users.Actions.private\Add-MgUserDriveListContentTypeCopyFromContentTypeHub_Add';
            AddExpanded = 'Microsoft.Graph.Users.Actions.private\Add-MgUserDriveListContentTypeCopyFromContentTypeHub_AddExpanded';
            AddViaIdentity = 'Microsoft.Graph.Users.Actions.private\Add-MgUserDriveListContentTypeCopyFromContentTypeHub_AddViaIdentity';
            AddViaIdentityExpanded = 'Microsoft.Graph.Users.Actions.private\Add-MgUserDriveListContentTypeCopyFromContentTypeHub_AddViaIdentityExpanded';
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
Invoke action addCopy
.Description
Invoke action addCopy

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths2SzxsiUsersUserIdDrivesDriveIdListContenttypesMicrosoftGraphAddcopyPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphContentType1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/add-mguserdrivelistcontenttypecopy
#>
function Add-MgUserDriveListContentTypeCopy {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphContentType1])]
[CmdletBinding(DefaultParameterSetName='AddExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Add', Mandatory)]
    [Parameter(ParameterSetName='AddExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Add', Mandatory)]
    [Parameter(ParameterSetName='AddExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='AddViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='AddViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Add', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='AddViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths2SzxsiUsersUserIdDrivesDriveIdListContenttypesMicrosoftGraphAddcopyPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='AddExpanded')]
    [Parameter(ParameterSetName='AddViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='AddExpanded')]
    [Parameter(ParameterSetName='AddViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ContentType},

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
            Add = 'Microsoft.Graph.Users.Actions.private\Add-MgUserDriveListContentTypeCopy_Add';
            AddExpanded = 'Microsoft.Graph.Users.Actions.private\Add-MgUserDriveListContentTypeCopy_AddExpanded';
            AddViaIdentity = 'Microsoft.Graph.Users.Actions.private\Add-MgUserDriveListContentTypeCopy_AddViaIdentity';
            AddViaIdentityExpanded = 'Microsoft.Graph.Users.Actions.private\Add-MgUserDriveListContentTypeCopy_AddViaIdentityExpanded';
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
Issues a wipe operation on an app registration with specified device tag.
.Description
Issues a wipe operation on an app registration with specified device tag.

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsVloam1UsersUserIdMicrosoftGraphWipemanagedappregistrationsbydevicetagPostRequestbodyContentApplicationJsonSchema1
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/clear-mgusermanagedappregistrationbydevicetag
#>
function Clear-MgUserManagedAppRegistrationByDeviceTag {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='WipeExpanded2', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Wipe2', Mandatory)]
    [Parameter(ParameterSetName='WipeExpanded2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='WipeViaIdentity2', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='WipeViaIdentityExpanded2', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Wipe2', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='WipeViaIdentity2', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsVloam1UsersUserIdMicrosoftGraphWipemanagedappregistrationsbydevicetagPostRequestbodyContentApplicationJsonSchema1]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='WipeExpanded2')]
    [Parameter(ParameterSetName='WipeViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='WipeExpanded2')]
    [Parameter(ParameterSetName='WipeViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${DeviceTag},

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
            Wipe2 = 'Microsoft.Graph.Users.Actions.private\Clear-MgUserManagedAppRegistrationByDeviceTag_Wipe2';
            WipeExpanded2 = 'Microsoft.Graph.Users.Actions.private\Clear-MgUserManagedAppRegistrationByDeviceTag_WipeExpanded2';
            WipeViaIdentity2 = 'Microsoft.Graph.Users.Actions.private\Clear-MgUserManagedAppRegistrationByDeviceTag_WipeViaIdentity2';
            WipeViaIdentityExpanded2 = 'Microsoft.Graph.Users.Actions.private\Clear-MgUserManagedAppRegistrationByDeviceTag_WipeViaIdentityExpanded2';
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
Wipe a device
.Description
Wipe a device

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths14R8Rr7UsersUserIdManageddevicesManageddeviceIdMicrosoftGraphWipePostRequestbodyContentApplicationJsonSchema1
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/clear-mgusermanageddevice
#>
function Clear-MgUserManagedDevice {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='WipeExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Wipe1', Mandatory)]
    [Parameter(ParameterSetName='WipeExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='Wipe1', Mandatory)]
    [Parameter(ParameterSetName='WipeExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='WipeViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='WipeViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Wipe1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='WipeViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths14R8Rr7UsersUserIdManageddevicesManageddeviceIdMicrosoftGraphWipePostRequestbodyContentApplicationJsonSchema1]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='WipeExpanded1')]
    [Parameter(ParameterSetName='WipeViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='WipeExpanded1')]
    [Parameter(ParameterSetName='WipeViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${KeepEnrollmentData},

    [Parameter(ParameterSetName='WipeExpanded1')]
    [Parameter(ParameterSetName='WipeViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${KeepUserData},

    [Parameter(ParameterSetName='WipeExpanded1')]
    [Parameter(ParameterSetName='WipeViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${MacOSUnlockCode},

    [Parameter(ParameterSetName='WipeExpanded1')]
    [Parameter(ParameterSetName='WipeViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${PersistEsimDataPlan},

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
            Wipe1 = 'Microsoft.Graph.Users.Actions.private\Clear-MgUserManagedDevice_Wipe1';
            WipeExpanded1 = 'Microsoft.Graph.Users.Actions.private\Clear-MgUserManagedDevice_WipeExpanded1';
            WipeViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Clear-MgUserManagedDevice_WipeViaIdentity1';
            WipeViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Clear-MgUserManagedDevice_WipeViaIdentityExpanded1';
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
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/clear-mguserpresenceuserpreferredpresence
#>
function Clear-MgUserPresenceUserPreferredPresence {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Clear1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Clear1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ClearViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Clear1 = 'Microsoft.Graph.Users.Actions.private\Clear-MgUserPresenceUserPreferredPresence_Clear1';
            ClearViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Clear-MgUserPresenceUserPreferredPresence_ClearViaIdentity1';
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
.Example
Import-Module Microsoft.Graph.Users.Actions
$params = @{
	SessionId = "22553876-f5ab-4529-bffb-cfe50aa89f87"
}
Clear-MgUserPresence -UserId $userId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsTdagveUsersUserIdPresenceMicrosoftGraphClearpresencePostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/clear-mguserpresence
#>
function Clear-MgUserPresence {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='ClearExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Clear1', Mandatory)]
    [Parameter(ParameterSetName='ClearExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ClearViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ClearViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Clear1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ClearViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsTdagveUsersUserIdPresenceMicrosoftGraphClearpresencePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='ClearExpanded1')]
    [Parameter(ParameterSetName='ClearViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='ClearExpanded1')]
    [Parameter(ParameterSetName='ClearViaIdentityExpanded1')]
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
            Clear1 = 'Microsoft.Graph.Users.Actions.private\Clear-MgUserPresence_Clear1';
            ClearExpanded1 = 'Microsoft.Graph.Users.Actions.private\Clear-MgUserPresence_ClearExpanded1';
            ClearViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Clear-MgUserPresence_ClearViaIdentity1';
            ClearViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Clear-MgUserPresence_ClearViaIdentityExpanded1';
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
Invoke action checkMemberGroups
.Description
Invoke action checkMemberGroups

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths19DarayUsersUserIdAuthenticationMicrosoftauthenticatormethodsMicrosoftauthenticatorauthenticationmethodIdDeviceMicrosoftGraphCheckmembergroupsPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.String
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/confirm-mguserauthenticationmicrosoftauthenticatormethoddevicemembergroup
#>
function Confirm-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceMemberGroup {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='CheckExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Check', Mandatory)]
    [Parameter(ParameterSetName='CheckExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of microsoftAuthenticatorAuthenticationMethod
    ${MicrosoftAuthenticatorAuthenticationMethodId},

    [Parameter(ParameterSetName='Check', Mandatory)]
    [Parameter(ParameterSetName='CheckExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CheckViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CheckViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Check', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CheckViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths19DarayUsersUserIdAuthenticationMicrosoftauthenticatormethodsMicrosoftauthenticatorauthenticationmethodIdDeviceMicrosoftGraphCheckmembergroupsPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CheckExpanded')]
    [Parameter(ParameterSetName='CheckViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CheckExpanded')]
    [Parameter(ParameterSetName='CheckViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${GroupIds},

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
            Check = 'Microsoft.Graph.Users.Actions.private\Confirm-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceMemberGroup_Check';
            CheckExpanded = 'Microsoft.Graph.Users.Actions.private\Confirm-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceMemberGroup_CheckExpanded';
            CheckViaIdentity = 'Microsoft.Graph.Users.Actions.private\Confirm-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceMemberGroup_CheckViaIdentity';
            CheckViaIdentityExpanded = 'Microsoft.Graph.Users.Actions.private\Confirm-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceMemberGroup_CheckViaIdentityExpanded';
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
Invoke action checkMemberObjects
.Description
Invoke action checkMemberObjects

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1BrvcqxUsersUserIdAuthenticationMicrosoftauthenticatormethodsMicrosoftauthenticatorauthenticationmethodIdDeviceMicrosoftGraphCheckmemberobjectsPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.String
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/confirm-mguserauthenticationmicrosoftauthenticatormethoddevicememberobject
#>
function Confirm-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceMemberObject {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='CheckExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Check', Mandatory)]
    [Parameter(ParameterSetName='CheckExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of microsoftAuthenticatorAuthenticationMethod
    ${MicrosoftAuthenticatorAuthenticationMethodId},

    [Parameter(ParameterSetName='Check', Mandatory)]
    [Parameter(ParameterSetName='CheckExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CheckViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CheckViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Check', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CheckViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1BrvcqxUsersUserIdAuthenticationMicrosoftauthenticatormethodsMicrosoftauthenticatorauthenticationmethodIdDeviceMicrosoftGraphCheckmemberobjectsPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CheckExpanded')]
    [Parameter(ParameterSetName='CheckViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CheckExpanded')]
    [Parameter(ParameterSetName='CheckViaIdentityExpanded')]
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
            Check = 'Microsoft.Graph.Users.Actions.private\Confirm-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceMemberObject_Check';
            CheckExpanded = 'Microsoft.Graph.Users.Actions.private\Confirm-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceMemberObject_CheckExpanded';
            CheckViaIdentity = 'Microsoft.Graph.Users.Actions.private\Confirm-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceMemberObject_CheckViaIdentity';
            CheckViaIdentityExpanded = 'Microsoft.Graph.Users.Actions.private\Confirm-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceMemberObject_CheckViaIdentityExpanded';
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
Invoke action checkMemberGroups
.Description
Invoke action checkMemberGroups

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1MgihfkUsersUserIdAuthenticationWindowshelloforbusinessmethodsWindowshelloforbusinessauthenticationmethodIdDeviceMicrosoftGraphCheckmembergroupsPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.String
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/confirm-mguserauthenticationwindowhelloforbusinessmethoddevicemembergroup
#>
function Confirm-MgUserAuthenticationWindowHelloForBusinessMethodDeviceMemberGroup {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='CheckExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Check1', Mandatory)]
    [Parameter(ParameterSetName='CheckExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='Check1', Mandatory)]
    [Parameter(ParameterSetName='CheckExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of windowsHelloForBusinessAuthenticationMethod
    ${WindowsHelloForBusinessAuthenticationMethodId},

    [Parameter(ParameterSetName='CheckViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CheckViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Check1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CheckViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1MgihfkUsersUserIdAuthenticationWindowshelloforbusinessmethodsWindowshelloforbusinessauthenticationmethodIdDeviceMicrosoftGraphCheckmembergroupsPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CheckExpanded1')]
    [Parameter(ParameterSetName='CheckViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CheckExpanded1')]
    [Parameter(ParameterSetName='CheckViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${GroupIds},

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
            Check1 = 'Microsoft.Graph.Users.Actions.private\Confirm-MgUserAuthenticationWindowHelloForBusinessMethodDeviceMemberGroup_Check1';
            CheckExpanded1 = 'Microsoft.Graph.Users.Actions.private\Confirm-MgUserAuthenticationWindowHelloForBusinessMethodDeviceMemberGroup_CheckExpanded1';
            CheckViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Confirm-MgUserAuthenticationWindowHelloForBusinessMethodDeviceMemberGroup_CheckViaIdentity1';
            CheckViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Confirm-MgUserAuthenticationWindowHelloForBusinessMethodDeviceMemberGroup_CheckViaIdentityExpanded1';
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
Invoke action checkMemberObjects
.Description
Invoke action checkMemberObjects

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths18TgfjqUsersUserIdAuthenticationWindowshelloforbusinessmethodsWindowshelloforbusinessauthenticationmethodIdDeviceMicrosoftGraphCheckmemberobjectsPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.String
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/confirm-mguserauthenticationwindowhelloforbusinessmethoddevicememberobject
#>
function Confirm-MgUserAuthenticationWindowHelloForBusinessMethodDeviceMemberObject {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='CheckExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Check1', Mandatory)]
    [Parameter(ParameterSetName='CheckExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='Check1', Mandatory)]
    [Parameter(ParameterSetName='CheckExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of windowsHelloForBusinessAuthenticationMethod
    ${WindowsHelloForBusinessAuthenticationMethodId},

    [Parameter(ParameterSetName='CheckViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CheckViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Check1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CheckViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths18TgfjqUsersUserIdAuthenticationWindowshelloforbusinessmethodsWindowshelloforbusinessauthenticationmethodIdDeviceMicrosoftGraphCheckmemberobjectsPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CheckExpanded1')]
    [Parameter(ParameterSetName='CheckViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CheckExpanded1')]
    [Parameter(ParameterSetName='CheckViaIdentityExpanded1')]
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
            Check1 = 'Microsoft.Graph.Users.Actions.private\Confirm-MgUserAuthenticationWindowHelloForBusinessMethodDeviceMemberObject_Check1';
            CheckExpanded1 = 'Microsoft.Graph.Users.Actions.private\Confirm-MgUserAuthenticationWindowHelloForBusinessMethodDeviceMemberObject_CheckExpanded1';
            CheckViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Confirm-MgUserAuthenticationWindowHelloForBusinessMethodDeviceMemberObject_CheckViaIdentity1';
            CheckViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Confirm-MgUserAuthenticationWindowHelloForBusinessMethodDeviceMemberObject_CheckViaIdentityExpanded1';
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
Invoke action checkMemberGroups
.Description
Invoke action checkMemberGroups
.Example
Import-Module Microsoft.Graph.Users.Actions
$params = @{
	GroupIds = @(
		"fee2c45b-915a-4a64b130f4eb9e75525e"
		"4fe90ae065a-478b9400e0a0e1cbd540"
	)
}
# A UPN can also be used as -UserId.
Confirm-MgUserMemberGroup -UserId $userId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsDyyrb2UsersUserIdMicrosoftGraphCheckmembergroupsPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.String
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/confirm-mgusermembergroup
#>
function Confirm-MgUserMemberGroup {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='CheckExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Check1', Mandatory)]
    [Parameter(ParameterSetName='CheckExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CheckViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CheckViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Check1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CheckViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsDyyrb2UsersUserIdMicrosoftGraphCheckmembergroupsPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CheckExpanded1')]
    [Parameter(ParameterSetName='CheckViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CheckExpanded1')]
    [Parameter(ParameterSetName='CheckViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${GroupIds},

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
            Check1 = 'Microsoft.Graph.Users.Actions.private\Confirm-MgUserMemberGroup_Check1';
            CheckExpanded1 = 'Microsoft.Graph.Users.Actions.private\Confirm-MgUserMemberGroup_CheckExpanded1';
            CheckViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Confirm-MgUserMemberGroup_CheckViaIdentity1';
            CheckViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Confirm-MgUserMemberGroup_CheckViaIdentityExpanded1';
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
Invoke action checkMemberObjects
.Description
Invoke action checkMemberObjects
.Example
Import-Module Microsoft.Graph.Users.Actions
$params = @{
	Ids = @(
		"80a963dd-84af-4eb8-b2a6-781e444d4fb0"
		"62e90394-69f5-4237-9190-012177145e10"
		"86a64f51-3a64-4cc6-a8c8-6b8f000c0f52"
		"ac38546e-ddf3-437a-ac5c-27a94cd7a0f1"
	)
}
# A UPN can also be used as -UserId.
Confirm-MgUserMemberObject -UserId $userId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsJ9Yxi4UsersUserIdMicrosoftGraphCheckmemberobjectsPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.String
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/confirm-mgusermemberobject
#>
function Confirm-MgUserMemberObject {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='CheckExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Check1', Mandatory)]
    [Parameter(ParameterSetName='CheckExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CheckViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CheckViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Check1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CheckViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsJ9Yxi4UsersUserIdMicrosoftGraphCheckmemberobjectsPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CheckExpanded1')]
    [Parameter(ParameterSetName='CheckViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CheckExpanded1')]
    [Parameter(ParameterSetName='CheckViaIdentityExpanded1')]
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
            Check1 = 'Microsoft.Graph.Users.Actions.private\Confirm-MgUserMemberObject_Check1';
            CheckExpanded1 = 'Microsoft.Graph.Users.Actions.private\Confirm-MgUserMemberObject_CheckExpanded1';
            CheckViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Confirm-MgUserMemberObject_CheckViaIdentity1';
            CheckViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Confirm-MgUserMemberObject_CheckViaIdentityExpanded1';
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
Invoke action copy
.Description
Invoke action copy

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths8Bxd2FUsersUserIdDrivesDriveIdItemsDriveitemIdMicrosoftGraphCopyPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDriveItem1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/copy-mguserdriveitem
#>
function Copy-MgUserDriveItem {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDriveItem1])]
[CmdletBinding(DefaultParameterSetName='CopyExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Copy', Mandatory)]
    [Parameter(ParameterSetName='CopyExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Copy', Mandatory)]
    [Parameter(ParameterSetName='CopyExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of driveItem
    ${DriveItemId},

    [Parameter(ParameterSetName='Copy', Mandatory)]
    [Parameter(ParameterSetName='CopyExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CopyViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Copy', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CopyViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths8Bxd2FUsersUserIdDrivesDriveIdItemsDriveitemIdMicrosoftGraphCopyPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CopyExpanded')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CopyExpanded')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Name},

    [Parameter(ParameterSetName='CopyExpanded')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemReference]
    # itemReference
    # To construct, please use Get-Help -Online and see NOTES section for PARENTREFERENCE properties and create a hash table.
    ${ParentReference},

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
            Copy = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserDriveItem_Copy';
            CopyExpanded = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserDriveItem_CopyExpanded';
            CopyViaIdentity = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserDriveItem_CopyViaIdentity';
            CopyViaIdentityExpanded = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserDriveItem_CopyViaIdentityExpanded';
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
Invoke action copyToDefaultContentLocation
.Description
Invoke action copyToDefaultContentLocation

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1T3YvnbUsersUserIdDrivesDriveIdListContenttypesContenttypeIdMicrosoftGraphCopytodefaultcontentlocationPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/copy-mguserdrivelistcontenttypetodefaultcontentlocation
#>
function Copy-MgUserDriveListContentTypeToDefaultContentLocation {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='CopyExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Copy', Mandatory)]
    [Parameter(ParameterSetName='CopyExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of contentType
    ${ContentTypeId},

    [Parameter(ParameterSetName='Copy', Mandatory)]
    [Parameter(ParameterSetName='CopyExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Copy', Mandatory)]
    [Parameter(ParameterSetName='CopyExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CopyViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Copy', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CopyViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1T3YvnbUsersUserIdDrivesDriveIdListContenttypesContenttypeIdMicrosoftGraphCopytodefaultcontentlocationPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CopyExpanded')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CopyExpanded')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${DestinationFileName},

    [Parameter(ParameterSetName='CopyExpanded')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemReference]
    # itemReference
    # To construct, please use Get-Help -Online and see NOTES section for SOURCEFILE properties and create a hash table.
    ${SourceFile},

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
            Copy = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserDriveListContentTypeToDefaultContentLocation_Copy';
            CopyExpanded = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserDriveListContentTypeToDefaultContentLocation_CopyExpanded';
            CopyViaIdentity = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserDriveListContentTypeToDefaultContentLocation_CopyViaIdentity';
            CopyViaIdentityExpanded = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserDriveListContentTypeToDefaultContentLocation_CopyViaIdentityExpanded';
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
Invoke action copy
.Description
Invoke action copy

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths46YeauUsersUserIdDrivesDriveIdRootMicrosoftGraphCopyPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDriveItem1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/copy-mguserdriveroot
#>
function Copy-MgUserDriveRoot {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDriveItem1])]
[CmdletBinding(DefaultParameterSetName='CopyExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Copy', Mandatory)]
    [Parameter(ParameterSetName='CopyExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Copy', Mandatory)]
    [Parameter(ParameterSetName='CopyExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CopyViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Copy', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CopyViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths46YeauUsersUserIdDrivesDriveIdRootMicrosoftGraphCopyPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CopyExpanded')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CopyExpanded')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Name},

    [Parameter(ParameterSetName='CopyExpanded')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemReference]
    # itemReference
    # To construct, please use Get-Help -Online and see NOTES section for PARENTREFERENCE properties and create a hash table.
    ${ParentReference},

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
            Copy = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserDriveRoot_Copy';
            CopyExpanded = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserDriveRoot_CopyExpanded';
            CopyViaIdentity = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserDriveRoot_CopyViaIdentity';
            CopyViaIdentityExpanded = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserDriveRoot_CopyViaIdentityExpanded';
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
Invoke action copy
.Description
Invoke action copy

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1Xca8SiUsersUserIdMailfoldersMailfolderIdChildfoldersMailfolderId1MessagesMessageIdMicrosoftGraphCopyPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/copy-mgusermailfolderchildfoldermessage
#>
function Copy-MgUserMailFolderChildFolderMessage {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1])]
[CmdletBinding(DefaultParameterSetName='CopyExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Copy1', Mandatory)]
    [Parameter(ParameterSetName='CopyExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Copy1', Mandatory)]
    [Parameter(ParameterSetName='CopyExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId1},

    [Parameter(ParameterSetName='Copy1', Mandatory)]
    [Parameter(ParameterSetName='CopyExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Copy1', Mandatory)]
    [Parameter(ParameterSetName='CopyExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CopyViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Copy1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CopyViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Xca8SiUsersUserIdMailfoldersMailfolderIdChildfoldersMailfolderId1MessagesMessageIdMicrosoftGraphCopyPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CopyExpanded1')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CopyExpanded1')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${DestinationId},

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
            Copy1 = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserMailFolderChildFolderMessage_Copy1';
            CopyExpanded1 = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserMailFolderChildFolderMessage_CopyExpanded1';
            CopyViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserMailFolderChildFolderMessage_CopyViaIdentity1';
            CopyViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserMailFolderChildFolderMessage_CopyViaIdentityExpanded1';
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
Invoke action copy
.Description
Invoke action copy

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1E02JcUsersUserIdMailfoldersMailfolderIdChildfoldersMailfolderId1MicrosoftGraphCopyPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/copy-mgusermailfolderchildfolder
#>
function Copy-MgUserMailFolderChildFolder {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder1])]
[CmdletBinding(DefaultParameterSetName='CopyExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Copy1', Mandatory)]
    [Parameter(ParameterSetName='CopyExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Copy1', Mandatory)]
    [Parameter(ParameterSetName='CopyExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId1},

    [Parameter(ParameterSetName='Copy1', Mandatory)]
    [Parameter(ParameterSetName='CopyExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CopyViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Copy1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CopyViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1E02JcUsersUserIdMailfoldersMailfolderIdChildfoldersMailfolderId1MicrosoftGraphCopyPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CopyExpanded1')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CopyExpanded1')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${DestinationId},

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
            Copy1 = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserMailFolderChildFolder_Copy1';
            CopyExpanded1 = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserMailFolderChildFolder_CopyExpanded1';
            CopyViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserMailFolderChildFolder_CopyViaIdentity1';
            CopyViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserMailFolderChildFolder_CopyViaIdentityExpanded1';
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
Invoke action copy
.Description
Invoke action copy

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsDy94GcUsersUserIdMailfoldersMailfolderIdMessagesMessageIdMicrosoftGraphCopyPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/copy-mgusermailfoldermessage
#>
function Copy-MgUserMailFolderMessage {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1])]
[CmdletBinding(DefaultParameterSetName='CopyExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Copy1', Mandatory)]
    [Parameter(ParameterSetName='CopyExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Copy1', Mandatory)]
    [Parameter(ParameterSetName='CopyExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Copy1', Mandatory)]
    [Parameter(ParameterSetName='CopyExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CopyViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Copy1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CopyViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsDy94GcUsersUserIdMailfoldersMailfolderIdMessagesMessageIdMicrosoftGraphCopyPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CopyExpanded1')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CopyExpanded1')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${DestinationId},

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
            Copy1 = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserMailFolderMessage_Copy1';
            CopyExpanded1 = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserMailFolderMessage_CopyExpanded1';
            CopyViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserMailFolderMessage_CopyViaIdentity1';
            CopyViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserMailFolderMessage_CopyViaIdentityExpanded1';
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
Invoke action copy
.Description
Invoke action copy
.Example
Import-Module Microsoft.Graph.Users.Actions
$params = @{
	DestinationId = "destinationId-value"
}
# A UPN can also be used as -UserId.
Copy-MgUserMailFolder -UserId $userId -MailFolderId $mailFolderId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsSdgf1MUsersUserIdMailfoldersMailfolderIdMicrosoftGraphCopyPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/copy-mgusermailfolder
#>
function Copy-MgUserMailFolder {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder1])]
[CmdletBinding(DefaultParameterSetName='CopyExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Copy1', Mandatory)]
    [Parameter(ParameterSetName='CopyExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Copy1', Mandatory)]
    [Parameter(ParameterSetName='CopyExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CopyViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Copy1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CopyViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsSdgf1MUsersUserIdMailfoldersMailfolderIdMicrosoftGraphCopyPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CopyExpanded1')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CopyExpanded1')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${DestinationId},

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
            Copy1 = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserMailFolder_Copy1';
            CopyExpanded1 = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserMailFolder_CopyExpanded1';
            CopyViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserMailFolder_CopyViaIdentity1';
            CopyViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserMailFolder_CopyViaIdentityExpanded1';
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
Invoke action copy
.Description
Invoke action copy
.Example
Import-Module Microsoft.Graph.Users.Actions
$params = @{
	DestinationId = "destinationId-value"
}
# A UPN can also be used as -UserId.
Copy-MgUserMessage -UserId $userId -MessageId $messageId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsQbims6UsersUserIdMessagesMessageIdMicrosoftGraphCopyPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/copy-mgusermessage
#>
function Copy-MgUserMessage {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1])]
[CmdletBinding(DefaultParameterSetName='CopyExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Copy1', Mandatory)]
    [Parameter(ParameterSetName='CopyExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Copy1', Mandatory)]
    [Parameter(ParameterSetName='CopyExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CopyViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Copy1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CopyViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsQbims6UsersUserIdMessagesMessageIdMicrosoftGraphCopyPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CopyExpanded1')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CopyExpanded1')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${DestinationId},

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
            Copy1 = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserMessage_Copy1';
            CopyExpanded1 = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserMessage_CopyExpanded1';
            CopyViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserMessage_CopyViaIdentity1';
            CopyViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserMessage_CopyViaIdentityExpanded1';
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
Invoke action copyNotebook
.Description
Invoke action copyNotebook
.Example
Import-Module Microsoft.Graph.Users.Actions
$params = @{
	GroupId = "groupId-value"
	RenameAs = "renameAs-value"
}
# A UPN can also be used as -UserId.
Copy-MgUserOnenoteNotebook -UserId $userId -NotebookId $notebookId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths47PyxmUsersUserIdOnenoteNotebooksNotebookIdMicrosoftGraphCopynotebookPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnenoteOperation
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/copy-mguseronenotenotebook
#>
function Copy-MgUserOnenoteNotebook {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnenoteOperation])]
[CmdletBinding(DefaultParameterSetName='CopyExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Copy1', Mandatory)]
    [Parameter(ParameterSetName='CopyExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of notebook
    ${NotebookId},

    [Parameter(ParameterSetName='Copy1', Mandatory)]
    [Parameter(ParameterSetName='CopyExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CopyViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Copy1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CopyViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths47PyxmUsersUserIdOnenoteNotebooksNotebookIdMicrosoftGraphCopynotebookPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CopyExpanded1')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CopyExpanded1')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${GroupId},

    [Parameter(ParameterSetName='CopyExpanded1')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${NotebookFolder},

    [Parameter(ParameterSetName='CopyExpanded1')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${RenameAs},

    [Parameter(ParameterSetName='CopyExpanded1')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${SiteCollectionId},

    [Parameter(ParameterSetName='CopyExpanded1')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${SiteId},

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
            Copy1 = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserOnenoteNotebook_Copy1';
            CopyExpanded1 = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserOnenoteNotebook_CopyExpanded1';
            CopyViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserOnenoteNotebook_CopyViaIdentity1';
            CopyViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserOnenoteNotebook_CopyViaIdentityExpanded1';
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
Invoke action copyToSection
.Description
Invoke action copyToSection
.Example
Import-Module Microsoft.Graph.Users.Actions
$params = @{
	Id = "id-value"
	GroupId = "groupId-value"
}
# A UPN can also be used as -UserId.
Copy-MgUserOnenotePageToSection -UserId $userId -OnenotePageId $onenotePageId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsEy9Pr2UsersUserIdOnenotePagesOnenotepageIdMicrosoftGraphCopytosectionPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnenoteOperation
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/copy-mguseronenotepagetosection
#>
function Copy-MgUserOnenotePageToSection {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnenoteOperation])]
[CmdletBinding(DefaultParameterSetName='CopyExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Copy1', Mandatory)]
    [Parameter(ParameterSetName='CopyExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onenotePage
    ${OnenotePageId},

    [Parameter(ParameterSetName='Copy1', Mandatory)]
    [Parameter(ParameterSetName='CopyExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CopyViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Copy1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CopyViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsEy9Pr2UsersUserIdOnenotePagesOnenotepageIdMicrosoftGraphCopytosectionPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CopyExpanded1')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CopyExpanded1')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${GroupId},

    [Parameter(ParameterSetName='CopyExpanded1')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='CopyExpanded1')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${SiteCollectionId},

    [Parameter(ParameterSetName='CopyExpanded1')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${SiteId},

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
            Copy1 = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserOnenotePageToSection_Copy1';
            CopyExpanded1 = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserOnenotePageToSection_CopyExpanded1';
            CopyViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserOnenotePageToSection_CopyViaIdentity1';
            CopyViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserOnenotePageToSection_CopyViaIdentityExpanded1';
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
Invoke action copyToNotebook
.Description
Invoke action copyToNotebook
.Example
Import-Module Microsoft.Graph.Users.Actions
$params = @{
	Id = "id-value"
	GroupId = "groupId-value"
	RenameAs = "renameAs-value"
}
# A UPN can also be used as -UserId.
Copy-MgUserOnenoteSectionToNotebook -UserId $userId -OnenoteSectionId $onenoteSectionId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths26Y9CmUsersUserIdOnenoteSectionsOnenotesectionIdMicrosoftGraphCopytonotebookPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnenoteOperation
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/copy-mguseronenotesectiontonotebook
#>
function Copy-MgUserOnenoteSectionToNotebook {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnenoteOperation])]
[CmdletBinding(DefaultParameterSetName='CopyExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Copy1', Mandatory)]
    [Parameter(ParameterSetName='CopyExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onenoteSection
    ${OnenoteSectionId},

    [Parameter(ParameterSetName='Copy1', Mandatory)]
    [Parameter(ParameterSetName='CopyExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CopyViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Copy1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CopyViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths26Y9CmUsersUserIdOnenoteSectionsOnenotesectionIdMicrosoftGraphCopytonotebookPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CopyExpanded1')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CopyExpanded1')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${GroupId},

    [Parameter(ParameterSetName='CopyExpanded1')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='CopyExpanded1')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${RenameAs},

    [Parameter(ParameterSetName='CopyExpanded1')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${SiteCollectionId},

    [Parameter(ParameterSetName='CopyExpanded1')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${SiteId},

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
            Copy1 = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserOnenoteSectionToNotebook_Copy1';
            CopyExpanded1 = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserOnenoteSectionToNotebook_CopyExpanded1';
            CopyViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserOnenoteSectionToNotebook_CopyViaIdentity1';
            CopyViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserOnenoteSectionToNotebook_CopyViaIdentityExpanded1';
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
Invoke action copyToSectionGroup
.Description
Invoke action copyToSectionGroup
.Example
Import-Module Microsoft.Graph.Users.Actions
$params = @{
	Id = "id-value"
	GroupId = "groupId-value"
	RenameAs = "renameAs-value"
}
# A UPN can also be used as -UserId.
Copy-MgUserOnenoteSectionToSectionGroup -UserId $userId -OnenoteSectionId $onenoteSectionId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsRppvczUsersUserIdOnenoteSectionsOnenotesectionIdMicrosoftGraphCopytosectiongroupPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnenoteOperation
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/copy-mguseronenotesectiontosectiongroup
#>
function Copy-MgUserOnenoteSectionToSectionGroup {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnenoteOperation])]
[CmdletBinding(DefaultParameterSetName='CopyExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Copy1', Mandatory)]
    [Parameter(ParameterSetName='CopyExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onenoteSection
    ${OnenoteSectionId},

    [Parameter(ParameterSetName='Copy1', Mandatory)]
    [Parameter(ParameterSetName='CopyExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CopyViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Copy1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CopyViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsRppvczUsersUserIdOnenoteSectionsOnenotesectionIdMicrosoftGraphCopytosectiongroupPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CopyExpanded1')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CopyExpanded1')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${GroupId},

    [Parameter(ParameterSetName='CopyExpanded1')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='CopyExpanded1')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${RenameAs},

    [Parameter(ParameterSetName='CopyExpanded1')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${SiteCollectionId},

    [Parameter(ParameterSetName='CopyExpanded1')]
    [Parameter(ParameterSetName='CopyViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${SiteId},

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
            Copy1 = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserOnenoteSectionToSectionGroup_Copy1';
            CopyExpanded1 = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserOnenoteSectionToSectionGroup_CopyExpanded1';
            CopyViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserOnenoteSectionToSectionGroup_CopyViaIdentity1';
            CopyViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Copy-MgUserOnenoteSectionToSectionGroup_CopyViaIdentityExpanded1';
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
Invoke action disableSmsSignIn
.Description
Invoke action disableSmsSignIn
.Example
Import-Module Microsoft.Graph.Users.Actions
# A UPN can also be used as -UserId.
Disable-MgUserAuthenticationPhoneMethodSmSign -UserId $userId -PhoneAuthenticationMethodId $phoneAuthenticationMethodId

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/disable-mguserauthenticationphonemethodsmsign
#>
function Disable-MgUserAuthenticationPhoneMethodSmSign {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Disable', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Disable', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of phoneAuthenticationMethod
    ${PhoneAuthenticationMethodId},

    [Parameter(ParameterSetName='Disable', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DisableViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Disable = 'Microsoft.Graph.Users.Actions.private\Disable-MgUserAuthenticationPhoneMethodSmSign_Disable';
            DisableViaIdentity = 'Microsoft.Graph.Users.Actions.private\Disable-MgUserAuthenticationPhoneMethodSmSign_DisableViaIdentity';
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
Disable lost mode
.Description
Disable lost mode

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/disable-mgusermanageddevicelostmode
#>
function Disable-MgUserManagedDeviceLostMode {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Disable1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Disable1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='Disable1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DisableViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Disable1 = 'Microsoft.Graph.Users.Actions.private\Disable-MgUserManagedDeviceLostMode_Disable1';
            DisableViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Disable-MgUserManagedDeviceLostMode_DisableViaIdentity1';
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
Invoke action enableSmsSignIn
.Description
Invoke action enableSmsSignIn
.Example
Import-Module Microsoft.Graph.Users.Actions
# A UPN can also be used as -UserId.
Enable-MgUserAuthenticationPhoneMethodSmSign -UserId $userId -PhoneAuthenticationMethodId $phoneAuthenticationMethodId

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/enable-mguserauthenticationphonemethodsmsign
#>
function Enable-MgUserAuthenticationPhoneMethodSmSign {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Enable', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Enable', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of phoneAuthenticationMethod
    ${PhoneAuthenticationMethodId},

    [Parameter(ParameterSetName='Enable', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='EnableViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Enable = 'Microsoft.Graph.Users.Actions.private\Enable-MgUserAuthenticationPhoneMethodSmSign_Enable';
            EnableViaIdentity = 'Microsoft.Graph.Users.Actions.private\Enable-MgUserAuthenticationPhoneMethodSmSign_EnableViaIdentity';
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
Invoke action exportPersonalData
.Description
Invoke action exportPersonalData
.Example
Import-Module Microsoft.Graph.Users.Actions
$params = @{
	StorageLocation = "storageLocation-value"
}
Export-MgUserPersonalData -UserId $userId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1Xhdcw6UsersUserIdMicrosoftGraphExportpersonaldataPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/export-mguserpersonaldata
#>
function Export-MgUserPersonalData {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='ExportExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Export1', Mandatory)]
    [Parameter(ParameterSetName='ExportExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ExportViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ExportViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Export1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ExportViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Xhdcw6UsersUserIdMicrosoftGraphExportpersonaldataPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='ExportExpanded1')]
    [Parameter(ParameterSetName='ExportViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='ExportExpanded1')]
    [Parameter(ParameterSetName='ExportViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${StorageLocation},

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
            Export1 = 'Microsoft.Graph.Users.Actions.private\Export-MgUserPersonalData_Export1';
            ExportExpanded1 = 'Microsoft.Graph.Users.Actions.private\Export-MgUserPersonalData_ExportExpanded1';
            ExportViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Export-MgUserPersonalData_ExportViaIdentity1';
            ExportViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Export-MgUserPersonalData_ExportViaIdentityExpanded1';
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
Locate a device
.Description
Locate a device

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/find-mgusermanageddevice
#>
function Find-MgUserManagedDevice {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Locate1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Locate1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='Locate1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='LocateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Locate1 = 'Microsoft.Graph.Users.Actions.private\Find-MgUserManagedDevice_Locate1';
            LocateViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Find-MgUserManagedDevice_LocateViaIdentity1';
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
Invoke action findMeetingTimes
.Description
Invoke action findMeetingTimes
.Example
Import-Module Microsoft.Graph.Users.Actions
$params = @{
	Attendees = @(
		@{
			Type = "required"
			EmailAddress = @{
				Name = "Alex Wilbur"
				Address = "alexw@contoso.onmicrosoft.com"
			}
		}
	)
	LocationConstraint = @{
		IsRequired = $false
		SuggestLocation = $false
		Locations = @(
			@{
				ResolveAvailability = $false
				DisplayName = "Conf room Hood"
			}
		)
	}
	TimeConstraint = @{
		ActivityDomain = "work"
		TimeSlots = @(
			@{
				Start = @{
					DateTime = "2019-04-16T09:00:00"
					TimeZone = "Pacific Standard Time"
				}
				End = @{
					DateTime = "2019-04-18T17:00:00"
					TimeZone = "Pacific Standard Time"
				}
			}
		)
	}
	IsOrganizerOptional = "false"
	MeetingDuration = "PT1H"
	ReturnSuggestionReasons = "true"
	MinimumAttendeePercentage = "100"
}
# A UPN can also be used as -UserId.
Find-MgUserMeetingTime -UserId $userId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsSzpbzfUsersUserIdMicrosoftGraphFindmeetingtimesPostRequestbodyContentApplicationJsonSchema1
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingTimeSuggestionsResult1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/find-mgusermeetingtime
#>
function Find-MgUserMeetingTime {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingTimeSuggestionsResult1])]
[CmdletBinding(DefaultParameterSetName='FindExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Find1', Mandatory)]
    [Parameter(ParameterSetName='FindExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='FindViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='FindViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Find1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='FindViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsSzpbzfUsersUserIdMicrosoftGraphFindmeetingtimesPostRequestbodyContentApplicationJsonSchema1]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='FindExpanded1')]
    [Parameter(ParameterSetName='FindViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='FindExpanded1')]
    [Parameter(ParameterSetName='FindViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttendeeBase[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for ATTENDEES properties and create a hash table.
    ${Attendees},

    [Parameter(ParameterSetName='FindExpanded1')]
    [Parameter(ParameterSetName='FindViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${IsOrganizerOptional},

    [Parameter(ParameterSetName='FindExpanded1')]
    [Parameter(ParameterSetName='FindViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphLocationConstraint1]
    # locationConstraint
    # To construct, please use Get-Help -Online and see NOTES section for LOCATIONCONSTRAINT properties and create a hash table.
    ${LocationConstraint},

    [Parameter(ParameterSetName='FindExpanded1')]
    [Parameter(ParameterSetName='FindViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${MaxCandidates},

    [Parameter(ParameterSetName='FindExpanded1')]
    [Parameter(ParameterSetName='FindViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.TimeSpan]
    # .
    ${MeetingDuration},

    [Parameter(ParameterSetName='FindExpanded1')]
    [Parameter(ParameterSetName='FindViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Double]
    # .
    ${MinimumAttendeePercentage},

    [Parameter(ParameterSetName='FindExpanded1')]
    [Parameter(ParameterSetName='FindViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${ReturnSuggestionReasons},

    [Parameter(ParameterSetName='FindExpanded1')]
    [Parameter(ParameterSetName='FindViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTimeConstraint]
    # timeConstraint
    # To construct, please use Get-Help -Online and see NOTES section for TIMECONSTRAINT properties and create a hash table.
    ${TimeConstraint},

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
            Find1 = 'Microsoft.Graph.Users.Actions.private\Find-MgUserMeetingTime_Find1';
            FindExpanded1 = 'Microsoft.Graph.Users.Actions.private\Find-MgUserMeetingTime_FindExpanded1';
            FindViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Find-MgUserMeetingTime_FindViaIdentity1';
            FindViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Find-MgUserMeetingTime_FindViaIdentityExpanded1';
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
Invoke action getMemberGroups
.Description
Invoke action getMemberGroups

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1Ws8ZvUsersUserIdAuthenticationMicrosoftauthenticatormethodsMicrosoftauthenticatorauthenticationmethodIdDeviceMicrosoftGraphGetmembergroupsPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.String
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/get-mguserauthenticationmicrosoftauthenticatormethoddevicemembergroup
#>
function Get-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceMemberGroup {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='GetExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='GetExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of microsoftAuthenticatorAuthenticationMethod
    ${MicrosoftAuthenticatorAuthenticationMethodId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='GetExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Get', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Ws8ZvUsersUserIdAuthenticationMicrosoftauthenticatormethodsMicrosoftauthenticatorauthenticationmethodIdDeviceMicrosoftGraphGetmembergroupsPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='GetExpanded')]
    [Parameter(ParameterSetName='GetViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='GetExpanded')]
    [Parameter(ParameterSetName='GetViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${SecurityEnabledOnly},

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
            Get = 'Microsoft.Graph.Users.Actions.private\Get-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceMemberGroup_Get';
            GetExpanded = 'Microsoft.Graph.Users.Actions.private\Get-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceMemberGroup_GetExpanded';
            GetViaIdentity = 'Microsoft.Graph.Users.Actions.private\Get-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceMemberGroup_GetViaIdentity';
            GetViaIdentityExpanded = 'Microsoft.Graph.Users.Actions.private\Get-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceMemberGroup_GetViaIdentityExpanded';
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
Invoke action getMemberObjects
.Description
Invoke action getMemberObjects

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths66Y6W9UsersUserIdAuthenticationMicrosoftauthenticatormethodsMicrosoftauthenticatorauthenticationmethodIdDeviceMicrosoftGraphGetmemberobjectsPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.String
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/get-mguserauthenticationmicrosoftauthenticatormethoddevicememberobject
#>
function Get-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceMemberObject {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='GetExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='GetExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of microsoftAuthenticatorAuthenticationMethod
    ${MicrosoftAuthenticatorAuthenticationMethodId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='GetExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Get', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths66Y6W9UsersUserIdAuthenticationMicrosoftauthenticatormethodsMicrosoftauthenticatorauthenticationmethodIdDeviceMicrosoftGraphGetmemberobjectsPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='GetExpanded')]
    [Parameter(ParameterSetName='GetViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='GetExpanded')]
    [Parameter(ParameterSetName='GetViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${SecurityEnabledOnly},

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
            Get = 'Microsoft.Graph.Users.Actions.private\Get-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceMemberObject_Get';
            GetExpanded = 'Microsoft.Graph.Users.Actions.private\Get-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceMemberObject_GetExpanded';
            GetViaIdentity = 'Microsoft.Graph.Users.Actions.private\Get-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceMemberObject_GetViaIdentity';
            GetViaIdentityExpanded = 'Microsoft.Graph.Users.Actions.private\Get-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceMemberObject_GetViaIdentityExpanded';
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
Invoke action getMemberGroups
.Description
Invoke action getMemberGroups

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsC8UkhhUsersUserIdAuthenticationWindowshelloforbusinessmethodsWindowshelloforbusinessauthenticationmethodIdDeviceMicrosoftGraphGetmembergroupsPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.String
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/get-mguserauthenticationwindowhelloforbusinessmethoddevicemembergroup
#>
function Get-MgUserAuthenticationWindowHelloForBusinessMethodDeviceMemberGroup {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='GetExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='GetExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='GetExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of windowsHelloForBusinessAuthenticationMethod
    ${WindowsHelloForBusinessAuthenticationMethodId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Get1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsC8UkhhUsersUserIdAuthenticationWindowshelloforbusinessmethodsWindowshelloforbusinessauthenticationmethodIdDeviceMicrosoftGraphGetmembergroupsPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Parameter(ParameterSetName='GetViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Parameter(ParameterSetName='GetViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${SecurityEnabledOnly},

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
            Get1 = 'Microsoft.Graph.Users.Actions.private\Get-MgUserAuthenticationWindowHelloForBusinessMethodDeviceMemberGroup_Get1';
            GetExpanded1 = 'Microsoft.Graph.Users.Actions.private\Get-MgUserAuthenticationWindowHelloForBusinessMethodDeviceMemberGroup_GetExpanded1';
            GetViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Get-MgUserAuthenticationWindowHelloForBusinessMethodDeviceMemberGroup_GetViaIdentity1';
            GetViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Get-MgUserAuthenticationWindowHelloForBusinessMethodDeviceMemberGroup_GetViaIdentityExpanded1';
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
Invoke action getMemberObjects
.Description
Invoke action getMemberObjects

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsNiyp19UsersUserIdAuthenticationWindowshelloforbusinessmethodsWindowshelloforbusinessauthenticationmethodIdDeviceMicrosoftGraphGetmemberobjectsPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.String
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/get-mguserauthenticationwindowhelloforbusinessmethoddevicememberobject
#>
function Get-MgUserAuthenticationWindowHelloForBusinessMethodDeviceMemberObject {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='GetExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='GetExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='GetExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of windowsHelloForBusinessAuthenticationMethod
    ${WindowsHelloForBusinessAuthenticationMethodId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Get1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsNiyp19UsersUserIdAuthenticationWindowshelloforbusinessmethodsWindowshelloforbusinessauthenticationmethodIdDeviceMicrosoftGraphGetmemberobjectsPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Parameter(ParameterSetName='GetViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Parameter(ParameterSetName='GetViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${SecurityEnabledOnly},

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
            Get1 = 'Microsoft.Graph.Users.Actions.private\Get-MgUserAuthenticationWindowHelloForBusinessMethodDeviceMemberObject_Get1';
            GetExpanded1 = 'Microsoft.Graph.Users.Actions.private\Get-MgUserAuthenticationWindowHelloForBusinessMethodDeviceMemberObject_GetExpanded1';
            GetViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Get-MgUserAuthenticationWindowHelloForBusinessMethodDeviceMemberObject_GetViaIdentity1';
            GetViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Get-MgUserAuthenticationWindowHelloForBusinessMethodDeviceMemberObject_GetViaIdentityExpanded1';
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
Invoke action getByIds
.Description
Invoke action getByIds

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsBjm3ZyUsersMicrosoftGraphGetbyidsPostRequestbodyContentApplicationJsonSchema1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDirectoryObject
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/get-mguserbyid
#>
function Get-MgUserById {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDirectoryObject])]
[CmdletBinding(DefaultParameterSetName='GetExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsBjm3ZyUsersMicrosoftGraphGetbyidsPostRequestbodyContentApplicationJsonSchema1]
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

    [Parameter(ParameterSetName='GetExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Types},

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
            Get1 = 'Microsoft.Graph.Users.Actions.private\Get-MgUserById_Get1';
            GetExpanded1 = 'Microsoft.Graph.Users.Actions.private\Get-MgUserById_GetExpanded1';
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
Invoke action getSchedule
.Description
Invoke action getSchedule

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsQue4OrUsersUserIdCalendarsCalendarIdMicrosoftGraphGetschedulePostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphScheduleInformation
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/get-mgusercalendarschedule
#>
function Get-MgUserCalendarSchedule {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphScheduleInformation])]
[CmdletBinding(DefaultParameterSetName='GetExpanded3', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get3', Mandatory)]
    [Parameter(ParameterSetName='GetExpanded3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of calendar
    ${CalendarId},

    [Parameter(ParameterSetName='Get3', Mandatory)]
    [Parameter(ParameterSetName='GetExpanded3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity3', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentityExpanded3', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Get3', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity3', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsQue4OrUsersUserIdCalendarsCalendarIdMicrosoftGraphGetschedulePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='GetExpanded3')]
    [Parameter(ParameterSetName='GetViaIdentityExpanded3')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='GetExpanded3')]
    [Parameter(ParameterSetName='GetViaIdentityExpanded3')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${AvailabilityViewInterval},

    [Parameter(ParameterSetName='GetExpanded3')]
    [Parameter(ParameterSetName='GetViaIdentityExpanded3')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDateTimeZone]
    # dateTimeTimeZone
    # To construct, please use Get-Help -Online and see NOTES section for ENDTIME properties and create a hash table.
    ${EndTime},

    [Parameter(ParameterSetName='GetExpanded3')]
    [Parameter(ParameterSetName='GetViaIdentityExpanded3')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Schedules},

    [Parameter(ParameterSetName='GetExpanded3')]
    [Parameter(ParameterSetName='GetViaIdentityExpanded3')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDateTimeZone]
    # dateTimeTimeZone
    # To construct, please use Get-Help -Online and see NOTES section for STARTTIME properties and create a hash table.
    ${StartTime},

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
            Get3 = 'Microsoft.Graph.Users.Actions.private\Get-MgUserCalendarSchedule_Get3';
            GetExpanded3 = 'Microsoft.Graph.Users.Actions.private\Get-MgUserCalendarSchedule_GetExpanded3';
            GetViaIdentity3 = 'Microsoft.Graph.Users.Actions.private\Get-MgUserCalendarSchedule_GetViaIdentity3';
            GetViaIdentityExpanded3 = 'Microsoft.Graph.Users.Actions.private\Get-MgUserCalendarSchedule_GetViaIdentityExpanded3';
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
Invoke action getSchedule
.Description
Invoke action getSchedule
.Example
Import-Module Microsoft.Graph.Users.Actions
$params = @{
	Schedules = @(
		"adelev@contoso.onmicrosoft.com"
		"meganb@contoso.onmicrosoft.com"
	)
	StartTime = @{
		DateTime = "2019-03-15T09:00:00"
		TimeZone = "Pacific Standard Time"
	}
	EndTime = @{
		DateTime = "2019-03-15T18:00:00"
		TimeZone = "Pacific Standard Time"
	}
	AvailabilityViewInterval = 60
}
# A UPN can also be used as -UserId.
Get-MgUserDefaultCalendarSchedule -UserId $userId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsQe3PsvUsersUserIdCalendarMicrosoftGraphGetschedulePostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphScheduleInformation
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/get-mguserdefaultcalendarschedule
#>
function Get-MgUserDefaultCalendarSchedule {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphScheduleInformation])]
[CmdletBinding(DefaultParameterSetName='GetExpanded2', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get2', Mandatory)]
    [Parameter(ParameterSetName='GetExpanded2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity2', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentityExpanded2', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Get2', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity2', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsQe3PsvUsersUserIdCalendarMicrosoftGraphGetschedulePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='GetExpanded2')]
    [Parameter(ParameterSetName='GetViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='GetExpanded2')]
    [Parameter(ParameterSetName='GetViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # .
    ${AvailabilityViewInterval},

    [Parameter(ParameterSetName='GetExpanded2')]
    [Parameter(ParameterSetName='GetViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDateTimeZone]
    # dateTimeTimeZone
    # To construct, please use Get-Help -Online and see NOTES section for ENDTIME properties and create a hash table.
    ${EndTime},

    [Parameter(ParameterSetName='GetExpanded2')]
    [Parameter(ParameterSetName='GetViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Schedules},

    [Parameter(ParameterSetName='GetExpanded2')]
    [Parameter(ParameterSetName='GetViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDateTimeZone]
    # dateTimeTimeZone
    # To construct, please use Get-Help -Online and see NOTES section for STARTTIME properties and create a hash table.
    ${StartTime},

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
            Get2 = 'Microsoft.Graph.Users.Actions.private\Get-MgUserDefaultCalendarSchedule_Get2';
            GetExpanded2 = 'Microsoft.Graph.Users.Actions.private\Get-MgUserDefaultCalendarSchedule_GetExpanded2';
            GetViaIdentity2 = 'Microsoft.Graph.Users.Actions.private\Get-MgUserDefaultCalendarSchedule_GetViaIdentity2';
            GetViaIdentityExpanded2 = 'Microsoft.Graph.Users.Actions.private\Get-MgUserDefaultCalendarSchedule_GetViaIdentityExpanded2';
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
Invoke action getMailTips
.Description
Invoke action getMailTips
.Example
Import-Module Microsoft.Graph.Users.Actions
$params = @{
	EmailAddresses = @(
		"danas@contoso.onmicrosoft.com"
		"fannyd@contoso.onmicrosoft.com"
	)
	MailTipsOptions = "automaticReplies, mailboxFullStatus"
}
# A UPN can also be used as -UserId.
Get-MgUserMailTip -UserId $userId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsPp15VbUsersUserIdMicrosoftGraphGetmailtipsPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailTips
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/get-mgusermailtip
#>
function Get-MgUserMailTip {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailTips])]
[CmdletBinding(DefaultParameterSetName='GetExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='GetExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Get1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsPp15VbUsersUserIdMicrosoftGraphGetmailtipsPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Parameter(ParameterSetName='GetViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Parameter(ParameterSetName='GetViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${EmailAddresses},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Parameter(ParameterSetName='GetViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # mailTipsType
    ${MailTipsOptions},

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
            Get1 = 'Microsoft.Graph.Users.Actions.private\Get-MgUserMailTip_Get1';
            GetExpanded1 = 'Microsoft.Graph.Users.Actions.private\Get-MgUserMailTip_GetExpanded1';
            GetViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Get-MgUserMailTip_GetViaIdentity1';
            GetViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Get-MgUserMailTip_GetViaIdentityExpanded1';
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
Invoke action getMemberGroups
.Description
Invoke action getMemberGroups
.Example
Import-Module Microsoft.Graph.Users.Actions
$params = @{
	SecurityEnabledOnly = $true
}
# A UPN can also be used as -UserId.
Get-MgUserMemberGroup -UserId $userId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths18H5WxmUsersUserIdMicrosoftGraphGetmembergroupsPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.String
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/get-mgusermembergroup
#>
function Get-MgUserMemberGroup {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='GetExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='GetExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Get1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths18H5WxmUsersUserIdMicrosoftGraphGetmembergroupsPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Parameter(ParameterSetName='GetViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Parameter(ParameterSetName='GetViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${SecurityEnabledOnly},

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
            Get1 = 'Microsoft.Graph.Users.Actions.private\Get-MgUserMemberGroup_Get1';
            GetExpanded1 = 'Microsoft.Graph.Users.Actions.private\Get-MgUserMemberGroup_GetExpanded1';
            GetViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Get-MgUserMemberGroup_GetViaIdentity1';
            GetViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Get-MgUserMemberGroup_GetViaIdentityExpanded1';
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
Invoke action getMemberObjects
.Description
Invoke action getMemberObjects

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths5Y1AzfUsersUserIdMicrosoftGraphGetmemberobjectsPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.String
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/get-mgusermemberobject
#>
function Get-MgUserMemberObject {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='GetExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='GetExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Get1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths5Y1AzfUsersUserIdMicrosoftGraphGetmemberobjectsPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Parameter(ParameterSetName='GetViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Parameter(ParameterSetName='GetViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${SecurityEnabledOnly},

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
            Get1 = 'Microsoft.Graph.Users.Actions.private\Get-MgUserMemberObject_Get1';
            GetExpanded1 = 'Microsoft.Graph.Users.Actions.private\Get-MgUserMemberObject_GetExpanded1';
            GetViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Get-MgUserMemberObject_GetViaIdentity1';
            GetViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Get-MgUserMemberObject_GetViaIdentityExpanded1';
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
Invoke action getNotebookFromWebUrl
.Description
Invoke action getNotebookFromWebUrl
.Example
Import-Module Microsoft.Graph.Users.Actions
$params = @{
	WebUrl = "webUrl value"
}
# A UPN can also be used as -UserId.
Get-MgUserOnenoteNotebookFromWebUrl -UserId $userId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1Fukv4UsersUserIdOnenoteNotebooksMicrosoftGraphGetnotebookfromweburlPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCopyNotebookModel
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/get-mguseronenotenotebookfromweburl
#>
function Get-MgUserOnenoteNotebookFromWebUrl {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCopyNotebookModel])]
[CmdletBinding(DefaultParameterSetName='GetExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='GetExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Get1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Fukv4UsersUserIdOnenoteNotebooksMicrosoftGraphGetnotebookfromweburlPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Parameter(ParameterSetName='GetViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='GetExpanded1')]
    [Parameter(ParameterSetName='GetViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${WebUrl},

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
            Get1 = 'Microsoft.Graph.Users.Actions.private\Get-MgUserOnenoteNotebookFromWebUrl_Get1';
            GetExpanded1 = 'Microsoft.Graph.Users.Actions.private\Get-MgUserOnenoteNotebookFromWebUrl_GetExpanded1';
            GetViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Get-MgUserOnenoteNotebookFromWebUrl_GetViaIdentity1';
            GetViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Get-MgUserOnenoteNotebookFromWebUrl_GetViaIdentityExpanded1';
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
Invoke action grant
.Description
Invoke action grant

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1Sp3KjhUsersUserIdDrivesDriveIdItemsDriveitemIdPermissionsPermissionIdMicrosoftGraphGrantPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPermission1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/grant-mguserdriveitempermission
#>
function Grant-MgUserDriveItemPermission {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPermission1])]
[CmdletBinding(DefaultParameterSetName='GrantExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Grant', Mandatory)]
    [Parameter(ParameterSetName='GrantExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Grant', Mandatory)]
    [Parameter(ParameterSetName='GrantExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of driveItem
    ${DriveItemId},

    [Parameter(ParameterSetName='Grant', Mandatory)]
    [Parameter(ParameterSetName='GrantExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of permission
    ${PermissionId},

    [Parameter(ParameterSetName='Grant', Mandatory)]
    [Parameter(ParameterSetName='GrantExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GrantViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GrantViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Grant', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GrantViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Sp3KjhUsersUserIdDrivesDriveIdItemsDriveitemIdPermissionsPermissionIdMicrosoftGraphGrantPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='GrantExpanded')]
    [Parameter(ParameterSetName='GrantViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='GrantExpanded')]
    [Parameter(ParameterSetName='GrantViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDriveRecipient[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for RECIPIENTS properties and create a hash table.
    ${Recipients},

    [Parameter(ParameterSetName='GrantExpanded')]
    [Parameter(ParameterSetName='GrantViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Roles},

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
            Grant = 'Microsoft.Graph.Users.Actions.private\Grant-MgUserDriveItemPermission_Grant';
            GrantExpanded = 'Microsoft.Graph.Users.Actions.private\Grant-MgUserDriveItemPermission_GrantExpanded';
            GrantViaIdentity = 'Microsoft.Graph.Users.Actions.private\Grant-MgUserDriveItemPermission_GrantViaIdentity';
            GrantViaIdentityExpanded = 'Microsoft.Graph.Users.Actions.private\Grant-MgUserDriveItemPermission_GrantViaIdentityExpanded';
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
Invoke action grant
.Description
Invoke action grant

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsQisc3SUsersUserIdDrivesDriveIdRootPermissionsPermissionIdMicrosoftGraphGrantPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPermission1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/grant-mguserdriverootpermission
#>
function Grant-MgUserDriveRootPermission {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPermission1])]
[CmdletBinding(DefaultParameterSetName='GrantExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Grant1', Mandatory)]
    [Parameter(ParameterSetName='GrantExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Grant1', Mandatory)]
    [Parameter(ParameterSetName='GrantExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of permission
    ${PermissionId},

    [Parameter(ParameterSetName='Grant1', Mandatory)]
    [Parameter(ParameterSetName='GrantExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GrantViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GrantViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Grant1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GrantViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsQisc3SUsersUserIdDrivesDriveIdRootPermissionsPermissionIdMicrosoftGraphGrantPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='GrantExpanded1')]
    [Parameter(ParameterSetName='GrantViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='GrantExpanded1')]
    [Parameter(ParameterSetName='GrantViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDriveRecipient[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for RECIPIENTS properties and create a hash table.
    ${Recipients},

    [Parameter(ParameterSetName='GrantExpanded1')]
    [Parameter(ParameterSetName='GrantViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Roles},

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
            Grant1 = 'Microsoft.Graph.Users.Actions.private\Grant-MgUserDriveRootPermission_Grant1';
            GrantExpanded1 = 'Microsoft.Graph.Users.Actions.private\Grant-MgUserDriveRootPermission_GrantExpanded1';
            GrantViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Grant-MgUserDriveRootPermission_GrantViaIdentity1';
            GrantViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Grant-MgUserDriveRootPermission_GrantViaIdentityExpanded1';
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
Invoke action tentativelyAccept
.Description
Invoke action tentativelyAccept

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths14D4S5WUsersUserIdEventsEventIdInstancesEventId1MicrosoftGraphTentativelyacceptPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgacceptusereventinstancetentatively
#>
function Invoke-MgAcceptUserEventInstanceTentatively {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='AcceptExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Accept1', Mandatory)]
    [Parameter(ParameterSetName='AcceptExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of event
    ${EventId},

    [Parameter(ParameterSetName='Accept1', Mandatory)]
    [Parameter(ParameterSetName='AcceptExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of event
    ${EventId1},

    [Parameter(ParameterSetName='Accept1', Mandatory)]
    [Parameter(ParameterSetName='AcceptExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='AcceptViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='AcceptViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Accept1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='AcceptViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths14D4S5WUsersUserIdEventsEventIdInstancesEventId1MicrosoftGraphTentativelyacceptPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='AcceptExpanded1')]
    [Parameter(ParameterSetName='AcceptViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='AcceptExpanded1')]
    [Parameter(ParameterSetName='AcceptViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Comment},

    [Parameter(ParameterSetName='AcceptExpanded1')]
    [Parameter(ParameterSetName='AcceptViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTimeSlot]
    # timeSlot
    # To construct, please use Get-Help -Online and see NOTES section for PROPOSEDNEWTIME properties and create a hash table.
    ${ProposedNewTime},

    [Parameter(ParameterSetName='AcceptExpanded1')]
    [Parameter(ParameterSetName='AcceptViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${SendResponse},

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
            Accept1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgAcceptUserEventInstanceTentatively_Accept1';
            AcceptExpanded1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgAcceptUserEventInstanceTentatively_AcceptExpanded1';
            AcceptViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgAcceptUserEventInstanceTentatively_AcceptViaIdentity1';
            AcceptViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgAcceptUserEventInstanceTentatively_AcceptViaIdentityExpanded1';
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
Invoke action accept
.Description
Invoke action accept

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1Qs6J67UsersUserIdEventsEventIdInstancesEventId1MicrosoftGraphAcceptPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgacceptusereventinstance
#>
function Invoke-MgAcceptUserEventInstance {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='AcceptExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Accept1', Mandatory)]
    [Parameter(ParameterSetName='AcceptExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of event
    ${EventId},

    [Parameter(ParameterSetName='Accept1', Mandatory)]
    [Parameter(ParameterSetName='AcceptExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of event
    ${EventId1},

    [Parameter(ParameterSetName='Accept1', Mandatory)]
    [Parameter(ParameterSetName='AcceptExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='AcceptViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='AcceptViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Accept1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='AcceptViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Qs6J67UsersUserIdEventsEventIdInstancesEventId1MicrosoftGraphAcceptPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='AcceptExpanded1')]
    [Parameter(ParameterSetName='AcceptViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='AcceptExpanded1')]
    [Parameter(ParameterSetName='AcceptViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Comment},

    [Parameter(ParameterSetName='AcceptExpanded1')]
    [Parameter(ParameterSetName='AcceptViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${SendResponse},

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
            Accept1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgAcceptUserEventInstance_Accept1';
            AcceptExpanded1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgAcceptUserEventInstance_AcceptExpanded1';
            AcceptViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgAcceptUserEventInstance_AcceptViaIdentity1';
            AcceptViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgAcceptUserEventInstance_AcceptViaIdentityExpanded1';
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
Invoke action tentativelyAccept
.Description
Invoke action tentativelyAccept
.Example
Import-Module Microsoft.Graph.Users.Actions
$params = @{
	Comment = "I may not be able to make this week. How about next week?"
	SendResponse = $true
	ProposedNewTime = @{
		Start = @{
			DateTime = "2019-12-02T18:00:00"
			TimeZone = "Pacific Standard Time"
		}
		End = @{
			DateTime = "2019-12-02T19:00:00"
			TimeZone = "Pacific Standard Time"
		}
	}
}
# A UPN can also be used as -UserId.
Invoke-MgAcceptUserEventTentatively -UserId $userId -EventId $eventId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1J1KpiuUsersUserIdEventsEventIdMicrosoftGraphTentativelyacceptPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgacceptusereventtentatively
#>
function Invoke-MgAcceptUserEventTentatively {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='AcceptExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Accept1', Mandatory)]
    [Parameter(ParameterSetName='AcceptExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of event
    ${EventId},

    [Parameter(ParameterSetName='Accept1', Mandatory)]
    [Parameter(ParameterSetName='AcceptExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='AcceptViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='AcceptViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Accept1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='AcceptViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1J1KpiuUsersUserIdEventsEventIdMicrosoftGraphTentativelyacceptPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='AcceptExpanded1')]
    [Parameter(ParameterSetName='AcceptViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='AcceptExpanded1')]
    [Parameter(ParameterSetName='AcceptViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Comment},

    [Parameter(ParameterSetName='AcceptExpanded1')]
    [Parameter(ParameterSetName='AcceptViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTimeSlot]
    # timeSlot
    # To construct, please use Get-Help -Online and see NOTES section for PROPOSEDNEWTIME properties and create a hash table.
    ${ProposedNewTime},

    [Parameter(ParameterSetName='AcceptExpanded1')]
    [Parameter(ParameterSetName='AcceptViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${SendResponse},

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
            Accept1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgAcceptUserEventTentatively_Accept1';
            AcceptExpanded1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgAcceptUserEventTentatively_AcceptExpanded1';
            AcceptViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgAcceptUserEventTentatively_AcceptViaIdentity1';
            AcceptViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgAcceptUserEventTentatively_AcceptViaIdentityExpanded1';
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
Invoke action accept
.Description
Invoke action accept
.Example
Import-Module Microsoft.Graph.Users.Actions
$params = @{
	Comment = "comment-value"
	SendResponse = $true
}
# A UPN can also be used as -UserId.
Invoke-MgAcceptUserEvent -UserId $userId -EventId $eventId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1SpvidmUsersUserIdEventsEventIdMicrosoftGraphAcceptPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgacceptuserevent
#>
function Invoke-MgAcceptUserEvent {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='AcceptExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Accept1', Mandatory)]
    [Parameter(ParameterSetName='AcceptExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of event
    ${EventId},

    [Parameter(ParameterSetName='Accept1', Mandatory)]
    [Parameter(ParameterSetName='AcceptExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='AcceptViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='AcceptViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Accept1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='AcceptViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1SpvidmUsersUserIdEventsEventIdMicrosoftGraphAcceptPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='AcceptExpanded1')]
    [Parameter(ParameterSetName='AcceptViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='AcceptExpanded1')]
    [Parameter(ParameterSetName='AcceptViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Comment},

    [Parameter(ParameterSetName='AcceptExpanded1')]
    [Parameter(ParameterSetName='AcceptViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${SendResponse},

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
            Accept1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgAcceptUserEvent_Accept1';
            AcceptExpanded1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgAcceptUserEvent_AcceptExpanded1';
            AcceptViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgAcceptUserEvent_AcceptViaIdentity1';
            AcceptViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgAcceptUserEvent_AcceptViaIdentityExpanded1';
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
Invoke action checkin
.Description
Invoke action checkin

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsTplberUsersUserIdDrivesDriveIdItemsDriveitemIdMicrosoftGraphCheckinPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgcheckinuserdriveitem
#>
function Invoke-MgCheckinUserDriveItem {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='CheckinExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Checkin', Mandatory)]
    [Parameter(ParameterSetName='CheckinExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Checkin', Mandatory)]
    [Parameter(ParameterSetName='CheckinExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of driveItem
    ${DriveItemId},

    [Parameter(ParameterSetName='Checkin', Mandatory)]
    [Parameter(ParameterSetName='CheckinExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CheckinViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CheckinViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Checkin', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CheckinViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsTplberUsersUserIdDrivesDriveIdItemsDriveitemIdMicrosoftGraphCheckinPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CheckinExpanded')]
    [Parameter(ParameterSetName='CheckinViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CheckinExpanded')]
    [Parameter(ParameterSetName='CheckinViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${CheckInAs},

    [Parameter(ParameterSetName='CheckinExpanded')]
    [Parameter(ParameterSetName='CheckinViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Comment},

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
            Checkin = 'Microsoft.Graph.Users.Actions.private\Invoke-MgCheckinUserDriveItem_Checkin';
            CheckinExpanded = 'Microsoft.Graph.Users.Actions.private\Invoke-MgCheckinUserDriveItem_CheckinExpanded';
            CheckinViaIdentity = 'Microsoft.Graph.Users.Actions.private\Invoke-MgCheckinUserDriveItem_CheckinViaIdentity';
            CheckinViaIdentityExpanded = 'Microsoft.Graph.Users.Actions.private\Invoke-MgCheckinUserDriveItem_CheckinViaIdentityExpanded';
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
Invoke action checkin
.Description
Invoke action checkin

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths15OhbdrUsersUserIdDrivesDriveIdRootMicrosoftGraphCheckinPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgcheckinuserdriveroot
#>
function Invoke-MgCheckinUserDriveRoot {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='CheckinExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Checkin', Mandatory)]
    [Parameter(ParameterSetName='CheckinExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Checkin', Mandatory)]
    [Parameter(ParameterSetName='CheckinExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CheckinViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CheckinViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Checkin', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CheckinViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths15OhbdrUsersUserIdDrivesDriveIdRootMicrosoftGraphCheckinPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CheckinExpanded')]
    [Parameter(ParameterSetName='CheckinViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CheckinExpanded')]
    [Parameter(ParameterSetName='CheckinViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${CheckInAs},

    [Parameter(ParameterSetName='CheckinExpanded')]
    [Parameter(ParameterSetName='CheckinViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Comment},

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
            Checkin = 'Microsoft.Graph.Users.Actions.private\Invoke-MgCheckinUserDriveRoot_Checkin';
            CheckinExpanded = 'Microsoft.Graph.Users.Actions.private\Invoke-MgCheckinUserDriveRoot_CheckinExpanded';
            CheckinViaIdentity = 'Microsoft.Graph.Users.Actions.private\Invoke-MgCheckinUserDriveRoot_CheckinViaIdentity';
            CheckinViaIdentityExpanded = 'Microsoft.Graph.Users.Actions.private\Invoke-MgCheckinUserDriveRoot_CheckinViaIdentityExpanded';
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
Invoke action checkout
.Description
Invoke action checkout

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgcheckoutuserdriveitem
#>
function Invoke-MgCheckoutUserDriveItem {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Checkout', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Checkout', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Checkout', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of driveItem
    ${DriveItemId},

    [Parameter(ParameterSetName='Checkout', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CheckoutViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Checkout = 'Microsoft.Graph.Users.Actions.private\Invoke-MgCheckoutUserDriveItem_Checkout';
            CheckoutViaIdentity = 'Microsoft.Graph.Users.Actions.private\Invoke-MgCheckoutUserDriveItem_CheckoutViaIdentity';
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
Invoke action checkout
.Description
Invoke action checkout

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgcheckoutuserdriveroot
#>
function Invoke-MgCheckoutUserDriveRoot {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Checkout', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Checkout', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Checkout', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CheckoutViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Checkout = 'Microsoft.Graph.Users.Actions.private\Invoke-MgCheckoutUserDriveRoot_Checkout';
            CheckoutViaIdentity = 'Microsoft.Graph.Users.Actions.private\Invoke-MgCheckoutUserDriveRoot_CheckoutViaIdentity';
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
Clean Windows device
.Description
Clean Windows device

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1Nos4SfUsersUserIdManageddevicesManageddeviceIdMicrosoftGraphCleanwindowsdevicePostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgcleanusermanageddevicewindowdevice
#>
function Invoke-MgCleanUserManagedDeviceWindowDevice {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='CleanExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Clean1', Mandatory)]
    [Parameter(ParameterSetName='CleanExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='Clean1', Mandatory)]
    [Parameter(ParameterSetName='CleanExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CleanViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CleanViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Clean1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CleanViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Nos4SfUsersUserIdManageddevicesManageddeviceIdMicrosoftGraphCleanwindowsdevicePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CleanExpanded1')]
    [Parameter(ParameterSetName='CleanViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CleanExpanded1')]
    [Parameter(ParameterSetName='CleanViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${KeepUserData},

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
            Clean1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgCleanUserManagedDeviceWindowDevice_Clean1';
            CleanExpanded1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgCleanUserManagedDeviceWindowDevice_CleanExpanded1';
            CleanViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgCleanUserManagedDeviceWindowDevice_CleanViaIdentity1';
            CleanViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgCleanUserManagedDeviceWindowDevice_CleanViaIdentityExpanded1';
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
.Example
Import-Module Microsoft.Graph.Users.Actions
$params = @{
	StartDateTime = [System.DateTime]::Parse("2020-02-06T01:49:21.3524945+00:00")
	EndDateTime = [System.DateTime]::Parse("2020-02-06T02:19:21.3524945+00:00")
	Subject = "Create a meeting with customId provided"
	ExternalId = "7eb8263f-d0e0-4149-bb1c-1f0476083c56"
	Participants = @{
		Attendees = @(
			@{
				Identity = @{
					User = @{
						Id = "1f35f2e6-9cab-44ad-8d5a-b74c14720000"
					}
				}
				Upn = "test1@contoso.com"
			}
		)
	}
}
# A UPN can also be used as -UserId.
Invoke-MgCreateOrGetUserOnlineMeeting -UserId $userId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1H47062UsersUserIdOnlinemeetingsMicrosoftGraphCreateorgetPostRequestbodyContentApplicationJsonSchema1
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgcreateorgetuseronlinemeeting
#>
function Invoke-MgCreateOrGetUserOnlineMeeting {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnlineMeeting1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1H47062UsersUserIdOnlinemeetingsMicrosoftGraphCreateorgetPostRequestbodyContentApplicationJsonSchema1]
    # .
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphChatInfo]
    # chatInfo
    # To construct, please use Get-Help -Online and see NOTES section for CHATINFO properties and create a hash table.
    ${ChatInfo},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${EndDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ExternalId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMeetingParticipants1]
    # meetingParticipants
    # To construct, please use Get-Help -Online and see NOTES section for PARTICIPANTS properties and create a hash table.
    ${Participants},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${StartDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
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
            Create1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgCreateOrGetUserOnlineMeeting_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgCreateOrGetUserOnlineMeeting_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgCreateOrGetUserOnlineMeeting_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgCreateOrGetUserOnlineMeeting_CreateViaIdentityExpanded1';
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
Invoke action decline
.Description
Invoke action decline

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsYv35ByUsersUserIdEventsEventIdInstancesEventId1MicrosoftGraphDeclinePostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgdeclineusereventinstance
#>
function Invoke-MgDeclineUserEventInstance {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='DeclineExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Decline1', Mandatory)]
    [Parameter(ParameterSetName='DeclineExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of event
    ${EventId},

    [Parameter(ParameterSetName='Decline1', Mandatory)]
    [Parameter(ParameterSetName='DeclineExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of event
    ${EventId1},

    [Parameter(ParameterSetName='Decline1', Mandatory)]
    [Parameter(ParameterSetName='DeclineExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeclineViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='DeclineViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Decline1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='DeclineViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsYv35ByUsersUserIdEventsEventIdInstancesEventId1MicrosoftGraphDeclinePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='DeclineExpanded1')]
    [Parameter(ParameterSetName='DeclineViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='DeclineExpanded1')]
    [Parameter(ParameterSetName='DeclineViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Comment},

    [Parameter(ParameterSetName='DeclineExpanded1')]
    [Parameter(ParameterSetName='DeclineViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTimeSlot]
    # timeSlot
    # To construct, please use Get-Help -Online and see NOTES section for PROPOSEDNEWTIME properties and create a hash table.
    ${ProposedNewTime},

    [Parameter(ParameterSetName='DeclineExpanded1')]
    [Parameter(ParameterSetName='DeclineViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${SendResponse},

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
            Decline1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgDeclineUserEventInstance_Decline1';
            DeclineExpanded1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgDeclineUserEventInstance_DeclineExpanded1';
            DeclineViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgDeclineUserEventInstance_DeclineViaIdentity1';
            DeclineViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgDeclineUserEventInstance_DeclineViaIdentityExpanded1';
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
Invoke action decline
.Description
Invoke action decline
.Example
Import-Module Microsoft.Graph.Users.Actions
$params = @{
	Comment = "I won't be able to make this week. How about next week?"
	SendResponse = $true
	ProposedNewTime = @{
		Start = @{
			DateTime = "2019-12-02T18:00:00"
			TimeZone = "Pacific Standard Time"
		}
		End = @{
			DateTime = "2019-12-02T19:00:00"
			TimeZone = "Pacific Standard Time"
		}
	}
}
# A UPN can also be used as -UserId.
Invoke-MgDeclineUserEvent -UserId $userId -EventId $eventId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsT4Hh9DUsersUserIdEventsEventIdMicrosoftGraphDeclinePostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgdeclineuserevent
#>
function Invoke-MgDeclineUserEvent {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='DeclineExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Decline1', Mandatory)]
    [Parameter(ParameterSetName='DeclineExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of event
    ${EventId},

    [Parameter(ParameterSetName='Decline1', Mandatory)]
    [Parameter(ParameterSetName='DeclineExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeclineViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='DeclineViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Decline1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='DeclineViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsT4Hh9DUsersUserIdEventsEventIdMicrosoftGraphDeclinePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='DeclineExpanded1')]
    [Parameter(ParameterSetName='DeclineViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='DeclineExpanded1')]
    [Parameter(ParameterSetName='DeclineViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Comment},

    [Parameter(ParameterSetName='DeclineExpanded1')]
    [Parameter(ParameterSetName='DeclineViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTimeSlot]
    # timeSlot
    # To construct, please use Get-Help -Online and see NOTES section for PROPOSEDNEWTIME properties and create a hash table.
    ${ProposedNewTime},

    [Parameter(ParameterSetName='DeclineExpanded1')]
    [Parameter(ParameterSetName='DeclineViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${SendResponse},

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
            Decline1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgDeclineUserEvent_Decline1';
            DeclineExpanded1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgDeclineUserEvent_DeclineExpanded1';
            DeclineViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgDeclineUserEvent_DeclineViaIdentity1';
            DeclineViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgDeclineUserEvent_DeclineViaIdentityExpanded1';
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
Invoke action dismissReminder
.Description
Invoke action dismissReminder

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgdismissusereventinstancereminder
#>
function Invoke-MgDismissUserEventInstanceReminder {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Dismiss1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Dismiss1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of event
    ${EventId},

    [Parameter(ParameterSetName='Dismiss1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of event
    ${EventId1},

    [Parameter(ParameterSetName='Dismiss1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DismissViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Dismiss1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgDismissUserEventInstanceReminder_Dismiss1';
            DismissViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgDismissUserEventInstanceReminder_DismissViaIdentity1';
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
Invoke action dismissReminder
.Description
Invoke action dismissReminder
.Example
Import-Module Microsoft.Graph.Users.Actions
# A UPN can also be used as -UserId.
Invoke-MgDismissUserEventReminder -UserId $userId -EventId $eventId

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgdismissusereventreminder
#>
function Invoke-MgDismissUserEventReminder {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Dismiss1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Dismiss1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of event
    ${EventId},

    [Parameter(ParameterSetName='Dismiss1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DismissViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Dismiss1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgDismissUserEventReminder_Dismiss1';
            DismissViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgDismissUserEventReminder_DismissViaIdentity1';
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
Shut down device
.Description
Shut down device

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgdownusermanageddeviceshut
#>
function Invoke-MgDownUserManagedDeviceShut {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Down1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Down1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='Down1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DownViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Down1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgDownUserManagedDeviceShut_Down1';
            DownViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgDownUserManagedDeviceShut_DownViaIdentity1';
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
Invoke action follow
.Description
Invoke action follow

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDriveItem1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgfollowuserdriveitem
#>
function Invoke-MgFollowUserDriveItem {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDriveItem1])]
[CmdletBinding(DefaultParameterSetName='Follow', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Follow', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Follow', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of driveItem
    ${DriveItemId},

    [Parameter(ParameterSetName='Follow', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='FollowViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Follow = 'Microsoft.Graph.Users.Actions.private\Invoke-MgFollowUserDriveItem_Follow';
            FollowViaIdentity = 'Microsoft.Graph.Users.Actions.private\Invoke-MgFollowUserDriveItem_FollowViaIdentity';
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
Invoke action follow
.Description
Invoke action follow

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDriveItem1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgfollowuserdriveroot
#>
function Invoke-MgFollowUserDriveRoot {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDriveItem1])]
[CmdletBinding(DefaultParameterSetName='Follow', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Follow', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Follow', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='FollowViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Follow = 'Microsoft.Graph.Users.Actions.private\Invoke-MgFollowUserDriveRoot_Follow';
            FollowViaIdentity = 'Microsoft.Graph.Users.Actions.private\Invoke-MgFollowUserDriveRoot_FollowViaIdentity';
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
Invoke action forward
.Description
Invoke action forward

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1K9ImduUsersUserIdEventsEventIdInstancesEventId1MicrosoftGraphForwardPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgforwardusereventinstance
#>
function Invoke-MgForwardUserEventInstance {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='ForwardExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Forward1', Mandatory)]
    [Parameter(ParameterSetName='ForwardExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of event
    ${EventId},

    [Parameter(ParameterSetName='Forward1', Mandatory)]
    [Parameter(ParameterSetName='ForwardExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of event
    ${EventId1},

    [Parameter(ParameterSetName='Forward1', Mandatory)]
    [Parameter(ParameterSetName='ForwardExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ForwardViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ForwardViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Forward1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ForwardViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1K9ImduUsersUserIdEventsEventIdInstancesEventId1MicrosoftGraphForwardPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='ForwardExpanded1')]
    [Parameter(ParameterSetName='ForwardViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='ForwardExpanded1')]
    [Parameter(ParameterSetName='ForwardViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Comment},

    [Parameter(ParameterSetName='ForwardExpanded1')]
    [Parameter(ParameterSetName='ForwardViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for TORECIPIENTS properties and create a hash table.
    ${ToRecipients},

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
            Forward1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgForwardUserEventInstance_Forward1';
            ForwardExpanded1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgForwardUserEventInstance_ForwardExpanded1';
            ForwardViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgForwardUserEventInstance_ForwardViaIdentity1';
            ForwardViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgForwardUserEventInstance_ForwardViaIdentityExpanded1';
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
Invoke action forward
.Description
Invoke action forward
.Example
Import-Module Microsoft.Graph.Users.Actions
$params = @{
	ToRecipients = @(
		@{
			EmailAddress = @{
				Address = "danas@contoso.onmicrosoft.com"
				Name = "Dana Swope"
			}
		}
	)
	Comment = "Dana, hope you can make this meeting."
}
# A UPN can also be used as -UserId.
Invoke-MgForwardUserEvent -UserId $userId -EventId $eventId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsPg3HzyUsersUserIdEventsEventIdMicrosoftGraphForwardPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgforwarduserevent
#>
function Invoke-MgForwardUserEvent {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='ForwardExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Forward1', Mandatory)]
    [Parameter(ParameterSetName='ForwardExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of event
    ${EventId},

    [Parameter(ParameterSetName='Forward1', Mandatory)]
    [Parameter(ParameterSetName='ForwardExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ForwardViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ForwardViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Forward1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ForwardViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsPg3HzyUsersUserIdEventsEventIdMicrosoftGraphForwardPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='ForwardExpanded1')]
    [Parameter(ParameterSetName='ForwardViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='ForwardExpanded1')]
    [Parameter(ParameterSetName='ForwardViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Comment},

    [Parameter(ParameterSetName='ForwardExpanded1')]
    [Parameter(ParameterSetName='ForwardViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for TORECIPIENTS properties and create a hash table.
    ${ToRecipients},

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
            Forward1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgForwardUserEvent_Forward1';
            ForwardExpanded1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgForwardUserEvent_ForwardExpanded1';
            ForwardViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgForwardUserEvent_ForwardViaIdentity1';
            ForwardViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgForwardUserEvent_ForwardViaIdentityExpanded1';
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
Invoke action forward
.Description
Invoke action forward

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1Wmvjo1UsersUserIdMailfoldersMailfolderIdChildfoldersMailfolderId1MessagesMessageIdMicrosoftGraphForwardPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgforwardusermailfolderchildfoldermessage
#>
function Invoke-MgForwardUserMailFolderChildFolderMessage {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='ForwardExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Forward1', Mandatory)]
    [Parameter(ParameterSetName='ForwardExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Forward1', Mandatory)]
    [Parameter(ParameterSetName='ForwardExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId1},

    [Parameter(ParameterSetName='Forward1', Mandatory)]
    [Parameter(ParameterSetName='ForwardExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Forward1', Mandatory)]
    [Parameter(ParameterSetName='ForwardExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ForwardViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ForwardViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Forward1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ForwardViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Wmvjo1UsersUserIdMailfoldersMailfolderIdChildfoldersMailfolderId1MessagesMessageIdMicrosoftGraphForwardPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='ForwardExpanded1')]
    [Parameter(ParameterSetName='ForwardViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='ForwardExpanded1')]
    [Parameter(ParameterSetName='ForwardViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Comment},

    [Parameter(ParameterSetName='ForwardExpanded1')]
    [Parameter(ParameterSetName='ForwardViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1]
    # message
    # To construct, please use Get-Help -Online and see NOTES section for MESSAGE properties and create a hash table.
    ${Message},

    [Parameter(ParameterSetName='ForwardExpanded1')]
    [Parameter(ParameterSetName='ForwardViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for TORECIPIENTS properties and create a hash table.
    ${ToRecipients},

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
            Forward1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgForwardUserMailFolderChildFolderMessage_Forward1';
            ForwardExpanded1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgForwardUserMailFolderChildFolderMessage_ForwardExpanded1';
            ForwardViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgForwardUserMailFolderChildFolderMessage_ForwardViaIdentity1';
            ForwardViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgForwardUserMailFolderChildFolderMessage_ForwardViaIdentityExpanded1';
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
Invoke action forward
.Description
Invoke action forward

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1X7Dum0UsersUserIdMailfoldersMailfolderIdMessagesMessageIdMicrosoftGraphForwardPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgforwardusermailfoldermessage
#>
function Invoke-MgForwardUserMailFolderMessage {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='ForwardExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Forward1', Mandatory)]
    [Parameter(ParameterSetName='ForwardExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Forward1', Mandatory)]
    [Parameter(ParameterSetName='ForwardExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Forward1', Mandatory)]
    [Parameter(ParameterSetName='ForwardExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ForwardViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ForwardViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Forward1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ForwardViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1X7Dum0UsersUserIdMailfoldersMailfolderIdMessagesMessageIdMicrosoftGraphForwardPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='ForwardExpanded1')]
    [Parameter(ParameterSetName='ForwardViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='ForwardExpanded1')]
    [Parameter(ParameterSetName='ForwardViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Comment},

    [Parameter(ParameterSetName='ForwardExpanded1')]
    [Parameter(ParameterSetName='ForwardViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1]
    # message
    # To construct, please use Get-Help -Online and see NOTES section for MESSAGE properties and create a hash table.
    ${Message},

    [Parameter(ParameterSetName='ForwardExpanded1')]
    [Parameter(ParameterSetName='ForwardViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for TORECIPIENTS properties and create a hash table.
    ${ToRecipients},

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
            Forward1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgForwardUserMailFolderMessage_Forward1';
            ForwardExpanded1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgForwardUserMailFolderMessage_ForwardExpanded1';
            ForwardViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgForwardUserMailFolderMessage_ForwardViaIdentity1';
            ForwardViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgForwardUserMailFolderMessage_ForwardViaIdentityExpanded1';
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
Invoke action forward
.Description
Invoke action forward
.Example
Import-Module Microsoft.Graph.Users.Actions
$params = @{
	Comment = "comment-value"
	ToRecipients = @(
		@{
			EmailAddress = @{
				Name = "name-value"
				Address = "address-value"
			}
		}
	)
}
# A UPN can also be used as -UserId.
Invoke-MgForwardUserMessage -UserId $userId -MessageId $messageId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths3Ta6EnUsersUserIdMessagesMessageIdMicrosoftGraphForwardPostRequestbodyContentApplicationJsonSchema1
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgforwardusermessage
#>
function Invoke-MgForwardUserMessage {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='ForwardExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Forward1', Mandatory)]
    [Parameter(ParameterSetName='ForwardExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Forward1', Mandatory)]
    [Parameter(ParameterSetName='ForwardExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ForwardViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ForwardViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Forward1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ForwardViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths3Ta6EnUsersUserIdMessagesMessageIdMicrosoftGraphForwardPostRequestbodyContentApplicationJsonSchema1]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='ForwardExpanded1')]
    [Parameter(ParameterSetName='ForwardViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='ForwardExpanded1')]
    [Parameter(ParameterSetName='ForwardViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Comment},

    [Parameter(ParameterSetName='ForwardExpanded1')]
    [Parameter(ParameterSetName='ForwardViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1]
    # message
    # To construct, please use Get-Help -Online and see NOTES section for MESSAGE properties and create a hash table.
    ${Message},

    [Parameter(ParameterSetName='ForwardExpanded1')]
    [Parameter(ParameterSetName='ForwardViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for TORECIPIENTS properties and create a hash table.
    ${ToRecipients},

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
            Forward1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgForwardUserMessage_Forward1';
            ForwardExpanded1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgForwardUserMessage_ForwardExpanded1';
            ForwardViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgForwardUserMessage_ForwardViaIdentity1';
            ForwardViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgForwardUserMessage_ForwardViaIdentityExpanded1';
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

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1F3Q2E6UsersUserIdDrivesDriveIdItemsDriveitemIdMicrosoftGraphInvitePostRequestbodyContentApplicationJsonSchema1
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPermission1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mginviteuserdriveitem
#>
function Invoke-MgInviteUserDriveItem {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPermission1])]
[CmdletBinding(DefaultParameterSetName='InviteExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Invite', Mandatory)]
    [Parameter(ParameterSetName='InviteExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Invite', Mandatory)]
    [Parameter(ParameterSetName='InviteExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of driveItem
    ${DriveItemId},

    [Parameter(ParameterSetName='Invite', Mandatory)]
    [Parameter(ParameterSetName='InviteExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='InviteViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='InviteViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Invite', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='InviteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1F3Q2E6UsersUserIdDrivesDriveIdItemsDriveitemIdMicrosoftGraphInvitePostRequestbodyContentApplicationJsonSchema1]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='InviteExpanded')]
    [Parameter(ParameterSetName='InviteViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='InviteExpanded')]
    [Parameter(ParameterSetName='InviteViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ExpirationDateTime},

    [Parameter(ParameterSetName='InviteExpanded')]
    [Parameter(ParameterSetName='InviteViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Message},

    [Parameter(ParameterSetName='InviteExpanded')]
    [Parameter(ParameterSetName='InviteViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Password},

    [Parameter(ParameterSetName='InviteExpanded')]
    [Parameter(ParameterSetName='InviteViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDriveRecipient[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for RECIPIENTS properties and create a hash table.
    ${Recipients},

    [Parameter(ParameterSetName='InviteExpanded')]
    [Parameter(ParameterSetName='InviteViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${RequireSignIn},

    [Parameter(ParameterSetName='InviteExpanded')]
    [Parameter(ParameterSetName='InviteViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${RetainInheritedPermissions},

    [Parameter(ParameterSetName='InviteExpanded')]
    [Parameter(ParameterSetName='InviteViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Roles},

    [Parameter(ParameterSetName='InviteExpanded')]
    [Parameter(ParameterSetName='InviteViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${SendInvitation},

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
            Invite = 'Microsoft.Graph.Users.Actions.private\Invoke-MgInviteUserDriveItem_Invite';
            InviteExpanded = 'Microsoft.Graph.Users.Actions.private\Invoke-MgInviteUserDriveItem_InviteExpanded';
            InviteViaIdentity = 'Microsoft.Graph.Users.Actions.private\Invoke-MgInviteUserDriveItem_InviteViaIdentity';
            InviteViaIdentityExpanded = 'Microsoft.Graph.Users.Actions.private\Invoke-MgInviteUserDriveItem_InviteViaIdentityExpanded';
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

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsG30D32UsersUserIdDrivesDriveIdRootMicrosoftGraphInvitePostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPermission1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mginviteuserdriveroot
#>
function Invoke-MgInviteUserDriveRoot {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPermission1])]
[CmdletBinding(DefaultParameterSetName='InviteExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Invite', Mandatory)]
    [Parameter(ParameterSetName='InviteExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Invite', Mandatory)]
    [Parameter(ParameterSetName='InviteExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='InviteViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='InviteViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Invite', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='InviteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsG30D32UsersUserIdDrivesDriveIdRootMicrosoftGraphInvitePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='InviteExpanded')]
    [Parameter(ParameterSetName='InviteViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='InviteExpanded')]
    [Parameter(ParameterSetName='InviteViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ExpirationDateTime},

    [Parameter(ParameterSetName='InviteExpanded')]
    [Parameter(ParameterSetName='InviteViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Message},

    [Parameter(ParameterSetName='InviteExpanded')]
    [Parameter(ParameterSetName='InviteViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Password},

    [Parameter(ParameterSetName='InviteExpanded')]
    [Parameter(ParameterSetName='InviteViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDriveRecipient[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for RECIPIENTS properties and create a hash table.
    ${Recipients},

    [Parameter(ParameterSetName='InviteExpanded')]
    [Parameter(ParameterSetName='InviteViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${RequireSignIn},

    [Parameter(ParameterSetName='InviteExpanded')]
    [Parameter(ParameterSetName='InviteViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${RetainInheritedPermissions},

    [Parameter(ParameterSetName='InviteExpanded')]
    [Parameter(ParameterSetName='InviteViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${Roles},

    [Parameter(ParameterSetName='InviteExpanded')]
    [Parameter(ParameterSetName='InviteViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${SendInvitation},

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
            Invite = 'Microsoft.Graph.Users.Actions.private\Invoke-MgInviteUserDriveRoot_Invite';
            InviteExpanded = 'Microsoft.Graph.Users.Actions.private\Invoke-MgInviteUserDriveRoot_InviteExpanded';
            InviteViaIdentity = 'Microsoft.Graph.Users.Actions.private\Invoke-MgInviteUserDriveRoot_InviteViaIdentity';
            InviteViaIdentityExpanded = 'Microsoft.Graph.Users.Actions.private\Invoke-MgInviteUserDriveRoot_InviteViaIdentityExpanded';
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
Invoke action reprocessLicenseAssignment
.Description
Invoke action reprocessLicenseAssignment
.Example
Import-Module Microsoft.Graph.Users.Actions
Invoke-MgLicenseUser -UserId $userId

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUser1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mglicenseuser
#>
function Invoke-MgLicenseUser {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUser1])]
[CmdletBinding(DefaultParameterSetName='License1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='License1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='LicenseViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            License1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgLicenseUser_License1';
            LicenseViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgLicenseUser_LicenseViaIdentity1';
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
Logout shared Apple device active user
.Description
Logout shared Apple device active user

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mglogoutusermanageddevicesharedappledeviceactiveuser
#>
function Invoke-MgLogoutUserManagedDeviceSharedAppleDeviceActiveUser {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Logout1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Logout1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='Logout1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='LogoutViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Logout1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgLogoutUserManagedDeviceSharedAppleDeviceActiveUser_Logout1';
            LogoutViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgLogoutUserManagedDeviceSharedAppleDeviceActiveUser_LogoutViaIdentity1';
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
Invoke action preview
.Description
Invoke action preview

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsZ9C15KUsersUserIdDrivesDriveIdItemsDriveitemIdMicrosoftGraphPreviewPostRequestbodyContentApplicationJsonSchema1
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemPreviewInfo
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgpreviewuserdriveitem
#>
function Invoke-MgPreviewUserDriveItem {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemPreviewInfo])]
[CmdletBinding(DefaultParameterSetName='PreviewExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Preview', Mandatory)]
    [Parameter(ParameterSetName='PreviewExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Preview', Mandatory)]
    [Parameter(ParameterSetName='PreviewExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of driveItem
    ${DriveItemId},

    [Parameter(ParameterSetName='Preview', Mandatory)]
    [Parameter(ParameterSetName='PreviewExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='PreviewViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='PreviewViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Preview', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='PreviewViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsZ9C15KUsersUserIdDrivesDriveIdItemsDriveitemIdMicrosoftGraphPreviewPostRequestbodyContentApplicationJsonSchema1]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='PreviewExpanded')]
    [Parameter(ParameterSetName='PreviewViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='PreviewExpanded')]
    [Parameter(ParameterSetName='PreviewViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Page},

    [Parameter(ParameterSetName='PreviewExpanded')]
    [Parameter(ParameterSetName='PreviewViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Double]
    # .
    ${Zoom},

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
            Preview = 'Microsoft.Graph.Users.Actions.private\Invoke-MgPreviewUserDriveItem_Preview';
            PreviewExpanded = 'Microsoft.Graph.Users.Actions.private\Invoke-MgPreviewUserDriveItem_PreviewExpanded';
            PreviewViaIdentity = 'Microsoft.Graph.Users.Actions.private\Invoke-MgPreviewUserDriveItem_PreviewViaIdentity';
            PreviewViaIdentityExpanded = 'Microsoft.Graph.Users.Actions.private\Invoke-MgPreviewUserDriveItem_PreviewViaIdentityExpanded';
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
Invoke action preview
.Description
Invoke action preview

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1H3Ys40UsersUserIdDrivesDriveIdRootMicrosoftGraphPreviewPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemPreviewInfo
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgpreviewuserdriveroot
#>
function Invoke-MgPreviewUserDriveRoot {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemPreviewInfo])]
[CmdletBinding(DefaultParameterSetName='PreviewExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Preview1', Mandatory)]
    [Parameter(ParameterSetName='PreviewExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Preview1', Mandatory)]
    [Parameter(ParameterSetName='PreviewExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='PreviewViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='PreviewViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Preview1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='PreviewViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1H3Ys40UsersUserIdDrivesDriveIdRootMicrosoftGraphPreviewPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='PreviewExpanded1')]
    [Parameter(ParameterSetName='PreviewViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='PreviewExpanded1')]
    [Parameter(ParameterSetName='PreviewViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Page},

    [Parameter(ParameterSetName='PreviewExpanded1')]
    [Parameter(ParameterSetName='PreviewViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Double]
    # .
    ${Zoom},

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
            Preview1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgPreviewUserDriveRoot_Preview1';
            PreviewExpanded1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgPreviewUserDriveRoot_PreviewExpanded1';
            PreviewViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgPreviewUserDriveRoot_PreviewViaIdentity1';
            PreviewViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgPreviewUserDriveRoot_PreviewViaIdentityExpanded1';
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
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgreauthorizeuserdriveitemsubscription
#>
function Invoke-MgReauthorizeUserDriveItemSubscription {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Reauthorize', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Reauthorize', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Reauthorize', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of driveItem
    ${DriveItemId},

    [Parameter(ParameterSetName='Reauthorize', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of subscription
    ${SubscriptionId},

    [Parameter(ParameterSetName='Reauthorize', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ReauthorizeViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Reauthorize = 'Microsoft.Graph.Users.Actions.private\Invoke-MgReauthorizeUserDriveItemSubscription_Reauthorize';
            ReauthorizeViaIdentity = 'Microsoft.Graph.Users.Actions.private\Invoke-MgReauthorizeUserDriveItemSubscription_ReauthorizeViaIdentity';
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
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgreauthorizeuserdrivelistsubscription
#>
function Invoke-MgReauthorizeUserDriveListSubscription {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Reauthorize', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Reauthorize', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Reauthorize', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of subscription
    ${SubscriptionId},

    [Parameter(ParameterSetName='Reauthorize', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ReauthorizeViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Reauthorize = 'Microsoft.Graph.Users.Actions.private\Invoke-MgReauthorizeUserDriveListSubscription_Reauthorize';
            ReauthorizeViaIdentity = 'Microsoft.Graph.Users.Actions.private\Invoke-MgReauthorizeUserDriveListSubscription_ReauthorizeViaIdentity';
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
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgreauthorizeuserdriverootsubscription
#>
function Invoke-MgReauthorizeUserDriveRootSubscription {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Reauthorize1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Reauthorize1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Reauthorize1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of subscription
    ${SubscriptionId},

    [Parameter(ParameterSetName='Reauthorize1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ReauthorizeViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Reauthorize1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgReauthorizeUserDriveRootSubscription_Reauthorize1';
            ReauthorizeViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgReauthorizeUserDriveRootSubscription_ReauthorizeViaIdentity1';
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
Invoke action replyAll
.Description
Invoke action replyAll

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths18Ji3O2UsersUserIdMailfoldersMailfolderIdChildfoldersMailfolderId1MessagesMessageIdMicrosoftGraphReplyallPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgreplyallusermailfolderchildfoldermessage
#>
function Invoke-MgReplyAllUserMailFolderChildFolderMessage {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='ReplyExpanded3', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Reply3', Mandatory)]
    [Parameter(ParameterSetName='ReplyExpanded3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Reply3', Mandatory)]
    [Parameter(ParameterSetName='ReplyExpanded3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId1},

    [Parameter(ParameterSetName='Reply3', Mandatory)]
    [Parameter(ParameterSetName='ReplyExpanded3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Reply3', Mandatory)]
    [Parameter(ParameterSetName='ReplyExpanded3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ReplyViaIdentity3', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ReplyViaIdentityExpanded3', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Reply3', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ReplyViaIdentity3', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths18Ji3O2UsersUserIdMailfoldersMailfolderIdChildfoldersMailfolderId1MessagesMessageIdMicrosoftGraphReplyallPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='ReplyExpanded3')]
    [Parameter(ParameterSetName='ReplyViaIdentityExpanded3')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='ReplyExpanded3')]
    [Parameter(ParameterSetName='ReplyViaIdentityExpanded3')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Comment},

    [Parameter(ParameterSetName='ReplyExpanded3')]
    [Parameter(ParameterSetName='ReplyViaIdentityExpanded3')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1]
    # message
    # To construct, please use Get-Help -Online and see NOTES section for MESSAGE properties and create a hash table.
    ${Message},

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
            Reply3 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgReplyAllUserMailFolderChildFolderMessage_Reply3';
            ReplyExpanded3 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgReplyAllUserMailFolderChildFolderMessage_ReplyExpanded3';
            ReplyViaIdentity3 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgReplyAllUserMailFolderChildFolderMessage_ReplyViaIdentity3';
            ReplyViaIdentityExpanded3 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgReplyAllUserMailFolderChildFolderMessage_ReplyViaIdentityExpanded3';
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
Invoke action replyAll
.Description
Invoke action replyAll

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths16Mdb34UsersUserIdMailfoldersMailfolderIdMessagesMessageIdMicrosoftGraphReplyallPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgreplyallusermailfoldermessage
#>
function Invoke-MgReplyAllUserMailFolderMessage {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='ReplyExpanded3', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Reply3', Mandatory)]
    [Parameter(ParameterSetName='ReplyExpanded3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Reply3', Mandatory)]
    [Parameter(ParameterSetName='ReplyExpanded3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Reply3', Mandatory)]
    [Parameter(ParameterSetName='ReplyExpanded3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ReplyViaIdentity3', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ReplyViaIdentityExpanded3', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Reply3', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ReplyViaIdentity3', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths16Mdb34UsersUserIdMailfoldersMailfolderIdMessagesMessageIdMicrosoftGraphReplyallPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='ReplyExpanded3')]
    [Parameter(ParameterSetName='ReplyViaIdentityExpanded3')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='ReplyExpanded3')]
    [Parameter(ParameterSetName='ReplyViaIdentityExpanded3')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Comment},

    [Parameter(ParameterSetName='ReplyExpanded3')]
    [Parameter(ParameterSetName='ReplyViaIdentityExpanded3')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1]
    # message
    # To construct, please use Get-Help -Online and see NOTES section for MESSAGE properties and create a hash table.
    ${Message},

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
            Reply3 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgReplyAllUserMailFolderMessage_Reply3';
            ReplyExpanded3 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgReplyAllUserMailFolderMessage_ReplyExpanded3';
            ReplyViaIdentity3 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgReplyAllUserMailFolderMessage_ReplyViaIdentity3';
            ReplyViaIdentityExpanded3 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgReplyAllUserMailFolderMessage_ReplyViaIdentityExpanded3';
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
Invoke action replyAll
.Description
Invoke action replyAll
.Example
Import-Module Microsoft.Graph.Users.Actions
$params = @{
	Comment = "comment-value"
}
# A UPN can also be used as -UserId.
Invoke-MgReplyAllUserMessage -UserId $userId -MessageId $messageId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsKn6R94UsersUserIdMessagesMessageIdMicrosoftGraphReplyallPostRequestbodyContentApplicationJsonSchema1
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgreplyallusermessage
#>
function Invoke-MgReplyAllUserMessage {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='ReplyExpanded3', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Reply3', Mandatory)]
    [Parameter(ParameterSetName='ReplyExpanded3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Reply3', Mandatory)]
    [Parameter(ParameterSetName='ReplyExpanded3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ReplyViaIdentity3', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ReplyViaIdentityExpanded3', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Reply3', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ReplyViaIdentity3', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsKn6R94UsersUserIdMessagesMessageIdMicrosoftGraphReplyallPostRequestbodyContentApplicationJsonSchema1]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='ReplyExpanded3')]
    [Parameter(ParameterSetName='ReplyViaIdentityExpanded3')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='ReplyExpanded3')]
    [Parameter(ParameterSetName='ReplyViaIdentityExpanded3')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Comment},

    [Parameter(ParameterSetName='ReplyExpanded3')]
    [Parameter(ParameterSetName='ReplyViaIdentityExpanded3')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1]
    # message
    # To construct, please use Get-Help -Online and see NOTES section for MESSAGE properties and create a hash table.
    ${Message},

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
            Reply3 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgReplyAllUserMessage_Reply3';
            ReplyExpanded3 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgReplyAllUserMessage_ReplyExpanded3';
            ReplyViaIdentity3 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgReplyAllUserMessage_ReplyViaIdentity3';
            ReplyViaIdentityExpanded3 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgReplyAllUserMessage_ReplyViaIdentityExpanded3';
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
Invoke action reply
.Description
Invoke action reply

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsSp3FzmUsersUserIdMailfoldersMailfolderIdChildfoldersMailfolderId1MessagesMessageIdMicrosoftGraphReplyPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgreplyusermailfolderchildfoldermessage
#>
function Invoke-MgReplyUserMailFolderChildFolderMessage {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='ReplyExpanded2', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Reply2', Mandatory)]
    [Parameter(ParameterSetName='ReplyExpanded2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Reply2', Mandatory)]
    [Parameter(ParameterSetName='ReplyExpanded2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId1},

    [Parameter(ParameterSetName='Reply2', Mandatory)]
    [Parameter(ParameterSetName='ReplyExpanded2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Reply2', Mandatory)]
    [Parameter(ParameterSetName='ReplyExpanded2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ReplyViaIdentity2', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ReplyViaIdentityExpanded2', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Reply2', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ReplyViaIdentity2', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsSp3FzmUsersUserIdMailfoldersMailfolderIdChildfoldersMailfolderId1MessagesMessageIdMicrosoftGraphReplyPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='ReplyExpanded2')]
    [Parameter(ParameterSetName='ReplyViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='ReplyExpanded2')]
    [Parameter(ParameterSetName='ReplyViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Comment},

    [Parameter(ParameterSetName='ReplyExpanded2')]
    [Parameter(ParameterSetName='ReplyViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1]
    # message
    # To construct, please use Get-Help -Online and see NOTES section for MESSAGE properties and create a hash table.
    ${Message},

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
            Reply2 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgReplyUserMailFolderChildFolderMessage_Reply2';
            ReplyExpanded2 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgReplyUserMailFolderChildFolderMessage_ReplyExpanded2';
            ReplyViaIdentity2 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgReplyUserMailFolderChildFolderMessage_ReplyViaIdentity2';
            ReplyViaIdentityExpanded2 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgReplyUserMailFolderChildFolderMessage_ReplyViaIdentityExpanded2';
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
Invoke action reply
.Description
Invoke action reply

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths6Zjq1HUsersUserIdMailfoldersMailfolderIdMessagesMessageIdMicrosoftGraphReplyPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgreplyusermailfoldermessage
#>
function Invoke-MgReplyUserMailFolderMessage {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='ReplyExpanded2', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Reply2', Mandatory)]
    [Parameter(ParameterSetName='ReplyExpanded2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Reply2', Mandatory)]
    [Parameter(ParameterSetName='ReplyExpanded2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Reply2', Mandatory)]
    [Parameter(ParameterSetName='ReplyExpanded2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ReplyViaIdentity2', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ReplyViaIdentityExpanded2', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Reply2', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ReplyViaIdentity2', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths6Zjq1HUsersUserIdMailfoldersMailfolderIdMessagesMessageIdMicrosoftGraphReplyPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='ReplyExpanded2')]
    [Parameter(ParameterSetName='ReplyViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='ReplyExpanded2')]
    [Parameter(ParameterSetName='ReplyViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Comment},

    [Parameter(ParameterSetName='ReplyExpanded2')]
    [Parameter(ParameterSetName='ReplyViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1]
    # message
    # To construct, please use Get-Help -Online and see NOTES section for MESSAGE properties and create a hash table.
    ${Message},

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
            Reply2 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgReplyUserMailFolderMessage_Reply2';
            ReplyExpanded2 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgReplyUserMailFolderMessage_ReplyExpanded2';
            ReplyViaIdentity2 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgReplyUserMailFolderMessage_ReplyViaIdentity2';
            ReplyViaIdentityExpanded2 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgReplyUserMailFolderMessage_ReplyViaIdentityExpanded2';
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
Invoke action reply
.Description
Invoke action reply
.Example
Import-Module Microsoft.Graph.Users.Actions
$params = @{
	Message = @{
		ToRecipients = @(
			@{
				EmailAddress = @{
					Address = "samanthab@contoso.onmicrosoft.com"
					Name = "Samantha Booth"
				}
			}
			@{
				EmailAddress = @{
					Address = "randiw@contoso.onmicrosoft.com"
					Name = "Randi Welch"
				}
			}
		)
	}
	Comment = "Samantha, Randi, would you name the group please?"
}
# A UPN can also be used as -UserId.
Invoke-MgReplyUserMessage -UserId $userId -MessageId $messageId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1Inq4EUsersUserIdMessagesMessageIdMicrosoftGraphReplyPostRequestbodyContentApplicationJsonSchema1
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgreplyusermessage
#>
function Invoke-MgReplyUserMessage {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='ReplyExpanded2', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Reply2', Mandatory)]
    [Parameter(ParameterSetName='ReplyExpanded2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Reply2', Mandatory)]
    [Parameter(ParameterSetName='ReplyExpanded2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ReplyViaIdentity2', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ReplyViaIdentityExpanded2', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Reply2', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ReplyViaIdentity2', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Inq4EUsersUserIdMessagesMessageIdMicrosoftGraphReplyPostRequestbodyContentApplicationJsonSchema1]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='ReplyExpanded2')]
    [Parameter(ParameterSetName='ReplyViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='ReplyExpanded2')]
    [Parameter(ParameterSetName='ReplyViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Comment},

    [Parameter(ParameterSetName='ReplyExpanded2')]
    [Parameter(ParameterSetName='ReplyViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1]
    # message
    # To construct, please use Get-Help -Online and see NOTES section for MESSAGE properties and create a hash table.
    ${Message},

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
            Reply2 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgReplyUserMessage_Reply2';
            ReplyExpanded2 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgReplyUserMessage_ReplyExpanded2';
            ReplyViaIdentity2 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgReplyUserMessage_ReplyViaIdentity2';
            ReplyViaIdentityExpanded2 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgReplyUserMessage_ReplyViaIdentityExpanded2';
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
Retire a device
.Description
Retire a device

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgretireusermanageddevice
#>
function Invoke-MgRetireUserManagedDevice {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Retire1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Retire1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='Retire1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RetireViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Retire1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgRetireUserManagedDevice_Retire1';
            RetireViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgRetireUserManagedDevice_RetireViaIdentity1';
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
Invoke action windowsDefenderScan
.Description
Invoke action windowsDefenderScan

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1FegpkwUsersUserIdManageddevicesManageddeviceIdMicrosoftGraphWindowsdefenderscanPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgscanusermanageddevicewindowdefender
#>
function Invoke-MgScanUserManagedDeviceWindowDefender {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='ScanExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Scan1', Mandatory)]
    [Parameter(ParameterSetName='ScanExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='Scan1', Mandatory)]
    [Parameter(ParameterSetName='ScanExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ScanViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ScanViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Scan1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ScanViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1FegpkwUsersUserIdManageddevicesManageddeviceIdMicrosoftGraphWindowsdefenderscanPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='ScanExpanded1')]
    [Parameter(ParameterSetName='ScanViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='ScanExpanded1')]
    [Parameter(ParameterSetName='ScanViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${QuickScan},

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
            Scan1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgScanUserManagedDeviceWindowDefender_Scan1';
            ScanExpanded1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgScanUserManagedDeviceWindowDefender_ScanExpanded1';
            ScanViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgScanUserManagedDeviceWindowDefender_ScanViaIdentity1';
            ScanViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgScanUserManagedDeviceWindowDefender_ScanViaIdentityExpanded1';
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
Invoke action snoozeReminder
.Description
Invoke action snoozeReminder

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths42Qvm9UsersUserIdEventsEventIdInstancesEventId1MicrosoftGraphSnoozereminderPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgsnoozeusereventinstancereminder
#>
function Invoke-MgSnoozeUserEventInstanceReminder {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='SnoozeExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Snooze1', Mandatory)]
    [Parameter(ParameterSetName='SnoozeExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of event
    ${EventId},

    [Parameter(ParameterSetName='Snooze1', Mandatory)]
    [Parameter(ParameterSetName='SnoozeExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of event
    ${EventId1},

    [Parameter(ParameterSetName='Snooze1', Mandatory)]
    [Parameter(ParameterSetName='SnoozeExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='SnoozeViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SnoozeViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Snooze1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SnoozeViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths42Qvm9UsersUserIdEventsEventIdInstancesEventId1MicrosoftGraphSnoozereminderPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='SnoozeExpanded1')]
    [Parameter(ParameterSetName='SnoozeViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='SnoozeExpanded1')]
    [Parameter(ParameterSetName='SnoozeViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDateTimeZone]
    # dateTimeTimeZone
    # To construct, please use Get-Help -Online and see NOTES section for NEWREMINDERTIME properties and create a hash table.
    ${NewReminderTime},

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
            Snooze1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgSnoozeUserEventInstanceReminder_Snooze1';
            SnoozeExpanded1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgSnoozeUserEventInstanceReminder_SnoozeExpanded1';
            SnoozeViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgSnoozeUserEventInstanceReminder_SnoozeViaIdentity1';
            SnoozeViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgSnoozeUserEventInstanceReminder_SnoozeViaIdentityExpanded1';
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
Invoke action snoozeReminder
.Description
Invoke action snoozeReminder
.Example
Import-Module Microsoft.Graph.Users.Actions
$params = @{
	NewReminderTime = @{
		DateTime = "dateTime-value"
		TimeZone = "timeZone-value"
	}
}
# A UPN can also be used as -UserId.
Invoke-MgSnoozeUserEventReminder -UserId $userId -EventId $eventId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths10X81JrUsersUserIdEventsEventIdMicrosoftGraphSnoozereminderPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgsnoozeusereventreminder
#>
function Invoke-MgSnoozeUserEventReminder {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='SnoozeExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Snooze1', Mandatory)]
    [Parameter(ParameterSetName='SnoozeExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of event
    ${EventId},

    [Parameter(ParameterSetName='Snooze1', Mandatory)]
    [Parameter(ParameterSetName='SnoozeExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='SnoozeViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SnoozeViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Snooze1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SnoozeViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths10X81JrUsersUserIdEventsEventIdMicrosoftGraphSnoozereminderPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='SnoozeExpanded1')]
    [Parameter(ParameterSetName='SnoozeViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='SnoozeExpanded1')]
    [Parameter(ParameterSetName='SnoozeViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDateTimeZone]
    # dateTimeTimeZone
    # To construct, please use Get-Help -Online and see NOTES section for NEWREMINDERTIME properties and create a hash table.
    ${NewReminderTime},

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
            Snooze1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgSnoozeUserEventReminder_Snooze1';
            SnoozeExpanded1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgSnoozeUserEventReminder_SnoozeExpanded1';
            SnoozeViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgSnoozeUserEventReminder_SnoozeViaIdentity1';
            SnoozeViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgSnoozeUserEventReminder_SnoozeViaIdentityExpanded1';
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
Invoke action translateExchangeIds
.Description
Invoke action translateExchangeIds
.Example
Import-Module Microsoft.Graph.Users.Actions
$params = @{
	InputIds = @(
		"{rest-formatted-id-1}"
		"{rest-formatted-id-2}"
	)
	SourceIdType = "restId"
	TargetIdType = "restImmutableEntryId"
}
# A UPN can also be used as -UserId.
Invoke-MgTranslateUserExchangeId -UserId $userId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsHqegrcUsersUserIdMicrosoftGraphTranslateexchangeidsPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphConvertIdResult
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgtranslateuserexchangeid
#>
function Invoke-MgTranslateUserExchangeId {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphConvertIdResult])]
[CmdletBinding(DefaultParameterSetName='TranslateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Translate1', Mandatory)]
    [Parameter(ParameterSetName='TranslateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='TranslateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='TranslateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Translate1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='TranslateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsHqegrcUsersUserIdMicrosoftGraphTranslateexchangeidsPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='TranslateExpanded1')]
    [Parameter(ParameterSetName='TranslateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='TranslateExpanded1')]
    [Parameter(ParameterSetName='TranslateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${InputIds},

    [Parameter(ParameterSetName='TranslateExpanded1')]
    [Parameter(ParameterSetName='TranslateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # exchangeIdFormat
    ${SourceIdType},

    [Parameter(ParameterSetName='TranslateExpanded1')]
    [Parameter(ParameterSetName='TranslateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # exchangeIdFormat
    ${TargetIdType},

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
            Translate1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgTranslateUserExchangeId_Translate1';
            TranslateExpanded1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgTranslateUserExchangeId_TranslateExpanded1';
            TranslateViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgTranslateUserExchangeId_TranslateViaIdentity1';
            TranslateViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgTranslateUserExchangeId_TranslateViaIdentityExpanded1';
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
Invoke action unfollow
.Description
Invoke action unfollow

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgunfollowuserdriveitem
#>
function Invoke-MgUnfollowUserDriveItem {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Unfollow', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Unfollow', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Unfollow', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of driveItem
    ${DriveItemId},

    [Parameter(ParameterSetName='Unfollow', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='UnfollowViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Unfollow = 'Microsoft.Graph.Users.Actions.private\Invoke-MgUnfollowUserDriveItem_Unfollow';
            UnfollowViaIdentity = 'Microsoft.Graph.Users.Actions.private\Invoke-MgUnfollowUserDriveItem_UnfollowViaIdentity';
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
Invoke action unfollow
.Description
Invoke action unfollow

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/invoke-mgunfollowuserdriveroot
#>
function Invoke-MgUnfollowUserDriveRoot {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Unfollow1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Unfollow1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Unfollow1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='UnfollowViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Unfollow1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgUnfollowUserDriveRoot_Unfollow1';
            UnfollowViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Invoke-MgUnfollowUserDriveRoot_UnfollowViaIdentity1';
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
Invoke action associateWithHubSites
.Description
Invoke action associateWithHubSites

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths7Q2KgfUsersUserIdDrivesDriveIdListContenttypesContenttypeIdMicrosoftGraphAssociatewithhubsitesPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/join-mguserdrivelistcontenttypewithhubsite
#>
function Join-MgUserDriveListContentTypeWithHubSite {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='AssociateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Associate', Mandatory)]
    [Parameter(ParameterSetName='AssociateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of contentType
    ${ContentTypeId},

    [Parameter(ParameterSetName='Associate', Mandatory)]
    [Parameter(ParameterSetName='AssociateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Associate', Mandatory)]
    [Parameter(ParameterSetName='AssociateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='AssociateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='AssociateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Associate', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='AssociateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths7Q2KgfUsersUserIdDrivesDriveIdListContenttypesContenttypeIdMicrosoftGraphAssociatewithhubsitesPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='AssociateExpanded')]
    [Parameter(ParameterSetName='AssociateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='AssociateExpanded')]
    [Parameter(ParameterSetName='AssociateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${HubSiteUrls},

    [Parameter(ParameterSetName='AssociateExpanded')]
    [Parameter(ParameterSetName='AssociateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${PropagateToExistingLists},

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
            Associate = 'Microsoft.Graph.Users.Actions.private\Join-MgUserDriveListContentTypeWithHubSite_Associate';
            AssociateExpanded = 'Microsoft.Graph.Users.Actions.private\Join-MgUserDriveListContentTypeWithHubSite_AssociateExpanded';
            AssociateViaIdentity = 'Microsoft.Graph.Users.Actions.private\Join-MgUserDriveListContentTypeWithHubSite_AssociateViaIdentity';
            AssociateViaIdentityExpanded = 'Microsoft.Graph.Users.Actions.private\Join-MgUserDriveListContentTypeWithHubSite_AssociateViaIdentityExpanded';
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
Remote lock
.Description
Remote lock

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/lock-mgusermanageddeviceremote
#>
function Lock-MgUserManagedDeviceRemote {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Lock1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Lock1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='Lock1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='LockViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Lock1 = 'Microsoft.Graph.Users.Actions.private\Lock-MgUserManagedDeviceRemote_Lock1';
            LockViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Lock-MgUserManagedDeviceRemote_LockViaIdentity1';
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
Invoke action move
.Description
Invoke action move

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths15E6PbnUsersUserIdMailfoldersMailfolderIdChildfoldersMailfolderId1MessagesMessageIdMicrosoftGraphMovePostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/move-mgusermailfolderchildfoldermessage
#>
function Move-MgUserMailFolderChildFolderMessage {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1])]
[CmdletBinding(DefaultParameterSetName='MoveExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Move1', Mandatory)]
    [Parameter(ParameterSetName='MoveExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Move1', Mandatory)]
    [Parameter(ParameterSetName='MoveExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId1},

    [Parameter(ParameterSetName='Move1', Mandatory)]
    [Parameter(ParameterSetName='MoveExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Move1', Mandatory)]
    [Parameter(ParameterSetName='MoveExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='MoveViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='MoveViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Move1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='MoveViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths15E6PbnUsersUserIdMailfoldersMailfolderIdChildfoldersMailfolderId1MessagesMessageIdMicrosoftGraphMovePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='MoveExpanded1')]
    [Parameter(ParameterSetName='MoveViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='MoveExpanded1')]
    [Parameter(ParameterSetName='MoveViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${DestinationId},

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
            Move1 = 'Microsoft.Graph.Users.Actions.private\Move-MgUserMailFolderChildFolderMessage_Move1';
            MoveExpanded1 = 'Microsoft.Graph.Users.Actions.private\Move-MgUserMailFolderChildFolderMessage_MoveExpanded1';
            MoveViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Move-MgUserMailFolderChildFolderMessage_MoveViaIdentity1';
            MoveViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Move-MgUserMailFolderChildFolderMessage_MoveViaIdentityExpanded1';
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
Invoke action move
.Description
Invoke action move

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1Ekxa5VUsersUserIdMailfoldersMailfolderIdChildfoldersMailfolderId1MicrosoftGraphMovePostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/move-mgusermailfolderchildfolder
#>
function Move-MgUserMailFolderChildFolder {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder1])]
[CmdletBinding(DefaultParameterSetName='MoveExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Move1', Mandatory)]
    [Parameter(ParameterSetName='MoveExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Move1', Mandatory)]
    [Parameter(ParameterSetName='MoveExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId1},

    [Parameter(ParameterSetName='Move1', Mandatory)]
    [Parameter(ParameterSetName='MoveExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='MoveViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='MoveViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Move1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='MoveViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Ekxa5VUsersUserIdMailfoldersMailfolderIdChildfoldersMailfolderId1MicrosoftGraphMovePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='MoveExpanded1')]
    [Parameter(ParameterSetName='MoveViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='MoveExpanded1')]
    [Parameter(ParameterSetName='MoveViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${DestinationId},

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
            Move1 = 'Microsoft.Graph.Users.Actions.private\Move-MgUserMailFolderChildFolder_Move1';
            MoveExpanded1 = 'Microsoft.Graph.Users.Actions.private\Move-MgUserMailFolderChildFolder_MoveExpanded1';
            MoveViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Move-MgUserMailFolderChildFolder_MoveViaIdentity1';
            MoveViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Move-MgUserMailFolderChildFolder_MoveViaIdentityExpanded1';
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
Invoke action move
.Description
Invoke action move

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1Ph8596UsersUserIdMailfoldersMailfolderIdMessagesMessageIdMicrosoftGraphMovePostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/move-mgusermailfoldermessage
#>
function Move-MgUserMailFolderMessage {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1])]
[CmdletBinding(DefaultParameterSetName='MoveExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Move1', Mandatory)]
    [Parameter(ParameterSetName='MoveExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Move1', Mandatory)]
    [Parameter(ParameterSetName='MoveExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Move1', Mandatory)]
    [Parameter(ParameterSetName='MoveExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='MoveViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='MoveViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Move1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='MoveViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Ph8596UsersUserIdMailfoldersMailfolderIdMessagesMessageIdMicrosoftGraphMovePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='MoveExpanded1')]
    [Parameter(ParameterSetName='MoveViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='MoveExpanded1')]
    [Parameter(ParameterSetName='MoveViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${DestinationId},

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
            Move1 = 'Microsoft.Graph.Users.Actions.private\Move-MgUserMailFolderMessage_Move1';
            MoveExpanded1 = 'Microsoft.Graph.Users.Actions.private\Move-MgUserMailFolderMessage_MoveExpanded1';
            MoveViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Move-MgUserMailFolderMessage_MoveViaIdentity1';
            MoveViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Move-MgUserMailFolderMessage_MoveViaIdentityExpanded1';
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
Invoke action move
.Description
Invoke action move
.Example
Import-Module Microsoft.Graph.Users.Actions
$params = @{
	DestinationId = "destinationId-value"
}
# A UPN can also be used as -UserId.
Move-MgUserMailFolder -UserId $userId -MailFolderId $mailFolderId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1Adv2SrUsersUserIdMailfoldersMailfolderIdMicrosoftGraphMovePostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/move-mgusermailfolder
#>
function Move-MgUserMailFolder {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder1])]
[CmdletBinding(DefaultParameterSetName='MoveExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Move1', Mandatory)]
    [Parameter(ParameterSetName='MoveExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Move1', Mandatory)]
    [Parameter(ParameterSetName='MoveExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='MoveViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='MoveViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Move1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='MoveViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Adv2SrUsersUserIdMailfoldersMailfolderIdMicrosoftGraphMovePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='MoveExpanded1')]
    [Parameter(ParameterSetName='MoveViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='MoveExpanded1')]
    [Parameter(ParameterSetName='MoveViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${DestinationId},

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
            Move1 = 'Microsoft.Graph.Users.Actions.private\Move-MgUserMailFolder_Move1';
            MoveExpanded1 = 'Microsoft.Graph.Users.Actions.private\Move-MgUserMailFolder_MoveExpanded1';
            MoveViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Move-MgUserMailFolder_MoveViaIdentity1';
            MoveViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Move-MgUserMailFolder_MoveViaIdentityExpanded1';
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
Invoke action move
.Description
Invoke action move
.Example
Import-Module Microsoft.Graph.Users.Actions
$params = @{
	DestinationId = "deleteditems"
}
# A UPN can also be used as -UserId.
Move-MgUserMessage -UserId $userId -MessageId $messageId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths46T88QUsersUserIdMessagesMessageIdMicrosoftGraphMovePostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/move-mgusermessage
#>
function Move-MgUserMessage {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1])]
[CmdletBinding(DefaultParameterSetName='MoveExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Move1', Mandatory)]
    [Parameter(ParameterSetName='MoveExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Move1', Mandatory)]
    [Parameter(ParameterSetName='MoveExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='MoveViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='MoveViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Move1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='MoveViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths46T88QUsersUserIdMessagesMessageIdMicrosoftGraphMovePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='MoveExpanded1')]
    [Parameter(ParameterSetName='MoveViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='MoveExpanded1')]
    [Parameter(ParameterSetName='MoveViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${DestinationId},

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
            Move1 = 'Microsoft.Graph.Users.Actions.private\Move-MgUserMessage_Move1';
            MoveExpanded1 = 'Microsoft.Graph.Users.Actions.private\Move-MgUserMessage_MoveExpanded1';
            MoveViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Move-MgUserMessage_MoveViaIdentity1';
            MoveViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Move-MgUserMessage_MoveViaIdentityExpanded1';
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
Invoke action createLink
.Description
Invoke action createLink

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsQt4Ae8UsersUserIdDrivesDriveIdItemsDriveitemIdMicrosoftGraphCreatelinkPostRequestbodyContentApplicationJsonSchema1
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPermission1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/new-mguserdriveitemlink
#>
function New-MgUserDriveItemLink {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPermission1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of driveItem
    ${DriveItemId},

    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsQt4Ae8UsersUserIdDrivesDriveIdItemsDriveitemIdMicrosoftGraphCreatelinkPostRequestbodyContentApplicationJsonSchema1]
    # .
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
    [System.DateTime]
    # .
    ${ExpirationDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Message},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Password},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${RetainInheritedPermissions},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Scope},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Type},

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
            Create = 'Microsoft.Graph.Users.Actions.private\New-MgUserDriveItemLink_Create';
            CreateExpanded = 'Microsoft.Graph.Users.Actions.private\New-MgUserDriveItemLink_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Users.Actions.private\New-MgUserDriveItemLink_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Users.Actions.private\New-MgUserDriveItemLink_CreateViaIdentityExpanded';
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
Invoke action createUploadSession
.Description
Invoke action createUploadSession

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths10ZzsxfUsersUserIdDrivesDriveIdItemsDriveitemIdMicrosoftGraphCreateuploadsessionPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUploadSession
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/new-mguserdriveitemuploadsession
#>
function New-MgUserDriveItemUploadSession {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUploadSession])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of driveItem
    ${DriveItemId},

    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths10ZzsxfUsersUserIdDrivesDriveIdItemsDriveitemIdMicrosoftGraphCreateuploadsessionPostRequestbodyContentApplicationJsonSchema]
    # .
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDriveItemUploadableProperties]
    # driveItemUploadableProperties
    # To construct, please use Get-Help -Online and see NOTES section for ITEM properties and create a hash table.
    ${Item},

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
            Create = 'Microsoft.Graph.Users.Actions.private\New-MgUserDriveItemUploadSession_Create';
            CreateExpanded = 'Microsoft.Graph.Users.Actions.private\New-MgUserDriveItemUploadSession_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Users.Actions.private\New-MgUserDriveItemUploadSession_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Users.Actions.private\New-MgUserDriveItemUploadSession_CreateViaIdentityExpanded';
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
Invoke action createLink
.Description
Invoke action createLink

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsI8Q6BgUsersUserIdDrivesDriveIdRootMicrosoftGraphCreatelinkPostRequestbodyContentApplicationJsonSchema1
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPermission1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/new-mguserdriverootlink
#>
function New-MgUserDriveRootLink {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphPermission1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsI8Q6BgUsersUserIdDrivesDriveIdRootMicrosoftGraphCreatelinkPostRequestbodyContentApplicationJsonSchema1]
    # .
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
    [System.DateTime]
    # .
    ${ExpirationDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Message},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Password},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${RetainInheritedPermissions},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Scope},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Type},

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
            Create = 'Microsoft.Graph.Users.Actions.private\New-MgUserDriveRootLink_Create';
            CreateExpanded = 'Microsoft.Graph.Users.Actions.private\New-MgUserDriveRootLink_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Users.Actions.private\New-MgUserDriveRootLink_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Users.Actions.private\New-MgUserDriveRootLink_CreateViaIdentityExpanded';
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
Invoke action createUploadSession
.Description
Invoke action createUploadSession

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsYe7D9IUsersUserIdDrivesDriveIdRootMicrosoftGraphCreateuploadsessionPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUploadSession
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/new-mguserdriverootuploadsession
#>
function New-MgUserDriveRootUploadSession {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUploadSession])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsYe7D9IUsersUserIdDrivesDriveIdRootMicrosoftGraphCreateuploadsessionPostRequestbodyContentApplicationJsonSchema]
    # .
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDriveItemUploadableProperties]
    # driveItemUploadableProperties
    # To construct, please use Get-Help -Online and see NOTES section for ITEM properties and create a hash table.
    ${Item},

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
            Create = 'Microsoft.Graph.Users.Actions.private\New-MgUserDriveRootUploadSession_Create';
            CreateExpanded = 'Microsoft.Graph.Users.Actions.private\New-MgUserDriveRootUploadSession_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Users.Actions.private\New-MgUserDriveRootUploadSession_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Users.Actions.private\New-MgUserDriveRootUploadSession_CreateViaIdentityExpanded';
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
Invoke action createUploadSession
.Description
Invoke action createUploadSession

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1Ly1W91UsersUserIdEventsEventIdAttachmentsMicrosoftGraphCreateuploadsessionPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUploadSession
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/new-mgusereventattachmentuploadsession
#>
function New-MgUserEventAttachmentUploadSession {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUploadSession])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of event
    ${EventId},

    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Ly1W91UsersUserIdEventsEventIdAttachmentsMicrosoftGraphCreateuploadsessionPostRequestbodyContentApplicationJsonSchema]
    # .
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttachmentItem]
    # attachmentItem
    # To construct, please use Get-Help -Online and see NOTES section for ATTACHMENTITEM properties and create a hash table.
    ${AttachmentItem},

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
            Create1 = 'Microsoft.Graph.Users.Actions.private\New-MgUserEventAttachmentUploadSession_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Users.Actions.private\New-MgUserEventAttachmentUploadSession_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\New-MgUserEventAttachmentUploadSession_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\New-MgUserEventAttachmentUploadSession_CreateViaIdentityExpanded1';
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
Invoke action createUploadSession
.Description
Invoke action createUploadSession

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsVnrtl3UsersUserIdEventsEventIdInstancesEventId1AttachmentsMicrosoftGraphCreateuploadsessionPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUploadSession
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/new-mgusereventinstanceattachmentuploadsession
#>
function New-MgUserEventInstanceAttachmentUploadSession {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUploadSession])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of event
    ${EventId},

    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of event
    ${EventId1},

    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsVnrtl3UsersUserIdEventsEventIdInstancesEventId1AttachmentsMicrosoftGraphCreateuploadsessionPostRequestbodyContentApplicationJsonSchema]
    # .
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttachmentItem]
    # attachmentItem
    # To construct, please use Get-Help -Online and see NOTES section for ATTACHMENTITEM properties and create a hash table.
    ${AttachmentItem},

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
            Create1 = 'Microsoft.Graph.Users.Actions.private\New-MgUserEventInstanceAttachmentUploadSession_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Users.Actions.private\New-MgUserEventInstanceAttachmentUploadSession_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\New-MgUserEventInstanceAttachmentUploadSession_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\New-MgUserEventInstanceAttachmentUploadSession_CreateViaIdentityExpanded1';
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
Invoke action createUploadSession
.Description
Invoke action createUploadSession

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1Ivc0BUsersUserIdMailfoldersMailfolderIdChildfoldersMailfolderId1MessagesMessageIdAttachmentsMicrosoftGraphCreateuploadsessionPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUploadSession
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/new-mgusermailfolderchildfoldermessageattachmentuploadsession
#>
function New-MgUserMailFolderChildFolderMessageAttachmentUploadSession {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUploadSession])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId1},

    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Ivc0BUsersUserIdMailfoldersMailfolderIdChildfoldersMailfolderId1MessagesMessageIdAttachmentsMicrosoftGraphCreateuploadsessionPostRequestbodyContentApplicationJsonSchema]
    # .
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttachmentItem]
    # attachmentItem
    # To construct, please use Get-Help -Online and see NOTES section for ATTACHMENTITEM properties and create a hash table.
    ${AttachmentItem},

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
            Create1 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMailFolderChildFolderMessageAttachmentUploadSession_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMailFolderChildFolderMessageAttachmentUploadSession_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMailFolderChildFolderMessageAttachmentUploadSession_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMailFolderChildFolderMessageAttachmentUploadSession_CreateViaIdentityExpanded1';
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
Invoke action createForward
.Description
Invoke action createForward

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1W6K9JhUsersUserIdMailfoldersMailfolderIdChildfoldersMailfolderId1MessagesMessageIdMicrosoftGraphCreateforwardPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/new-mgusermailfolderchildfoldermessageforward
#>
function New-MgUserMailFolderChildFolderMessageForward {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId1},

    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1W6K9JhUsersUserIdMailfoldersMailfolderIdChildfoldersMailfolderId1MessagesMessageIdMicrosoftGraphCreateforwardPostRequestbodyContentApplicationJsonSchema]
    # .
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
    ${Comment},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1]
    # message
    # To construct, please use Get-Help -Online and see NOTES section for MESSAGE properties and create a hash table.
    ${Message},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for TORECIPIENTS properties and create a hash table.
    ${ToRecipients},

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
            Create1 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMailFolderChildFolderMessageForward_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMailFolderChildFolderMessageForward_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMailFolderChildFolderMessageForward_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMailFolderChildFolderMessageForward_CreateViaIdentityExpanded1';
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
Invoke action createReplyAll
.Description
Invoke action createReplyAll

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsKne03XUsersUserIdMailfoldersMailfolderIdChildfoldersMailfolderId1MessagesMessageIdMicrosoftGraphCreatereplyallPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/new-mgusermailfolderchildfoldermessagereplyall
#>
function New-MgUserMailFolderChildFolderMessageReplyAll {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded3', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create3', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Create3', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId1},

    [Parameter(ParameterSetName='Create3', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Create3', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity3', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded3', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create3', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity3', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsKne03XUsersUserIdMailfoldersMailfolderIdChildfoldersMailfolderId1MessagesMessageIdMicrosoftGraphCreatereplyallPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded3')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded3')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded3')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded3')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Comment},

    [Parameter(ParameterSetName='CreateExpanded3')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded3')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1]
    # message
    # To construct, please use Get-Help -Online and see NOTES section for MESSAGE properties and create a hash table.
    ${Message},

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
            Create3 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMailFolderChildFolderMessageReplyAll_Create3';
            CreateExpanded3 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMailFolderChildFolderMessageReplyAll_CreateExpanded3';
            CreateViaIdentity3 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMailFolderChildFolderMessageReplyAll_CreateViaIdentity3';
            CreateViaIdentityExpanded3 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMailFolderChildFolderMessageReplyAll_CreateViaIdentityExpanded3';
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
Invoke action createReply
.Description
Invoke action createReply

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths4QoeppUsersUserIdMailfoldersMailfolderIdChildfoldersMailfolderId1MessagesMessageIdMicrosoftGraphCreatereplyPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/new-mgusermailfolderchildfoldermessagereply
#>
function New-MgUserMailFolderChildFolderMessageReply {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded2', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create2', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Create2', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId1},

    [Parameter(ParameterSetName='Create2', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Create2', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity2', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded2', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create2', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity2', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths4QoeppUsersUserIdMailfoldersMailfolderIdChildfoldersMailfolderId1MessagesMessageIdMicrosoftGraphCreatereplyPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Comment},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1]
    # message
    # To construct, please use Get-Help -Online and see NOTES section for MESSAGE properties and create a hash table.
    ${Message},

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
            Create2 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMailFolderChildFolderMessageReply_Create2';
            CreateExpanded2 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMailFolderChildFolderMessageReply_CreateExpanded2';
            CreateViaIdentity2 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMailFolderChildFolderMessageReply_CreateViaIdentity2';
            CreateViaIdentityExpanded2 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMailFolderChildFolderMessageReply_CreateViaIdentityExpanded2';
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
Invoke action createUploadSession
.Description
Invoke action createUploadSession

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1C7XgoqUsersUserIdMailfoldersMailfolderIdMessagesMessageIdAttachmentsMicrosoftGraphCreateuploadsessionPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUploadSession
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/new-mgusermailfoldermessageattachmentuploadsession
#>
function New-MgUserMailFolderMessageAttachmentUploadSession {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUploadSession])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1C7XgoqUsersUserIdMailfoldersMailfolderIdMessagesMessageIdAttachmentsMicrosoftGraphCreateuploadsessionPostRequestbodyContentApplicationJsonSchema]
    # .
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttachmentItem]
    # attachmentItem
    # To construct, please use Get-Help -Online and see NOTES section for ATTACHMENTITEM properties and create a hash table.
    ${AttachmentItem},

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
            Create1 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMailFolderMessageAttachmentUploadSession_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMailFolderMessageAttachmentUploadSession_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMailFolderMessageAttachmentUploadSession_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMailFolderMessageAttachmentUploadSession_CreateViaIdentityExpanded1';
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
Invoke action createForward
.Description
Invoke action createForward

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths29L6IuUsersUserIdMailfoldersMailfolderIdMessagesMessageIdMicrosoftGraphCreateforwardPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/new-mgusermailfoldermessageforward
#>
function New-MgUserMailFolderMessageForward {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths29L6IuUsersUserIdMailfoldersMailfolderIdMessagesMessageIdMicrosoftGraphCreateforwardPostRequestbodyContentApplicationJsonSchema]
    # .
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
    ${Comment},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1]
    # message
    # To construct, please use Get-Help -Online and see NOTES section for MESSAGE properties and create a hash table.
    ${Message},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for TORECIPIENTS properties and create a hash table.
    ${ToRecipients},

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
            Create1 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMailFolderMessageForward_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMailFolderMessageForward_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMailFolderMessageForward_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMailFolderMessageForward_CreateViaIdentityExpanded1';
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
Invoke action createReplyAll
.Description
Invoke action createReplyAll

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths3M6QbmUsersUserIdMailfoldersMailfolderIdMessagesMessageIdMicrosoftGraphCreatereplyallPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/new-mgusermailfoldermessagereplyall
#>
function New-MgUserMailFolderMessageReplyAll {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded3', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create3', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Create3', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Create3', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity3', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded3', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create3', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity3', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths3M6QbmUsersUserIdMailfoldersMailfolderIdMessagesMessageIdMicrosoftGraphCreatereplyallPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded3')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded3')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded3')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded3')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Comment},

    [Parameter(ParameterSetName='CreateExpanded3')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded3')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1]
    # message
    # To construct, please use Get-Help -Online and see NOTES section for MESSAGE properties and create a hash table.
    ${Message},

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
            Create3 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMailFolderMessageReplyAll_Create3';
            CreateExpanded3 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMailFolderMessageReplyAll_CreateExpanded3';
            CreateViaIdentity3 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMailFolderMessageReplyAll_CreateViaIdentity3';
            CreateViaIdentityExpanded3 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMailFolderMessageReplyAll_CreateViaIdentityExpanded3';
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
Invoke action createReply
.Description
Invoke action createReply

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsGpd5XxUsersUserIdMailfoldersMailfolderIdMessagesMessageIdMicrosoftGraphCreatereplyPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/new-mgusermailfoldermessagereply
#>
function New-MgUserMailFolderMessageReply {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded2', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create2', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Create2', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Create2', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity2', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded2', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create2', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity2', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsGpd5XxUsersUserIdMailfoldersMailfolderIdMessagesMessageIdMicrosoftGraphCreatereplyPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Comment},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1]
    # message
    # To construct, please use Get-Help -Online and see NOTES section for MESSAGE properties and create a hash table.
    ${Message},

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
            Create2 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMailFolderMessageReply_Create2';
            CreateExpanded2 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMailFolderMessageReply_CreateExpanded2';
            CreateViaIdentity2 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMailFolderMessageReply_CreateViaIdentity2';
            CreateViaIdentityExpanded2 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMailFolderMessageReply_CreateViaIdentityExpanded2';
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
Invoke action windowsDefenderUpdateSignatures
.Description
Invoke action windowsDefenderUpdateSignatures

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/new-mgusermanageddevicewindowsdefenderupdatesignature
#>
function New-MgUserManagedDeviceWindowsDefenderUpdateSignature {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Update1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Update1 = 'Microsoft.Graph.Users.Actions.private\New-MgUserManagedDeviceWindowsDefenderUpdateSignature_Update1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\New-MgUserManagedDeviceWindowsDefenderUpdateSignature_UpdateViaIdentity1';
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
Invoke action createUploadSession
.Description
Invoke action createUploadSession
.Example
Import-Module Microsoft.Graph.Users.Actions
$params = @{
	AttachmentItem = @{
		AttachmentType = "file"
		Name = "scenary"
		Size = 7208534
		IsInline = $true
		ContentId = "my_inline_picture"
	}
}
# A UPN can also be used as -UserId.
New-MgUserMessageAttachmentUploadSession -UserId $userId -MessageId $messageId -BodyParameter $params
.Example
Import-Module Microsoft.Graph.Users.Actions
$params = @{
	AttachmentItem = @{
		AttachmentType = "file"
		Name = "flower"
		Size = 3483322
	}
}
# A UPN can also be used as -UserId.
New-MgUserMessageAttachmentUploadSession -UserId $userId -MessageId $messageId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1C56La0UsersUserIdMessagesMessageIdAttachmentsMicrosoftGraphCreateuploadsessionPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUploadSession
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/new-mgusermessageattachmentuploadsession
#>
function New-MgUserMessageAttachmentUploadSession {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUploadSession])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1C56La0UsersUserIdMessagesMessageIdAttachmentsMicrosoftGraphCreateuploadsessionPostRequestbodyContentApplicationJsonSchema]
    # .
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttachmentItem]
    # attachmentItem
    # To construct, please use Get-Help -Online and see NOTES section for ATTACHMENTITEM properties and create a hash table.
    ${AttachmentItem},

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
            Create1 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMessageAttachmentUploadSession_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMessageAttachmentUploadSession_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMessageAttachmentUploadSession_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMessageAttachmentUploadSession_CreateViaIdentityExpanded1';
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
Invoke action createForward
.Description
Invoke action createForward
.Example
Import-Module Microsoft.Graph.Users.Actions
# A UPN can also be used as -UserId.
New-MgUserMessageForward -UserId $userId -MessageId $messageId

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths16W4HmtUsersUserIdMessagesMessageIdMicrosoftGraphCreateforwardPostRequestbodyContentApplicationJsonSchema1
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/new-mgusermessageforward
#>
function New-MgUserMessageForward {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths16W4HmtUsersUserIdMessagesMessageIdMicrosoftGraphCreateforwardPostRequestbodyContentApplicationJsonSchema1]
    # .
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
    ${Comment},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1]
    # message
    # To construct, please use Get-Help -Online and see NOTES section for MESSAGE properties and create a hash table.
    ${Message},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecipient[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for TORECIPIENTS properties and create a hash table.
    ${ToRecipients},

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
            Create1 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMessageForward_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMessageForward_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMessageForward_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMessageForward_CreateViaIdentityExpanded1';
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
Invoke action createReplyAll
.Description
Invoke action createReplyAll
.Example
Import-Module Microsoft.Graph.Users.Actions
# A UPN can also be used as -UserId.
New-MgUserMessageReplyAll -UserId $userId -MessageId $messageId

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths140I0IcUsersUserIdMessagesMessageIdMicrosoftGraphCreatereplyallPostRequestbodyContentApplicationJsonSchema1
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/new-mgusermessagereplyall
#>
function New-MgUserMessageReplyAll {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded3', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create3', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Create3', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity3', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded3', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create3', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity3', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths140I0IcUsersUserIdMessagesMessageIdMicrosoftGraphCreatereplyallPostRequestbodyContentApplicationJsonSchema1]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded3')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded3')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded3')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded3')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Comment},

    [Parameter(ParameterSetName='CreateExpanded3')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded3')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1]
    # message
    # To construct, please use Get-Help -Online and see NOTES section for MESSAGE properties and create a hash table.
    ${Message},

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
            Create3 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMessageReplyAll_Create3';
            CreateExpanded3 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMessageReplyAll_CreateExpanded3';
            CreateViaIdentity3 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMessageReplyAll_CreateViaIdentity3';
            CreateViaIdentityExpanded3 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMessageReplyAll_CreateViaIdentityExpanded3';
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
Invoke action createReply
.Description
Invoke action createReply
.Example
Import-Module Microsoft.Graph.Users.Actions
# A UPN can also be used as -UserId.
New-MgUserMessageReply -UserId $userId -MessageId $messageId

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1BibiieUsersUserIdMessagesMessageIdMicrosoftGraphCreatereplyPostRequestbodyContentApplicationJsonSchema1
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/new-mgusermessagereply
#>
function New-MgUserMessageReply {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded2', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create2', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Create2', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity2', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded2', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create2', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity2', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1BibiieUsersUserIdMessagesMessageIdMicrosoftGraphCreatereplyPostRequestbodyContentApplicationJsonSchema1]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Comment},

    [Parameter(ParameterSetName='CreateExpanded2')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded2')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1]
    # message
    # To construct, please use Get-Help -Online and see NOTES section for MESSAGE properties and create a hash table.
    ${Message},

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
            Create2 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMessageReply_Create2';
            CreateExpanded2 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMessageReply_CreateExpanded2';
            CreateViaIdentity2 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMessageReply_CreateViaIdentity2';
            CreateViaIdentityExpanded2 = 'Microsoft.Graph.Users.Actions.private\New-MgUserMessageReply_CreateViaIdentityExpanded2';
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
Invoke action createUploadSession
.Description
Invoke action createUploadSession

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths4768B9UsersUserIdTodoListsTodotasklistIdTasksTodotaskIdAttachmentsMicrosoftGraphCreateuploadsessionPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUploadSession
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/new-mgusertodolisttaskattachmentuploadsession
#>
function New-MgUserTodoListTaskAttachmentUploadSession {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUploadSession])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of todoTask
    ${TodoTaskId},

    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of todoTaskList
    ${TodoTaskListId},

    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths4768B9UsersUserIdTodoListsTodotasklistIdTasksTodotaskIdAttachmentsMicrosoftGraphCreateuploadsessionPostRequestbodyContentApplicationJsonSchema]
    # .
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAttachmentInfo]
    # attachmentInfo
    # To construct, please use Get-Help -Online and see NOTES section for ATTACHMENTINFO properties and create a hash table.
    ${AttachmentInfo},

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
            Create1 = 'Microsoft.Graph.Users.Actions.private\New-MgUserTodoListTaskAttachmentUploadSession_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Users.Actions.private\New-MgUserTodoListTaskAttachmentUploadSession_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\New-MgUserTodoListTaskAttachmentUploadSession_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\New-MgUserTodoListTaskAttachmentUploadSession_CreateViaIdentityExpanded1';
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
Invoke action publish
.Description
Invoke action publish

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/publish-mguserdrivelistcontenttype
#>
function Publish-MgUserDriveListContentType {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Publish', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Publish', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of contentType
    ${ContentTypeId},

    [Parameter(ParameterSetName='Publish', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Publish', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='PublishViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Publish = 'Microsoft.Graph.Users.Actions.private\Publish-MgUserDriveListContentType_Publish';
            PublishViaIdentity = 'Microsoft.Graph.Users.Actions.private\Publish-MgUserDriveListContentType_PublishViaIdentity';
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
Retire all devices from management for this user
.Description
Retire all devices from management for this user

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/remove-mguserdevicefrommanagement
#>
function Remove-MgUserDeviceFromManagement {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Remove1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Remove1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RemoveViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Remove1 = 'Microsoft.Graph.Users.Actions.private\Remove-MgUserDeviceFromManagement_Remove1';
            RemoveViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Remove-MgUserDeviceFromManagement_RemoveViaIdentity1';
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
Delete user from shared Apple device
.Description
Delete user from shared Apple device

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsWbtl2JUsersUserIdManageddevicesManageddeviceIdMicrosoftGraphDeleteuserfromsharedappledevicePostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/remove-mgusermanageddeviceuserfromsharedappledevice
#>
function Remove-MgUserManagedDeviceUserFromSharedAppleDevice {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='DeleteExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Parameter(ParameterSetName='DeleteExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Parameter(ParameterSetName='DeleteExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='DeleteViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Delete1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsWbtl2JUsersUserIdManageddevicesManageddeviceIdMicrosoftGraphDeleteuserfromsharedappledevicePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='DeleteExpanded1')]
    [Parameter(ParameterSetName='DeleteViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='DeleteExpanded1')]
    [Parameter(ParameterSetName='DeleteViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${UserPrincipalName},

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
            Delete1 = 'Microsoft.Graph.Users.Actions.private\Remove-MgUserManagedDeviceUserFromSharedAppleDevice_Delete1';
            DeleteExpanded1 = 'Microsoft.Graph.Users.Actions.private\Remove-MgUserManagedDeviceUserFromSharedAppleDevice_DeleteExpanded1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Remove-MgUserManagedDeviceUserFromSharedAppleDevice_DeleteViaIdentity1';
            DeleteViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Remove-MgUserManagedDeviceUserFromSharedAppleDevice_DeleteViaIdentityExpanded1';
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
Request remote assistance
.Description
Request remote assistance

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/request-mgusermanageddeviceremoteassistance
#>
function Request-MgUserManagedDeviceRemoteAssistance {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Request1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Request1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='Request1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RequestViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Request1 = 'Microsoft.Graph.Users.Actions.private\Request-MgUserManagedDeviceRemoteAssistance_Request1';
            RequestViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Request-MgUserManagedDeviceRemoteAssistance_RequestViaIdentity1';
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
Invoke action resetPassword
.Description
Invoke action resetPassword

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1KjcdupUsersUserIdAuthenticationMethodsAuthenticationmethodIdMicrosoftGraphResetpasswordPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.String
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/reset-mguserauthenticationmethodpassword
#>
function Reset-MgUserAuthenticationMethodPassword {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='ResetExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Reset1', Mandatory)]
    [Parameter(ParameterSetName='ResetExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of authenticationMethod
    ${AuthenticationMethodId},

    [Parameter(ParameterSetName='Reset1', Mandatory)]
    [Parameter(ParameterSetName='ResetExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ResetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ResetViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Reset1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ResetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1KjcdupUsersUserIdAuthenticationMethodsAuthenticationmethodIdMicrosoftGraphResetpasswordPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='ResetExpanded1')]
    [Parameter(ParameterSetName='ResetViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='ResetExpanded1')]
    [Parameter(ParameterSetName='ResetViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${NewPassword},

    [Parameter(ParameterSetName='ResetExpanded1')]
    [Parameter(ParameterSetName='ResetViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${RequireChangeOnNextSignIn},

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
            Reset1 = 'Microsoft.Graph.Users.Actions.private\Reset-MgUserAuthenticationMethodPassword_Reset1';
            ResetExpanded1 = 'Microsoft.Graph.Users.Actions.private\Reset-MgUserAuthenticationMethodPassword_ResetExpanded1';
            ResetViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Reset-MgUserAuthenticationMethodPassword_ResetViaIdentity1';
            ResetViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Reset-MgUserAuthenticationMethodPassword_ResetViaIdentityExpanded1';
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
Reset passcode
.Description
Reset passcode

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/reset-mgusermanageddevicepasscode
#>
function Reset-MgUserManagedDevicePasscode {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Reset1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Reset1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='Reset1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ResetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Reset1 = 'Microsoft.Graph.Users.Actions.private\Reset-MgUserManagedDevicePasscode_Reset1';
            ResetViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Reset-MgUserManagedDevicePasscode_ResetViaIdentity1';
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
Reboot device
.Description
Reboot device

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/restart-mgusermanageddevicenow
#>
function Restart-MgUserManagedDeviceNow {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Reboot1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Reboot1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='Reboot1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RebootViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Reboot1 = 'Microsoft.Graph.Users.Actions.private\Restart-MgUserManagedDeviceNow_Reboot1';
            RebootViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Restart-MgUserManagedDeviceNow_RebootViaIdentity1';
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
Invoke action restore
.Description
Invoke action restore

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDirectoryObject
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/restore-mguserauthenticationwindowhelloforbusinessmethoddevice
#>
function Restore-MgUserAuthenticationWindowHelloForBusinessMethodDevice {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDirectoryObject])]
[CmdletBinding(DefaultParameterSetName='Restore1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Restore1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='Restore1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of windowsHelloForBusinessAuthenticationMethod
    ${WindowsHelloForBusinessAuthenticationMethodId},

    [Parameter(ParameterSetName='RestoreViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Restore1 = 'Microsoft.Graph.Users.Actions.private\Restore-MgUserAuthenticationWindowHelloForBusinessMethodDevice_Restore1';
            RestoreViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Restore-MgUserAuthenticationWindowHelloForBusinessMethodDevice_RestoreViaIdentity1';
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
Invoke action restore
.Description
Invoke action restore

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/restore-mguserdriveitemlistitemdocumentsetversion
#>
function Restore-MgUserDriveItemListItemDocumentSetVersion {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Restore', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Restore', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of documentSetVersion
    ${DocumentSetVersionId},

    [Parameter(ParameterSetName='Restore', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Restore', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of driveItem
    ${DriveItemId},

    [Parameter(ParameterSetName='Restore', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RestoreViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Restore = 'Microsoft.Graph.Users.Actions.private\Restore-MgUserDriveItemListItemDocumentSetVersion_Restore';
            RestoreViaIdentity = 'Microsoft.Graph.Users.Actions.private\Restore-MgUserDriveItemListItemDocumentSetVersion_RestoreViaIdentity';
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
Invoke action restoreVersion
.Description
Invoke action restoreVersion

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/restore-mguserdriveitemlistitemversion
#>
function Restore-MgUserDriveItemListItemVersion {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Restore', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Restore', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Restore', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of driveItem
    ${DriveItemId},

    [Parameter(ParameterSetName='Restore', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of listItemVersion
    ${ListItemVersionId},

    [Parameter(ParameterSetName='Restore', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RestoreViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Restore = 'Microsoft.Graph.Users.Actions.private\Restore-MgUserDriveItemListItemVersion_Restore';
            RestoreViaIdentity = 'Microsoft.Graph.Users.Actions.private\Restore-MgUserDriveItemListItemVersion_RestoreViaIdentity';
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
Invoke action restoreVersion
.Description
Invoke action restoreVersion

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/restore-mguserdriveitemversion
#>
function Restore-MgUserDriveItemVersion {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Restore', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Restore', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Restore', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of driveItem
    ${DriveItemId},

    [Parameter(ParameterSetName='Restore', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of driveItemVersion
    ${DriveItemVersionId},

    [Parameter(ParameterSetName='Restore', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RestoreViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Restore = 'Microsoft.Graph.Users.Actions.private\Restore-MgUserDriveItemVersion_Restore';
            RestoreViaIdentity = 'Microsoft.Graph.Users.Actions.private\Restore-MgUserDriveItemVersion_RestoreViaIdentity';
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
Invoke action restore
.Description
Invoke action restore

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths14Ul7QfUsersUserIdDrivesDriveIdItemsDriveitemIdMicrosoftGraphRestorePostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDriveItem1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/restore-mguserdriveitem
#>
function Restore-MgUserDriveItem {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDriveItem1])]
[CmdletBinding(DefaultParameterSetName='RestoreExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Restore', Mandatory)]
    [Parameter(ParameterSetName='RestoreExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Restore', Mandatory)]
    [Parameter(ParameterSetName='RestoreExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of driveItem
    ${DriveItemId},

    [Parameter(ParameterSetName='Restore', Mandatory)]
    [Parameter(ParameterSetName='RestoreExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RestoreViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='RestoreViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Restore', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='RestoreViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths14Ul7QfUsersUserIdDrivesDriveIdItemsDriveitemIdMicrosoftGraphRestorePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='RestoreExpanded')]
    [Parameter(ParameterSetName='RestoreViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='RestoreExpanded')]
    [Parameter(ParameterSetName='RestoreViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Name},

    [Parameter(ParameterSetName='RestoreExpanded')]
    [Parameter(ParameterSetName='RestoreViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemReference]
    # itemReference
    # To construct, please use Get-Help -Online and see NOTES section for PARENTREFERENCE properties and create a hash table.
    ${ParentReference},

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
            Restore = 'Microsoft.Graph.Users.Actions.private\Restore-MgUserDriveItem_Restore';
            RestoreExpanded = 'Microsoft.Graph.Users.Actions.private\Restore-MgUserDriveItem_RestoreExpanded';
            RestoreViaIdentity = 'Microsoft.Graph.Users.Actions.private\Restore-MgUserDriveItem_RestoreViaIdentity';
            RestoreViaIdentityExpanded = 'Microsoft.Graph.Users.Actions.private\Restore-MgUserDriveItem_RestoreViaIdentityExpanded';
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
Invoke action restore
.Description
Invoke action restore

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/restore-mguserdrivelistitemdocumentsetversion
#>
function Restore-MgUserDriveListItemDocumentSetVersion {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Restore', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Restore', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of documentSetVersion
    ${DocumentSetVersionId},

    [Parameter(ParameterSetName='Restore', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Restore', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of listItem
    ${ListItemId},

    [Parameter(ParameterSetName='Restore', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RestoreViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Restore = 'Microsoft.Graph.Users.Actions.private\Restore-MgUserDriveListItemDocumentSetVersion_Restore';
            RestoreViaIdentity = 'Microsoft.Graph.Users.Actions.private\Restore-MgUserDriveListItemDocumentSetVersion_RestoreViaIdentity';
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
Invoke action restoreVersion
.Description
Invoke action restoreVersion

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/restore-mguserdrivelistitemversion
#>
function Restore-MgUserDriveListItemVersion {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Restore', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Restore', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Restore', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of listItem
    ${ListItemId},

    [Parameter(ParameterSetName='Restore', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of listItemVersion
    ${ListItemVersionId},

    [Parameter(ParameterSetName='Restore', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RestoreViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Restore = 'Microsoft.Graph.Users.Actions.private\Restore-MgUserDriveListItemVersion_Restore';
            RestoreViaIdentity = 'Microsoft.Graph.Users.Actions.private\Restore-MgUserDriveListItemVersion_RestoreViaIdentity';
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
Invoke action restore
.Description
Invoke action restore

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/restore-mguserdriverootlistitemdocumentsetversion
#>
function Restore-MgUserDriveRootListItemDocumentSetVersion {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Restore', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Restore', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of documentSetVersion
    ${DocumentSetVersionId},

    [Parameter(ParameterSetName='Restore', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Restore', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RestoreViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Restore = 'Microsoft.Graph.Users.Actions.private\Restore-MgUserDriveRootListItemDocumentSetVersion_Restore';
            RestoreViaIdentity = 'Microsoft.Graph.Users.Actions.private\Restore-MgUserDriveRootListItemDocumentSetVersion_RestoreViaIdentity';
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
Invoke action restoreVersion
.Description
Invoke action restoreVersion

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/restore-mguserdriverootlistitemversion
#>
function Restore-MgUserDriveRootListItemVersion {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Restore', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Restore', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Restore', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of listItemVersion
    ${ListItemVersionId},

    [Parameter(ParameterSetName='Restore', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RestoreViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Restore = 'Microsoft.Graph.Users.Actions.private\Restore-MgUserDriveRootListItemVersion_Restore';
            RestoreViaIdentity = 'Microsoft.Graph.Users.Actions.private\Restore-MgUserDriveRootListItemVersion_RestoreViaIdentity';
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
Invoke action restoreVersion
.Description
Invoke action restoreVersion

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/restore-mguserdriverootversion
#>
function Restore-MgUserDriveRootVersion {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Restore1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Restore1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Restore1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of driveItemVersion
    ${DriveItemVersionId},

    [Parameter(ParameterSetName='Restore1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RestoreViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Restore1 = 'Microsoft.Graph.Users.Actions.private\Restore-MgUserDriveRootVersion_Restore1';
            RestoreViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Restore-MgUserDriveRootVersion_RestoreViaIdentity1';
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
Invoke action restore
.Description
Invoke action restore

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsWcmhxwUsersUserIdDrivesDriveIdRootMicrosoftGraphRestorePostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDriveItem1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/restore-mguserdriveroot
#>
function Restore-MgUserDriveRoot {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDriveItem1])]
[CmdletBinding(DefaultParameterSetName='RestoreExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Restore1', Mandatory)]
    [Parameter(ParameterSetName='RestoreExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Restore1', Mandatory)]
    [Parameter(ParameterSetName='RestoreExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RestoreViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='RestoreViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Restore1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='RestoreViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsWcmhxwUsersUserIdDrivesDriveIdRootMicrosoftGraphRestorePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='RestoreExpanded1')]
    [Parameter(ParameterSetName='RestoreViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='RestoreExpanded1')]
    [Parameter(ParameterSetName='RestoreViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Name},

    [Parameter(ParameterSetName='RestoreExpanded1')]
    [Parameter(ParameterSetName='RestoreViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemReference]
    # itemReference
    # To construct, please use Get-Help -Online and see NOTES section for PARENTREFERENCE properties and create a hash table.
    ${ParentReference},

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
            Restore1 = 'Microsoft.Graph.Users.Actions.private\Restore-MgUserDriveRoot_Restore1';
            RestoreExpanded1 = 'Microsoft.Graph.Users.Actions.private\Restore-MgUserDriveRoot_RestoreExpanded1';
            RestoreViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Restore-MgUserDriveRoot_RestoreViaIdentity1';
            RestoreViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Restore-MgUserDriveRoot_RestoreViaIdentityExpanded1';
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
Recover passcode
.Description
Recover passcode

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/restore-mgusermanageddevicepasscode
#>
function Restore-MgUserManagedDevicePasscode {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Recover1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Recover1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='Recover1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RecoverViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Recover1 = 'Microsoft.Graph.Users.Actions.private\Restore-MgUserManagedDevicePasscode_Recover1';
            RecoverViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Restore-MgUserManagedDevicePasscode_RecoverViaIdentity1';
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
Invoke action revokeSignInSessions
.Description
Invoke action revokeSignInSessions

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/revoke-mgusersigninsession
#>
function Revoke-MgUserSignInSession {
[Alias('Revoke-MgUserSign')]
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Revoke1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Revoke1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RevokeViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Revoke1 = 'Microsoft.Graph.Users.Actions.private\Revoke-MgUserSignInSession_Revoke1';
            RevokeViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Revoke-MgUserSignInSession_RevokeViaIdentity1';
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
Invoke action sendActivityNotification
.Description
Invoke action sendActivityNotification

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsBdscpeUsersUserIdChatsChatIdMicrosoftGraphSendactivitynotificationPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/send-mguserchatactivitynotification
#>
function Send-MgUserChatActivityNotification {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='SendExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Send1', Mandatory)]
    [Parameter(ParameterSetName='SendExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of chat
    ${ChatId},

    [Parameter(ParameterSetName='Send1', Mandatory)]
    [Parameter(ParameterSetName='SendExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='SendViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SendViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Send1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SendViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsBdscpeUsersUserIdChatsChatIdMicrosoftGraphSendactivitynotificationPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='SendExpanded1')]
    [Parameter(ParameterSetName='SendViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ActivityType},

    [Parameter(ParameterSetName='SendExpanded1')]
    [Parameter(ParameterSetName='SendViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='SendExpanded1')]
    [Parameter(ParameterSetName='SendViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int64]
    # .
    ${ChainId},

    [Parameter(ParameterSetName='SendExpanded1')]
    [Parameter(ParameterSetName='SendViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemBody]
    # itemBody
    # To construct, please use Get-Help -Online and see NOTES section for PREVIEWTEXT properties and create a hash table.
    ${PreviewText},

    [Parameter(ParameterSetName='SendExpanded1')]
    [Parameter(ParameterSetName='SendViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTeamworkNotificationRecipient]))]
    [System.Collections.Hashtable]
    # teamworkNotificationRecipient
    ${Recipient},

    [Parameter(ParameterSetName='SendExpanded1')]
    [Parameter(ParameterSetName='SendViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphKeyValuePair[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for TEMPLATEPARAMETERS properties and create a hash table.
    ${TemplateParameters},

    [Parameter(ParameterSetName='SendExpanded1')]
    [Parameter(ParameterSetName='SendViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTeamworkActivityTopic]
    # teamworkActivityTopic
    # To construct, please use Get-Help -Online and see NOTES section for TOPIC properties and create a hash table.
    ${Topic},

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
            Send1 = 'Microsoft.Graph.Users.Actions.private\Send-MgUserChatActivityNotification_Send1';
            SendExpanded1 = 'Microsoft.Graph.Users.Actions.private\Send-MgUserChatActivityNotification_SendExpanded1';
            SendViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Send-MgUserChatActivityNotification_SendViaIdentity1';
            SendViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Send-MgUserChatActivityNotification_SendViaIdentityExpanded1';
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
Invoke action send
.Description
Invoke action send

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/send-mgusermailfolderchildfoldermessage
#>
function Send-MgUserMailFolderChildFolderMessage {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Send1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Send1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Send1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId1},

    [Parameter(ParameterSetName='Send1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Send1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='SendViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Send1 = 'Microsoft.Graph.Users.Actions.private\Send-MgUserMailFolderChildFolderMessage_Send1';
            SendViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Send-MgUserMailFolderChildFolderMessage_SendViaIdentity1';
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
Invoke action send
.Description
Invoke action send

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/send-mgusermailfoldermessage
#>
function Send-MgUserMailFolderMessage {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Send1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Send1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Send1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Send1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='SendViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Send1 = 'Microsoft.Graph.Users.Actions.private\Send-MgUserMailFolderMessage_Send1';
            SendViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Send-MgUserMailFolderMessage_SendViaIdentity1';
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
Invoke action sendMail
.Description
Invoke action sendMail
.Example
Import-Module Microsoft.Graph.Users.Actions
$params = @{
	Message = @{
		Subject = "Meet for lunch?"
		Body = @{
			ContentType = "Text"
			Content = "The new cafeteria is open."
		}
		ToRecipients = @(
			@{
				EmailAddress = @{
					Address = "fannyd@contoso.onmicrosoft.com"
				}
			}
		)
		CcRecipients = @(
			@{
				EmailAddress = @{
					Address = "danas@contoso.onmicrosoft.com"
				}
			}
		)
	}
	SaveToSentItems = "false"
}
# A UPN can also be used as -UserId.
Send-MgUserMail -UserId $userId -BodyParameter $params
.Example
Import-Module Microsoft.Graph.Users.Actions
$params = @{
	Message = @{
		Subject = "Meet for lunch?"
		Body = @{
			ContentType = "Text"
			Content = "The new cafeteria is open."
		}
		ToRecipients = @(
			@{
				EmailAddress = @{
					Address = "meganb@contoso.onmicrosoft.com"
				}
			}
		)
		Attachments = @(
			@{
				"@odata.type" = "#microsoft.graph.fileAttachment"
				Name = "attachment.txt"
				ContentType = "text/plain"
				ContentBytes = "SGVsbG8gV29ybGQh"
			}
		)
	}
}
# A UPN can also be used as -UserId.
Send-MgUserMail -UserId $userId -BodyParameter $params
.Example
Import-Module Microsoft.Graph.Users.Actions
$params = @{
	Message = @{
		Subject = "9/9/2018: concert"
		Body = @{
			ContentType = "HTML"
			Content = "The group represents Nevada."
		}
		ToRecipients = @(
			@{
				EmailAddress = @{
					Address = "AlexW@contoso.OnMicrosoft.com"
				}
			}
		)
		InternetMessageHeaders = @(
			@{
				Name = "x-custom-header-group-name"
				Value = "Nevada"
			}
			@{
				Name = "x-custom-header-group-id"
				Value = "NV001"
			}
		)
	}
}
# A UPN can also be used as -UserId.
Send-MgUserMail -UserId $userId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsFh5OjtUsersUserIdMicrosoftGraphSendmailPostRequestbodyContentApplicationJsonSchema1
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/send-mgusermail
#>
function Send-MgUserMail {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='SendExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Send1', Mandatory)]
    [Parameter(ParameterSetName='SendExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='SendViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SendViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Send1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SendViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsFh5OjtUsersUserIdMicrosoftGraphSendmailPostRequestbodyContentApplicationJsonSchema1]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='SendExpanded1')]
    [Parameter(ParameterSetName='SendViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='SendExpanded1')]
    [Parameter(ParameterSetName='SendViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage1]
    # message
    # To construct, please use Get-Help -Online and see NOTES section for MESSAGE properties and create a hash table.
    ${Message},

    [Parameter(ParameterSetName='SendExpanded1')]
    [Parameter(ParameterSetName='SendViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # .
    ${SaveToSentItems},

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
            Send1 = 'Microsoft.Graph.Users.Actions.private\Send-MgUserMail_Send1';
            SendExpanded1 = 'Microsoft.Graph.Users.Actions.private\Send-MgUserMail_SendExpanded1';
            SendViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Send-MgUserMail_SendViaIdentity1';
            SendViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Send-MgUserMail_SendViaIdentityExpanded1';
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
Invoke action send
.Description
Invoke action send
.Example
Import-Module Microsoft.Graph.Users.Actions
# A UPN can also be used as -UserId.
Send-MgUserMessage -UserId $userId -MessageId $messageId

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/send-mgusermessage
#>
function Send-MgUserMessage {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Send1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Send1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of message
    ${MessageId},

    [Parameter(ParameterSetName='Send1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='SendViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Send1 = 'Microsoft.Graph.Users.Actions.private\Send-MgUserMessage_Send1';
            SendViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Send-MgUserMessage_SendViaIdentity1';
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
Invoke action sendActivityNotification
.Description
Invoke action sendActivityNotification
.Example
Import-Module Microsoft.Graph.Users.Actions
$params = @{
	Topic = @{
		Source = "text"
		Value = "Deployment Approvals Channel"
		WebUrl = "https://teams.microsoft.com/l/message/19:448cfd2ac2a7490a9084a9ed14cttr78c@thread.skype/1605223780000?tenantId=c8b1bf45-3834-4ecf-971a-b4c755ee677d&groupId=d4c2a937-f097-435a-bc91-5c1683ca7245&parentMessageId=1605223771864&teamName=Approvals&channelName=Azure%20DevOps&createdTime=1605223780000"
	}
	ActivityType = "deploymentApprovalRequired"
	PreviewText = @{
		Content = "New deployment requires your approval"
	}
	TemplateParameters = @(
		@{
			Name = "deploymentId"
			Value = "6788662"
		}
	)
}
Send-MgUserTeamworkActivityNotification -UserId $userId -BodyParameter $params
.Example
Import-Module Microsoft.Graph.Users.Actions
$params = @{
	Topic = @{
		Source = "text"
		Value = "Deployment Approvals Channel"
		WebUrl = "https://teams.microsoft.com/l/message/19:448cfd2ac2a7490a9084a9ed14cttr78c@thread.skype/1605223780000?tenantId=c8b1bf45-3834-4ecf-971a-b4c755ee677d&groupId=d4c2a937-f097-435a-bc91-5c1683ca7245&parentMessageId=1605223771864&teamName=Approvals&channelName=Azure%20DevOps&createdTime=1605223780000"
	}
	ActivityType = "deploymentApprovalRequired"
	PreviewText = @{
		Content = "New deployment requires your approval"
	}
	TemplateParameters = @(
		@{
			Name = "deploymentId"
			Value = "6788662"
		}
	)
}
Send-MgUserTeamworkActivityNotification -UserId $userId -BodyParameter $params
.Example
Import-Module Microsoft.Graph.Users.Actions
$params = @{
	Topic = @{
		Source = "entityUrl"
		Value = "https://graph.microsoft.com/v1.0/users/{userId}/teamwork/installedApps/{installationId}"
	}
	ActivityType = "taskCreated"
	PreviewText = @{
		Content = "New Task Created"
	}
	TemplateParameters = @(
		@{
			Name = "taskId"
			Value = "Task 12322"
		}
	)
}
Send-MgUserTeamworkActivityNotification -UserId $userId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths18Aow54UsersUserIdTeamworkMicrosoftGraphSendactivitynotificationPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/send-mguserteamworkactivitynotification
#>
function Send-MgUserTeamworkActivityNotification {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='SendExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Send1', Mandatory)]
    [Parameter(ParameterSetName='SendExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='SendViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SendViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Send1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SendViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths18Aow54UsersUserIdTeamworkMicrosoftGraphSendactivitynotificationPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='SendExpanded1')]
    [Parameter(ParameterSetName='SendViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ActivityType},

    [Parameter(ParameterSetName='SendExpanded1')]
    [Parameter(ParameterSetName='SendViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='SendExpanded1')]
    [Parameter(ParameterSetName='SendViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int64]
    # .
    ${ChainId},

    [Parameter(ParameterSetName='SendExpanded1')]
    [Parameter(ParameterSetName='SendViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemBody]
    # itemBody
    # To construct, please use Get-Help -Online and see NOTES section for PREVIEWTEXT properties and create a hash table.
    ${PreviewText},

    [Parameter(ParameterSetName='SendExpanded1')]
    [Parameter(ParameterSetName='SendViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphKeyValuePair[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for TEMPLATEPARAMETERS properties and create a hash table.
    ${TemplateParameters},

    [Parameter(ParameterSetName='SendExpanded1')]
    [Parameter(ParameterSetName='SendViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTeamworkActivityTopic]
    # teamworkActivityTopic
    # To construct, please use Get-Help -Online and see NOTES section for TOPIC properties and create a hash table.
    ${Topic},

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
            Send1 = 'Microsoft.Graph.Users.Actions.private\Send-MgUserTeamworkActivityNotification_Send1';
            SendExpanded1 = 'Microsoft.Graph.Users.Actions.private\Send-MgUserTeamworkActivityNotification_SendExpanded1';
            SendViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Send-MgUserTeamworkActivityNotification_SendViaIdentity1';
            SendViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Send-MgUserTeamworkActivityNotification_SendViaIdentityExpanded1';
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
Invoke action assignLicense
.Description
Invoke action assignLicense
.Example
Connect-Graph -Scopes User.ReadWrite.All, Organization.Read.All

$EmsSku = Get-MgSubscribedSku -All | Where SkuPartNumber -eq 'EMSPREMIUM'

Set-MgUserLicense -UserId '38955658-c844-4f59-9430-6519430ac89b' -AddLicenses @{SkuId = $EmsSku.SkuId} -RemoveLicenses @()

Id                                   DisplayName   Mail UserPrincipalName                     UserType
--                                   -----------   ---- -----------------                     --------
38955658-c844-4f59-9430-6519430ac89b Bianca Pisani      BiancaP@contoso.onmicrosoft.com       Member
.Example
Connect-Graph -Scopes User.ReadWrite.All, Organization.Read.All

$EmsSku = Get-MgSubscribedSku -All | Where SkuPartNumber -eq 'EMSPREMIUM'
$FlowSku = Get-MgSubscribedSku -All | Where SkuPartNumber -eq 'FLOW_FREE'
$addLicenses = @(
  @{SkuId = $EmsSku.SkuId},
  @{SkuId = $FlowSku.SkuId}
  )

Set-MgUserLicense -UserId '38955658-c844-4f59-9430-6519430ac89b' -AddLicenses $addLicenses -RemoveLicenses @()

Id                                   DisplayName   Mail UserPrincipalName                     UserType
--                                   -----------   ---- -----------------                     --------
38955658-c844-4f59-9430-6519430ac89b Bianca Pisani      BiancaP@contoso.onmicrosoft.com       Member
.Example
Connect-Graph -Scopes User.ReadWrite.All, Organization.Read.All

$EmsSku = Get-MgSubscribedSku -All | Where SkuPartNumber -eq 'EMSPREMIUM'
$disabledPlans = $EmsSku.ServicePlans | where ServicePlanName -in ("MFA_PREMIUM", "INTUNE_A") | Select -ExpandProperty ServicePlanId
$addLicenses = @(
  @{SkuId = $EmsSku.SkuId
  DisabledPlans = $disabledPlans
  }
  )

Set-MgUserLicense -UserId '38955658-c844-4f59-9430-6519430ac89b' -AddLicenses $addLicenses -RemoveLicenses @()

Id                                   DisplayName   Mail UserPrincipalName                     UserType
--                                   -----------   ---- -----------------                     --------
38955658-c844-4f59-9430-6519430ac89b Bianca Pisani      BiancaP@contoso.onmicrosoft.com       Member
.Example
Connect-Graph -Scopes User.ReadWrite.All, Organization.Read.All

$EmsSku = Get-MgSubscribedSku -All | Where SkuPartNumber -eq 'EMSPREMIUM'
$userLicense = Get-MgUserLicenseDetail -UserId "38955658-c844-4f59-9430-6519430ac89b"

$userDisabledPlans = $userLicense.ServicePlans |
  Where ProvisioningStatus -eq "Disabled" |
  Select -ExpandProperty ServicePlanId

$newDisabledPlans = $EmsSku.ServicePlans |
  Where ServicePlanName -in ("AAD_PREMIUM_P2", "AAD_PREMIUM") |
  Select -ExpandProperty ServicePlanId

$disabledPlans = $userDisabledPlans + $newDisabledPlans | Select -Unique

$addLicenses = @(
  @{SkuId = $EmsSku.SkuId
  DisabledPlans = $disabledPlans
  }
  )

Set-MgUserLicense -UserId '38955658-c844-4f59-9430-6519430ac89b' -AddLicenses $addLicenses -RemoveLicenses @()

Id                                   DisplayName   Mail UserPrincipalName                     UserType
--                                   -----------   ---- -----------------                     --------
38955658-c844-4f59-9430-6519430ac89b Bianca Pisani      BiancaP@contoso.onmicrosoft.com       Member
.Example
Connect-Graph -Scopes User.ReadWrite.All, Organization.Read.All

Select-MgProfile -Name Beta
$mgUser = Get-MgUser -UserId '38955658-c844-4f59-9430-6519430ac89b'

Set-MgUserLicense -UserId "82f51c98-7221-442f-8329-3faf9fe022f1" -AddLicenses $mgUser.AssignedLicenses -RemoveLicenses @()


Id                                   DisplayName    Mail UserPrincipalName                      UserType
--                                   -----------    ---- -----------------                      --------
82f51c98-7221-442f-8329-3faf9fe022f1 Mallory Cortez      MalloryC@contoso.onmicrosoft.com       Member
.Example
Connect-Graph -Scopes User.ReadWrite.All, Organization.Read.All

$EmsSku = Get-MgSubscribedSku -All | Where SkuPartNumber -eq 'EMSPREMIUM'

Set-MgUserLicense -UserId "38955658-c844-4f59-9430-6519430ac89b" -AddLicenses @() -RemoveLicenses @($EmsSku.SkuId)

Id                                   DisplayName   Mail UserPrincipalName                     UserType
--                                   -----------   ---- -----------------                     --------
38955658-c844-4f59-9430-6519430ac89b Bianca Pisani      BiancaP@contoso.onmicrosoft.com       Member

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsBfhtneUsersUserIdMicrosoftGraphAssignlicensePostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUser1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/set-mguserlicense
#>
function Set-MgUserLicense {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUser1])]
[CmdletBinding(DefaultParameterSetName='AssignExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Assign1', Mandatory)]
    [Parameter(ParameterSetName='AssignExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='AssignViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='AssignViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Assign1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='AssignViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsBfhtneUsersUserIdMicrosoftGraphAssignlicensePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='AssignExpanded1')]
    [Parameter(ParameterSetName='AssignViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAssignedLicense[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for ADDLICENSES properties and create a hash table.
    ${AddLicenses},

    [Parameter(ParameterSetName='AssignExpanded1')]
    [Parameter(ParameterSetName='AssignViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='AssignExpanded1')]
    [Parameter(ParameterSetName='AssignViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # .
    ${RemoveLicenses},

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
            Assign1 = 'Microsoft.Graph.Users.Actions.private\Set-MgUserLicense_Assign1';
            AssignExpanded1 = 'Microsoft.Graph.Users.Actions.private\Set-MgUserLicense_AssignExpanded1';
            AssignViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Set-MgUserLicense_AssignViaIdentity1';
            AssignViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Set-MgUserLicense_AssignViaIdentityExpanded1';
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
Microsoft.Graph.PowerShell.Models.IPathsTrjrarUsersUserIdPresenceMicrosoftGraphSetuserpreferredpresencePostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/set-mguserpresenceuserpreferredpresence
#>
function Set-MgUserPresenceUserPreferredPresence {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='SetExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Set1', Mandatory)]
    [Parameter(ParameterSetName='SetExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='SetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SetViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Set1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsTrjrarUsersUserIdPresenceMicrosoftGraphSetuserpreferredpresencePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='SetExpanded1')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Activity},

    [Parameter(ParameterSetName='SetExpanded1')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='SetExpanded1')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Availability},

    [Parameter(ParameterSetName='SetExpanded1')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded1')]
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
            Set1 = 'Microsoft.Graph.Users.Actions.private\Set-MgUserPresenceUserPreferredPresence_Set1';
            SetExpanded1 = 'Microsoft.Graph.Users.Actions.private\Set-MgUserPresenceUserPreferredPresence_SetExpanded1';
            SetViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Set-MgUserPresenceUserPreferredPresence_SetViaIdentity1';
            SetViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Set-MgUserPresenceUserPreferredPresence_SetViaIdentityExpanded1';
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
.Example
Import-Module Microsoft.Graph.Users.Actions
$params = @{
	SessionId = "22553876-f5ab-4529-bffb-cfe50aa89f87"
	Availability = "Available"
	Activity = "Available"
	ExpirationDuration = "PT1H"
}
Set-MgUserPresence -UserId $userId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1XdpsmjUsersUserIdPresenceMicrosoftGraphSetpresencePostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/set-mguserpresence
#>
function Set-MgUserPresence {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='SetExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Set1', Mandatory)]
    [Parameter(ParameterSetName='SetExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='SetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SetViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Set1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='SetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1XdpsmjUsersUserIdPresenceMicrosoftGraphSetpresencePostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='SetExpanded1')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Activity},

    [Parameter(ParameterSetName='SetExpanded1')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='SetExpanded1')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Availability},

    [Parameter(ParameterSetName='SetExpanded1')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.TimeSpan]
    # .
    ${ExpirationDuration},

    [Parameter(ParameterSetName='SetExpanded1')]
    [Parameter(ParameterSetName='SetViaIdentityExpanded1')]
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
            Set1 = 'Microsoft.Graph.Users.Actions.private\Set-MgUserPresence_Set1';
            SetExpanded1 = 'Microsoft.Graph.Users.Actions.private\Set-MgUserPresence_SetExpanded1';
            SetViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Set-MgUserPresence_SetViaIdentity1';
            SetViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Set-MgUserPresence_SetViaIdentityExpanded1';
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
Bypass activation lock
.Description
Bypass activation lock

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/skip-mgusermanageddeviceactivationlock
#>
function Skip-MgUserManagedDeviceActivationLock {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Bypass1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Bypass1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='Bypass1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='BypassViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Bypass1 = 'Microsoft.Graph.Users.Actions.private\Skip-MgUserManagedDeviceActivationLock_Bypass1';
            BypassViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Skip-MgUserManagedDeviceActivationLock_BypassViaIdentity1';
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
Invoke action cancel
.Description
Invoke action cancel

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths17Tur4EUsersUserIdEventsEventIdInstancesEventId1MicrosoftGraphCancelPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/stop-mgusereventinstance
#>
function Stop-MgUserEventInstance {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='CancelExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Cancel1', Mandatory)]
    [Parameter(ParameterSetName='CancelExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of event
    ${EventId},

    [Parameter(ParameterSetName='Cancel1', Mandatory)]
    [Parameter(ParameterSetName='CancelExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of event
    ${EventId1},

    [Parameter(ParameterSetName='Cancel1', Mandatory)]
    [Parameter(ParameterSetName='CancelExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CancelViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CancelViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Cancel1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CancelViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths17Tur4EUsersUserIdEventsEventIdInstancesEventId1MicrosoftGraphCancelPostRequestbodyContentApplicationJsonSchema]
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
    ${Comment},

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
            Cancel1 = 'Microsoft.Graph.Users.Actions.private\Stop-MgUserEventInstance_Cancel1';
            CancelExpanded1 = 'Microsoft.Graph.Users.Actions.private\Stop-MgUserEventInstance_CancelExpanded1';
            CancelViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Stop-MgUserEventInstance_CancelViaIdentity1';
            CancelViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Stop-MgUserEventInstance_CancelViaIdentityExpanded1';
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
Invoke action cancel
.Description
Invoke action cancel
.Example
Import-Module Microsoft.Graph.Users.Actions
$params = @{
	Comment = "Cancelling for this week due to all hands"
}
# A UPN can also be used as -UserId.
Stop-MgUserEvent -UserId $userId -EventId $eventId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1F7X6GlUsersUserIdEventsEventIdMicrosoftGraphCancelPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/stop-mguserevent
#>
function Stop-MgUserEvent {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='CancelExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Cancel1', Mandatory)]
    [Parameter(ParameterSetName='CancelExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of event
    ${EventId},

    [Parameter(ParameterSetName='Cancel1', Mandatory)]
    [Parameter(ParameterSetName='CancelExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='CancelViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CancelViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Cancel1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CancelViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1F7X6GlUsersUserIdEventsEventIdMicrosoftGraphCancelPostRequestbodyContentApplicationJsonSchema]
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
    ${Comment},

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
            Cancel1 = 'Microsoft.Graph.Users.Actions.private\Stop-MgUserEvent_Cancel1';
            CancelExpanded1 = 'Microsoft.Graph.Users.Actions.private\Stop-MgUserEvent_CancelExpanded1';
            CancelViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Stop-MgUserEvent_CancelViaIdentity1';
            CancelViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Stop-MgUserEvent_CancelViaIdentityExpanded1';
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
Invoke action syncDevice
.Description
Invoke action syncDevice

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/sync-mgusermanageddevice
#>
function Sync-MgUserManagedDevice {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Sync1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Sync1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='Sync1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='SyncViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Sync1 = 'Microsoft.Graph.Users.Actions.private\Sync-MgUserManagedDevice_Sync1';
            SyncViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Sync-MgUserManagedDevice_SyncViaIdentity1';
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
Invoke action validatePermission
.Description
Invoke action validatePermission

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsBhdbzfUsersUserIdDrivesDriveIdItemsDriveitemIdMicrosoftGraphValidatepermissionPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/test-mguserdriveitempermission
#>
function Test-MgUserDriveItemPermission {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='ValidateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Validate', Mandatory)]
    [Parameter(ParameterSetName='ValidateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Validate', Mandatory)]
    [Parameter(ParameterSetName='ValidateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of driveItem
    ${DriveItemId},

    [Parameter(ParameterSetName='Validate', Mandatory)]
    [Parameter(ParameterSetName='ValidateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ValidateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ValidateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Validate', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ValidateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsBhdbzfUsersUserIdDrivesDriveIdItemsDriveitemIdMicrosoftGraphValidatepermissionPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='ValidateExpanded')]
    [Parameter(ParameterSetName='ValidateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='ValidateExpanded')]
    [Parameter(ParameterSetName='ValidateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ChallengeToken},

    [Parameter(ParameterSetName='ValidateExpanded')]
    [Parameter(ParameterSetName='ValidateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Password},

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
            Validate = 'Microsoft.Graph.Users.Actions.private\Test-MgUserDriveItemPermission_Validate';
            ValidateExpanded = 'Microsoft.Graph.Users.Actions.private\Test-MgUserDriveItemPermission_ValidateExpanded';
            ValidateViaIdentity = 'Microsoft.Graph.Users.Actions.private\Test-MgUserDriveItemPermission_ValidateViaIdentity';
            ValidateViaIdentityExpanded = 'Microsoft.Graph.Users.Actions.private\Test-MgUserDriveItemPermission_ValidateViaIdentityExpanded';
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
Invoke action validatePermission
.Description
Invoke action validatePermission

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsUsk7RsUsersUserIdDrivesDriveIdRootMicrosoftGraphValidatepermissionPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/test-mguserdriverootpermission
#>
function Test-MgUserDriveRootPermission {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='ValidateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Validate1', Mandatory)]
    [Parameter(ParameterSetName='ValidateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Validate1', Mandatory)]
    [Parameter(ParameterSetName='ValidateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ValidateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ValidateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Validate1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ValidateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsUsk7RsUsersUserIdDrivesDriveIdRootMicrosoftGraphValidatepermissionPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='ValidateExpanded1')]
    [Parameter(ParameterSetName='ValidateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='ValidateExpanded1')]
    [Parameter(ParameterSetName='ValidateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ChallengeToken},

    [Parameter(ParameterSetName='ValidateExpanded1')]
    [Parameter(ParameterSetName='ValidateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Password},

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
            Validate1 = 'Microsoft.Graph.Users.Actions.private\Test-MgUserDriveRootPermission_Validate1';
            ValidateExpanded1 = 'Microsoft.Graph.Users.Actions.private\Test-MgUserDriveRootPermission_ValidateExpanded1';
            ValidateViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Test-MgUserDriveRootPermission_ValidateViaIdentity1';
            ValidateViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Test-MgUserDriveRootPermission_ValidateViaIdentityExpanded1';
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
Invoke action validateProperties
.Description
Invoke action validateProperties

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1Tz6Rb9UsersMicrosoftGraphValidatepropertiesPostRequestbodyContentApplicationJsonSchema1
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/test-mguserproperty
#>
function Test-MgUserProperty {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='ValidateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Validate1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Tz6Rb9UsersMicrosoftGraphValidatepropertiesPostRequestbodyContentApplicationJsonSchema1]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='ValidateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='ValidateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${DisplayName},

    [Parameter(ParameterSetName='ValidateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${EntityType},

    [Parameter(ParameterSetName='ValidateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${MailNickname},

    [Parameter(ParameterSetName='ValidateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${OnBehalfOfUserId},

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
            Validate1 = 'Microsoft.Graph.Users.Actions.private\Test-MgUserProperty_Validate1';
            ValidateExpanded1 = 'Microsoft.Graph.Users.Actions.private\Test-MgUserProperty_ValidateExpanded1';
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
Invoke action unpublish
.Description
Invoke action unpublish

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/unpublish-mguserdrivelistcontenttype
#>
function Unpublish-MgUserDriveListContentType {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Unpublish', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Unpublish', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of contentType
    ${ContentTypeId},

    [Parameter(ParameterSetName='Unpublish', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Unpublish', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='UnpublishViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Unpublish = 'Microsoft.Graph.Users.Actions.private\Unpublish-MgUserDriveListContentType_Unpublish';
            UnpublishViaIdentity = 'Microsoft.Graph.Users.Actions.private\Unpublish-MgUserDriveListContentType_UnpublishViaIdentity';
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
Invoke action upgrade
.Description
Invoke action upgrade

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/update-mguserchatinstalledapp
#>
function Update-MgUserChatInstalledApp {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Upgrade1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Upgrade1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of chat
    ${ChatId},

    [Parameter(ParameterSetName='Upgrade1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of teamsAppInstallation
    ${TeamsAppInstallationId},

    [Parameter(ParameterSetName='Upgrade1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='UpgradeViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
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
            Upgrade1 = 'Microsoft.Graph.Users.Actions.private\Update-MgUserChatInstalledApp_Upgrade1';
            UpgradeViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Update-MgUserChatInstalledApp_UpgradeViaIdentity1';
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
Invoke action updateWindowsDeviceAccount
.Description
Invoke action updateWindowsDeviceAccount

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1Q6DqpaUsersUserIdManageddevicesManageddeviceIdMicrosoftGraphUpdatewindowsdeviceaccountPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/update-mgusermanageddevicewindowdeviceaccount
#>
function Update-MgUserManagedDeviceWindowDeviceAccount {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of managedDevice
    ${ManagedDeviceId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1Q6DqpaUsersUserIdManageddevicesManageddeviceIdMicrosoftGraphUpdatewindowsdeviceaccountPostRequestbodyContentApplicationJsonSchema]
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUpdateWindowsDeviceAccountActionParameter]
    # updateWindowsDeviceAccountActionParameter
    # To construct, please use Get-Help -Online and see NOTES section for UPDATEWINDOWSDEVICEACCOUNTACTIONPARAMETER properties and create a hash table.
    ${UpdateWindowsDeviceAccountActionParameter},

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
            Update1 = 'Microsoft.Graph.Users.Actions.private\Update-MgUserManagedDeviceWindowDeviceAccount_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Users.Actions.private\Update-MgUserManagedDeviceWindowDeviceAccount_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Update-MgUserManagedDeviceWindowDeviceAccount_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Update-MgUserManagedDeviceWindowDeviceAccount_UpdateViaIdentityExpanded1';
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
Invoke action onenotePatchContent
.Description
Invoke action onenotePatchContent

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1C74SuUsersUserIdOnenotePagesOnenotepageIdMicrosoftGraphOnenotepatchcontentPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/update-mguseronenotepagecontent
#>
function Update-MgUserOnenotePageContent {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='PatchExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Patch1', Mandatory)]
    [Parameter(ParameterSetName='PatchExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onenotePage
    ${OnenotePageId},

    [Parameter(ParameterSetName='Patch1', Mandatory)]
    [Parameter(ParameterSetName='PatchExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='PatchViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='PatchViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Patch1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='PatchViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1C74SuUsersUserIdOnenotePagesOnenotepageIdMicrosoftGraphOnenotepatchcontentPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='PatchExpanded1')]
    [Parameter(ParameterSetName='PatchViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='PatchExpanded1')]
    [Parameter(ParameterSetName='PatchViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnenotePatchContentCommand[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for COMMANDS properties and create a hash table.
    ${Commands},

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
            Patch1 = 'Microsoft.Graph.Users.Actions.private\Update-MgUserOnenotePageContent_Patch1';
            PatchExpanded1 = 'Microsoft.Graph.Users.Actions.private\Update-MgUserOnenotePageContent_PatchExpanded1';
            PatchViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Update-MgUserOnenotePageContent_PatchViaIdentity1';
            PatchViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Update-MgUserOnenotePageContent_PatchViaIdentityExpanded1';
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
Invoke action changePassword
.Description
Invoke action changePassword
.Example
Import-Module Microsoft.Graph.Users.Actions
$params = @{
	CurrentPassword = "xWwvJ]6NMw+bWH-d"
	NewPassword = "0eM85N54wFxWwvJ]"
}
# A UPN can also be used as -UserId.
Update-MgUserPassword -UserId $userId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths3Mx0JpUsersUserIdMicrosoftGraphChangepasswordPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.actions/update-mguserpassword
#>
function Update-MgUserPassword {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='ChangeExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Change1', Mandatory)]
    [Parameter(ParameterSetName='ChangeExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ChangeViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ChangeViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersActionsIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Change1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ChangeViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths3Mx0JpUsersUserIdMicrosoftGraphChangepasswordPostRequestbodyContentApplicationJsonSchema]
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
    # .
    ${CurrentPassword},

    [Parameter(ParameterSetName='ChangeExpanded1')]
    [Parameter(ParameterSetName='ChangeViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${NewPassword},

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
            Change1 = 'Microsoft.Graph.Users.Actions.private\Update-MgUserPassword_Change1';
            ChangeExpanded1 = 'Microsoft.Graph.Users.Actions.private\Update-MgUserPassword_ChangeExpanded1';
            ChangeViaIdentity1 = 'Microsoft.Graph.Users.Actions.private\Update-MgUserPassword_ChangeViaIdentity1';
            ChangeViaIdentityExpanded1 = 'Microsoft.Graph.Users.Actions.private\Update-MgUserPassword_ChangeViaIdentityExpanded1';
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
# MIInngYJKoZIhvcNAQcCoIInjzCCJ4sCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCAFDH6kcD7SAq5g
# yRCFWnO+lHt125EO7qJ7PSZajx0cJ6CCDYEwggX/MIID56ADAgECAhMzAAACzI61
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
# RcBCyZt2WwqASGv9eZ/BvW1taslScxMNelDNMYIZczCCGW8CAQEwgZUwfjELMAkG
# A1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQx
# HjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEoMCYGA1UEAxMfTWljcm9z
# b2Z0IENvZGUgU2lnbmluZyBQQ0EgMjAxMQITMwAAAsyOtZamvdHJTgAAAAACzDAN
# BglghkgBZQMEAgEFAKCBrjAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgor
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQg2lhEIG8/
# rdomXr/svnsue1W4YNkxALPre0/vokoDXnMwQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQBhUi3nWeYZfCcoWk2bJ6LJspKl4kRf5tVjnrjvwKGm
# VYUKVLhuN3y85WqP57qkAOr/CfS57PacJa2S9cooXE5oLK1S0G+/EorpTOA8dZbz
# DCSJs8fi7/6Cly0HdAtXZLCHQexF4LtMWXjMOAH1tCOlxXdj4k8In7DCA0/nCxGb
# CTBO+HrCfrwu/Ev07MNMkpT/yky1N5vnh3FzkuukICVZ30hturwIgxz/INuYJu1E
# QRWPJQgaQBqEVD3D+YkH1Yyei0nulf5NPKPx8sls2dVZSA5uklxELitkhg4D3KCM
# pONG8PVmWuFDi1l1u2FMx+ZfL2BkWvF4bkP2xZC+eGGxoYIW/TCCFvkGCisGAQQB
# gjcDAwExghbpMIIW5QYJKoZIhvcNAQcCoIIW1jCCFtICAQMxDzANBglghkgBZQME
# AgEFADCCAVEGCyqGSIb3DQEJEAEEoIIBQASCATwwggE4AgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEIHgR+YQCavTV6RWf6y6qnjPPZRbIl4wsNMiElw4m
# Wz44AgZjIzZmdwMYEzIwMjIwOTI4MTkzMDM2LjQ4OVowBIACAfSggdCkgc0wgcox
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJTAjBgNVBAsTHE1p
# Y3Jvc29mdCBBbWVyaWNhIE9wZXJhdGlvbnMxJjAkBgNVBAsTHVRoYWxlcyBUU1Mg
# RVNOOjEyQkMtRTNBRS03NEVCMSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFt
# cCBTZXJ2aWNloIIRVDCCBwwwggT0oAMCAQICEzMAAAGhAYVVmblUXYoAAQAAAaEw
# DQYJKoZIhvcNAQELBQAwfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0
# b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3Jh
# dGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTAwHhcN
# MjExMjAyMTkwNTI0WhcNMjMwMjI4MTkwNTI0WjCByjELMAkGA1UEBhMCVVMxEzAR
# BgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1p
# Y3Jvc29mdCBDb3Jwb3JhdGlvbjElMCMGA1UECxMcTWljcm9zb2Z0IEFtZXJpY2Eg
# T3BlcmF0aW9uczEmMCQGA1UECxMdVGhhbGVzIFRTUyBFU046MTJCQy1FM0FFLTc0
# RUIxJTAjBgNVBAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1wIFNlcnZpY2UwggIiMA0G
# CSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDayTxe5WukkrYxxVuHLYW9BEWCD9kk
# jnnHsOKwGddIPbZlLY+l5ovLDNf+BEMQKAZQI3DX91l1yCDuP9X7tOPC48ZRGXA/
# bf9ql0FK5438gIl7cV528XeEOFwc/A+UbIUfW296Omg8Z62xaQv3jrG4U/priArF
# /er1UA1HNuIGUyqjlygiSPwK2NnFApi1JD+Uef5c47kh7pW1Kj7RnchpFeY9MekP
# QRia7cEaUYU4sqCiJVdDJpefLvPT9EdthlQx75ldx+AwZf2a9T7uQRSBh8tpxPdI
# DDkKiWMwjKTrAY09A3I/jidqPuc8PvX+sqxqyZEN2h4GA0Edjmk64nkIukAK18K5
# nALDLO9SMTxpAwQIHRDtZeTClvAPCEoy1vtPD7f+eqHqStuu+XCkfRjXEpX9+h9f
# rsB0/BgD5CBf3ELLAa8TefMfHZWEJRTPNrbXMKizSrUSkVv/3HP/ZsJpwaz5My2R
# byc3Ah9bT76eBJkyfT5FN9v/KQ0HnxhRMs6HHhTmNx+LztYci+vHf0D3QH1eCjZW
# ZRjp1mOyxpPU2mDMG6gelvJse1JzRADo7YIok/J3Ccbm8MbBbm85iogFltFHecHF
# EFwrsDGBFnNYHMhcbarQNA+gY2e2l9fAkX3MjI7Uklkoz74/P6KIqe5jcd9FPCbb
# SbYH9OLsteeYOQIDAQABo4IBNjCCATIwHQYDVR0OBBYEFBa/IDLbY475VQyKiZSw
# 47l0/cypMB8GA1UdIwQYMBaAFJ+nFV0AXmJdg/Tl0mWnG1M1GelyMF8GA1UdHwRY
# MFYwVKBSoFCGTmh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9wa2lvcHMvY3JsL01p
# Y3Jvc29mdCUyMFRpbWUtU3RhbXAlMjBQQ0ElMjAyMDEwKDEpLmNybDBsBggrBgEF
# BQcBAQRgMF4wXAYIKwYBBQUHMAKGUGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbS9w
# a2lvcHMvY2VydHMvTWljcm9zb2Z0JTIwVGltZS1TdGFtcCUyMFBDQSUyMDIwMTAo
# MSkuY3J0MAwGA1UdEwEB/wQCMAAwEwYDVR0lBAwwCgYIKwYBBQUHAwgwDQYJKoZI
# hvcNAQELBQADggIBACDDIxElfXlG5YKcKrLPSS+f3JWZprwKEiASvivaHTBRlXtA
# s+TkadcsEei+9w5vmF5tCUzTH4c0nCI7bZxnsL+S6XsiOs3Z1V4WX+IwoXUJ4zLv
# s0+mT4vjGDtYfKQ/bsmJKar2c99m/fHv1Wm2CTcyaePvi86Jh3UyLjdRILWbtzs4
# oImFMwwKbzHdPopxrBhgi+C1YZshosWLlgzyuxjUl+qNg1m52MJmf11loI7D9HJo
# aQzd+rf928Y8rvULmg2h/G50o+D0UJ1Fa/cJJaHfB3sfKw9X6GrtXYGjmM3+g+Ah
# aVsfupKXNtOFu5tnLKvAH5OIjEDYV1YKmlXuBuhbYassygPFMmNgG2Ank3drEcDc
# ZhCXXqpRszNo1F6Gu5JCpQZXbOJM9Ue5PlJKtmImAYIGsw+pnHy/r5ggSYOp4g5Z
# 1oU9GhVCM3V0T9adee6OUXBk1rE4dZc/UsPlj0qoiljL+lN1A5gkmmz7k5tIObVG
# B7dJdz8J0FwXRE5qYu1AdvauVbZwGQkL1x8aK/svjEQW0NUyJ29znDHiXl5vLoRT
# jjFpshUBi2+IY+mNqbLmj24j5eT+bjDlE3HmNtLPpLcMDYqZ1H+6U6YmaiNmac2j
# RXDAaeEE/uoDMt2dArfJP7M+MDv3zzNNTINeuNEtDVgm9zwfgIUCXnDZuVtiMIIH
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
# qzqKOghif9lwY1NNje6CbaUFEMFxBmoQtB1VM1izoXBm8qGCAsswggI0AgEBMIH4
# oYHQpIHNMIHKMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4G
# A1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSUw
# IwYDVQQLExxNaWNyb3NvZnQgQW1lcmljYSBPcGVyYXRpb25zMSYwJAYDVQQLEx1U
# aGFsZXMgVFNTIEVTTjoxMkJDLUUzQUUtNzRFQjElMCMGA1UEAxMcTWljcm9zb2Z0
# IFRpbWUtU3RhbXAgU2VydmljZaIjCgEBMAcGBSsOAwIaAxUAG3F2jO4LEMVLwgKG
# XdYMN4FBgOCggYMwgYCkfjB8MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGlu
# Z3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBv
# cmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDAN
# BgkqhkiG9w0BAQUFAAIFAObe18kwIhgPMjAyMjA5MjgyMjI1MTNaGA8yMDIyMDky
# OTIyMjUxM1owdDA6BgorBgEEAYRZCgQBMSwwKjAKAgUA5t7XyQIBADAHAgEAAgIL
# ljAHAgEAAgIRpzAKAgUA5uApSQIBADA2BgorBgEEAYRZCgQCMSgwJjAMBgorBgEE
# AYRZCgMCoAowCAIBAAIDB6EgoQowCAIBAAIDAYagMA0GCSqGSIb3DQEBBQUAA4GB
# AJILMQBsQLWyHzW1wY2eCelR1HX7sXewB+I2hLn+/f/vWkysFJ8hlytVcuVlgbBG
# GZS3bb1GD4MAEPQTHkBTDtgXJ5sUDIZk4Boi8EGn84py1HC4Lg3X2l6h31+fkTMC
# O8Ejbzsy+BpcXkzKjUgUWblwBpbMqxEBH9BTsBapXNOCMYIEDTCCBAkCAQEwgZMw
# fDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1Jl
# ZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMd
# TWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTACEzMAAAGhAYVVmblUXYoAAQAA
# AaEwDQYJYIZIAWUDBAIBBQCgggFKMBoGCSqGSIb3DQEJAzENBgsqhkiG9w0BCRAB
# BDAvBgkqhkiG9w0BCQQxIgQgG0n8G3qNYJnBYsDqksuwV0LKC2+gQ6B16kHIKT+7
# VK8wgfoGCyqGSIb3DQEJEAIvMYHqMIHnMIHkMIG9BCDrCFTxOoGCaCCCjoRyBe1J
# SQrMJeCCTyErziiJ347QhDCBmDCBgKR+MHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQI
# EwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3Nv
# ZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBD
# QSAyMDEwAhMzAAABoQGFVZm5VF2KAAEAAAGhMCIEIIXAmgyNmDcVJXmsTZCmgrZi
# 72okagCyG7F7anKEPPMxMA0GCSqGSIb3DQEBCwUABIICAJkhzvzfgcr3ucE8EYTZ
# 9ssVYdH9UawjgA/0fLWlbUwpC712jFMRxrqwYdaEmiGbERQx2BKJYzVsXmnFmN6i
# aWqk0R5W0qlkTuOELHGvE5Tf0KaVdW0kLvvP8m4DdQ/E+tpKGM176NqgmNBswQW3
# p2luVcy/SAOI3MGMmXXUU2FVAyAxKaK+LjnQ6jPZoRhTsdKjlCXCJEIQMFhzwjeP
# Um8x2ux7UU8h6t0SJl4orh70dJln9LEAzl7jfFsaWr2LCNHp4veaRvcUf3KOyoVf
# wMnBPRFtdj56+4NZL89uGpDjFRmMZrzsKKUOL7o20rRtV5lrXa6WCBbffVW10ATl
# /FJsaf3o7q/MHKbSLE99jj18UqAU0VG6wMkDLM4j48YO55udeV/y0hCzwK//AEUa
# XWYkjfrx44TLL+HLZbaf8CQ2LF7yI7hBd3IEYVoAAiptv+FPgSFfvZH9aKM3kgfz
# +1wG7BhGiTnjqEt2Tk/934jciqqP3iu0rWFyGSH4s4u6AGH2AyawHUChvaWLP/op
# 8IFuUC9pCYLNgpHuFAxwudFm1BRy/smD2iHlK0UtQmnqNMzV0xyZwovWZeBNNPI0
# HdxwHrZmza69056JpXRe2IT3WX4atL/1urEej3lLfasobupJNYZAAYa8JrjW2P7I
# xQUJkdVP8MLAR+aER28jQSBe
# SIG # End signature block
