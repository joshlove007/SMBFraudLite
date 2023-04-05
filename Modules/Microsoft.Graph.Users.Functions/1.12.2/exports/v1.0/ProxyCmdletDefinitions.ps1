
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
Invoke function getAllMessages
.Description
Invoke function getAllMessages

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphChatMessage1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgalluserchatmessage
#>
function Get-MgAllUserChatMessage {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphChatMessage1])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Get1 = 'Microsoft.Graph.Users.Functions.private\Get-MgAllUserChatMessage_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Get-MgAllUserChatMessage_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function delta
.Description
Invoke function delta

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEvent1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgusercalendareventdelta
#>
function Get-MgUserCalendarEventDelta {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEvent1])]
[CmdletBinding(DefaultParameterSetName='Delta2', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delta2', Mandatory)]
    [Parameter(ParameterSetName='Delta3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='Delta3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of calendar
    ${CalendarId},

    [Parameter(ParameterSetName='DeltaViaIdentity2', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='DeltaViaIdentity3', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Delta2 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserCalendarEventDelta_Delta2';
            Delta3 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserCalendarEventDelta_Delta3';
            DeltaViaIdentity2 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserCalendarEventDelta_DeltaViaIdentity2';
            DeltaViaIdentity3 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserCalendarEventDelta_DeltaViaIdentity3';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function delta
.Description
Invoke function delta

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphChatMessage1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mguserchatmessagedelta
#>
function Get-MgUserChatMessageDelta {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphChatMessage1])]
[CmdletBinding(DefaultParameterSetName='Delta', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delta', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of chat
    ${ChatId},

    [Parameter(ParameterSetName='Delta', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeltaViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Delta = 'Microsoft.Graph.Users.Functions.private\Get-MgUserChatMessageDelta_Delta';
            DeltaViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserChatMessageDelta_DeltaViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function delta
.Description
Invoke function delta

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphChatMessage1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mguserchatmessagereplydelta
#>
function Get-MgUserChatMessageReplyDelta {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphChatMessage1])]
[CmdletBinding(DefaultParameterSetName='Delta1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delta1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of chat
    ${ChatId},

    [Parameter(ParameterSetName='Delta1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of chatMessage
    ${ChatMessageId},

    [Parameter(ParameterSetName='Delta1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeltaViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Delta1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserChatMessageReplyDelta_Delta1';
            DeltaViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserChatMessageReplyDelta_DeltaViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function delta
.Description
Invoke function delta

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphContact
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgusercontactdelta
#>
function Get-MgUserContactDelta {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphContact])]
[CmdletBinding(DefaultParameterSetName='Delta1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delta1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeltaViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Delta1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserContactDelta_Delta1';
            DeltaViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserContactDelta_DeltaViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function delta
.Description
Invoke function delta

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphContact
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgusercontactfolderchildfoldercontactdelta
#>
function Get-MgUserContactFolderChildFolderContactDelta {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphContact])]
[CmdletBinding(DefaultParameterSetName='Delta1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delta1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of contactFolder
    ${ContactFolderId},

    [Parameter(ParameterSetName='Delta1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of contactFolder
    ${ContactFolderId1},

    [Parameter(ParameterSetName='Delta1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeltaViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Delta1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserContactFolderChildFolderContactDelta_Delta1';
            DeltaViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserContactFolderChildFolderContactDelta_DeltaViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function delta
.Description
Invoke function delta

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphContactFolder
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgusercontactfolderchildfolderdelta
#>
function Get-MgUserContactFolderChildFolderDelta {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphContactFolder])]
[CmdletBinding(DefaultParameterSetName='Delta1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delta1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of contactFolder
    ${ContactFolderId},

    [Parameter(ParameterSetName='Delta1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeltaViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Delta1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserContactFolderChildFolderDelta_Delta1';
            DeltaViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserContactFolderChildFolderDelta_DeltaViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function delta
.Description
Invoke function delta

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphContact
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgusercontactfoldercontactdelta
#>
function Get-MgUserContactFolderContactDelta {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphContact])]
[CmdletBinding(DefaultParameterSetName='Delta1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delta1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of contactFolder
    ${ContactFolderId},

    [Parameter(ParameterSetName='Delta1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeltaViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Delta1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserContactFolderContactDelta_Delta1';
            DeltaViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserContactFolderContactDelta_DeltaViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function delta
.Description
Invoke function delta
.Example
Import-Module Microsoft.Graph.Users.Functions
# A UPN can also be used as -UserId.
Get-MgUserContactFolderDelta -UserId $userId

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphContactFolder
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgusercontactfolderdelta
#>
function Get-MgUserContactFolderDelta {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphContactFolder])]
[CmdletBinding(DefaultParameterSetName='Delta1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delta1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeltaViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Delta1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserContactFolderDelta_Delta1';
            DeltaViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserContactFolderDelta_DeltaViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function delta
.Description
Invoke function delta
.Example
Import-Module Microsoft.Graph.Users.Functions
Get-MgUserDelta

.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUser
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mguserdelta
#>
function Get-MgUserDelta {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUser])]
[CmdletBinding(DefaultParameterSetName='Delta', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Delta = 'Microsoft.Graph.Users.Functions.private\Get-MgUserDelta_Delta';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function getActivitiesByInterval
.Description
Invoke function getActivitiesByInterval

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemActivityStat
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mguserdriveitemactivitybyinterval
#>
function Get-MgUserDriveItemActivityByInterval {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemActivityStat])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='Get2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='Get2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of driveItem
    ${DriveItemId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='Get2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='Get2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: endDateTime='{endDateTime}'
    ${EndDateTime},

    [Parameter(ParameterSetName='Get2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: interval='{interval}'
    ${Interval},

    [Parameter(ParameterSetName='Get2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: startDateTime='{startDateTime}'
    ${StartDateTime},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity2', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Get1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserDriveItemActivityByInterval_Get1';
            Get2 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserDriveItemActivityByInterval_Get2';
            GetViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserDriveItemActivityByInterval_GetViaIdentity1';
            GetViaIdentity2 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserDriveItemActivityByInterval_GetViaIdentity2';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function delta
.Description
Invoke function delta

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDriveItem
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mguserdriveitemdelta
#>
function Get-MgUserDriveItemDelta {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDriveItem])]
[CmdletBinding(DefaultParameterSetName='Delta2', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delta2', Mandatory)]
    [Parameter(ParameterSetName='Delta3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Delta2', Mandatory)]
    [Parameter(ParameterSetName='Delta3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of driveItem
    ${DriveItemId},

    [Parameter(ParameterSetName='Delta2', Mandatory)]
    [Parameter(ParameterSetName='Delta3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='Delta3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: token='{token}'
    ${Token},

    [Parameter(ParameterSetName='DeltaViaIdentity2', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='DeltaViaIdentity3', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Delta2 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserDriveItemDelta_Delta2';
            Delta3 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserDriveItemDelta_Delta3';
            DeltaViaIdentity2 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserDriveItemDelta_DeltaViaIdentity2';
            DeltaViaIdentity3 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserDriveItemDelta_DeltaViaIdentity3';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function getActivitiesByInterval
.Description
Invoke function getActivitiesByInterval

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemActivityStat
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mguserdriveitemlistitemactivitybyinterval
#>
function Get-MgUserDriveItemListItemActivityByInterval {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemActivityStat])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='Get2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='Get2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of driveItem
    ${DriveItemId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='Get2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='Get2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: endDateTime='{endDateTime}'
    ${EndDateTime},

    [Parameter(ParameterSetName='Get2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: interval='{interval}'
    ${Interval},

    [Parameter(ParameterSetName='Get2', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: startDateTime='{startDateTime}'
    ${StartDateTime},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity2', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Get1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserDriveItemListItemActivityByInterval_Get1';
            Get2 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserDriveItemListItemActivityByInterval_Get2';
            GetViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserDriveItemListItemActivityByInterval_GetViaIdentity1';
            GetViaIdentity2 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserDriveItemListItemActivityByInterval_GetViaIdentity2';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function getCompatibleHubContentTypes
.Description
Invoke function getCompatibleHubContentTypes

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphContentType
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mguserdrivelistcontenttypecompatiblehubcontenttype
#>
function Get-MgUserDriveListContentTypeCompatibleHubContentType {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphContentType])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Get = 'Microsoft.Graph.Users.Functions.private\Get-MgUserDriveListContentTypeCompatibleHubContentType_Get';
            GetViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserDriveListContentTypeCompatibleHubContentType_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function getActivitiesByInterval
.Description
Invoke function getActivitiesByInterval

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemActivityStat
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mguserdrivelistitemactivitybyinterval
#>
function Get-MgUserDriveListItemActivityByInterval {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemActivityStat])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of listItem
    ${ListItemId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: endDateTime='{endDateTime}'
    ${EndDateTime},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: interval='{interval}'
    ${Interval},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: startDateTime='{startDateTime}'
    ${StartDateTime},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Get = 'Microsoft.Graph.Users.Functions.private\Get-MgUserDriveListItemActivityByInterval_Get';
            Get1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserDriveListItemActivityByInterval_Get1';
            GetViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserDriveListItemActivityByInterval_GetViaIdentity';
            GetViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserDriveListItemActivityByInterval_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function getActivitiesByInterval
.Description
Invoke function getActivitiesByInterval

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemActivityStat
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mguserdriverootactivitybyinterval
#>
function Get-MgUserDriveRootActivityByInterval {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemActivityStat])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: endDateTime='{endDateTime}'
    ${EndDateTime},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: interval='{interval}'
    ${Interval},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: startDateTime='{startDateTime}'
    ${StartDateTime},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Get = 'Microsoft.Graph.Users.Functions.private\Get-MgUserDriveRootActivityByInterval_Get';
            Get1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserDriveRootActivityByInterval_Get1';
            GetViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserDriveRootActivityByInterval_GetViaIdentity';
            GetViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserDriveRootActivityByInterval_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function delta
.Description
Invoke function delta

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDriveItem
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mguserdriverootdelta
#>
function Get-MgUserDriveRootDelta {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDriveItem])]
[CmdletBinding(DefaultParameterSetName='Delta', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delta', Mandatory)]
    [Parameter(ParameterSetName='Delta1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Delta', Mandatory)]
    [Parameter(ParameterSetName='Delta1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='Delta1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: token='{token}'
    ${Token},

    [Parameter(ParameterSetName='DeltaViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='DeltaViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Delta = 'Microsoft.Graph.Users.Functions.private\Get-MgUserDriveRootDelta_Delta';
            Delta1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserDriveRootDelta_Delta1';
            DeltaViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserDriveRootDelta_DeltaViaIdentity';
            DeltaViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserDriveRootDelta_DeltaViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function getActivitiesByInterval
.Description
Invoke function getActivitiesByInterval

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemActivityStat
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mguserdriverootlistitemactivitybyinterval
#>
function Get-MgUserDriveRootListItemActivityByInterval {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphItemActivityStat])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: endDateTime='{endDateTime}'
    ${EndDateTime},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: interval='{interval}'
    ${Interval},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: startDateTime='{startDateTime}'
    ${StartDateTime},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Get = 'Microsoft.Graph.Users.Functions.private\Get-MgUserDriveRootListItemActivityByInterval_Get';
            Get1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserDriveRootListItemActivityByInterval_Get1';
            GetViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserDriveRootListItemActivityByInterval_GetViaIdentity';
            GetViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Get-MgUserDriveRootListItemActivityByInterval_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function delta
.Description
Invoke function delta

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEvent1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgusereventdelta
#>
function Get-MgUserEventDelta {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEvent1])]
[CmdletBinding(DefaultParameterSetName='Delta', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delta', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeltaViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Delta = 'Microsoft.Graph.Users.Functions.private\Get-MgUserEventDelta_Delta';
            DeltaViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserEventDelta_DeltaViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function delta
.Description
Invoke function delta

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEvent1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgusereventinstancedelta
#>
function Get-MgUserEventInstanceDelta {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphEvent1])]
[CmdletBinding(DefaultParameterSetName='Delta', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delta', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of event
    ${EventId},

    [Parameter(ParameterSetName='Delta', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeltaViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Delta = 'Microsoft.Graph.Users.Functions.private\Get-MgUserEventInstanceDelta_Delta';
            DeltaViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserEventInstanceDelta_DeltaViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function delta
.Description
Invoke function delta

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgusermailfolderchildfolderdelta
#>
function Get-MgUserMailFolderChildFolderDelta {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder])]
[CmdletBinding(DefaultParameterSetName='Delta', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delta', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Delta', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeltaViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Delta = 'Microsoft.Graph.Users.Functions.private\Get-MgUserMailFolderChildFolderDelta_Delta';
            DeltaViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserMailFolderChildFolderDelta_DeltaViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function delta
.Description
Invoke function delta

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgusermailfolderchildfoldermessagedelta
#>
function Get-MgUserMailFolderChildFolderMessageDelta {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage])]
[CmdletBinding(DefaultParameterSetName='Delta', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delta', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Delta', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId1},

    [Parameter(ParameterSetName='Delta', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeltaViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Delta = 'Microsoft.Graph.Users.Functions.private\Get-MgUserMailFolderChildFolderMessageDelta_Delta';
            DeltaViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserMailFolderChildFolderMessageDelta_DeltaViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function delta
.Description
Invoke function delta

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgusermailfolderdelta
#>
function Get-MgUserMailFolderDelta {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMailFolder])]
[CmdletBinding(DefaultParameterSetName='Delta', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delta', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeltaViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Delta = 'Microsoft.Graph.Users.Functions.private\Get-MgUserMailFolderDelta_Delta';
            DeltaViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserMailFolderDelta_DeltaViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function delta
.Description
Invoke function delta
.Example
Import-Module Microsoft.Graph.Users.Functions
# A UPN can also be used as -UserId.
Get-MgUserMailFolderMessageDelta -UserId $userId -MailFolderId $mailFolderId

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgusermailfoldermessagedelta
#>
function Get-MgUserMailFolderMessageDelta {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage])]
[CmdletBinding(DefaultParameterSetName='Delta', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delta', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of mailFolder
    ${MailFolderId},

    [Parameter(ParameterSetName='Delta', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeltaViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Delta = 'Microsoft.Graph.Users.Functions.private\Get-MgUserMailFolderMessageDelta_Delta';
            DeltaViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserMailFolderMessageDelta_DeltaViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Gets diagnostics validation status for a given user.
.Description
Gets diagnostics validation status for a given user.

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphManagedAppDiagnosticStatus
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgusermanagedappdiagnosticstatuses
#>
function Get-MgUserManagedAppDiagnosticStatuses {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphManagedAppDiagnosticStatus])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Get = 'Microsoft.Graph.Users.Functions.private\Get-MgUserManagedAppDiagnosticStatuses_Get';
            GetViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserManagedAppDiagnosticStatuses_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Gets app restrictions for a given user.
.Description
Gets app restrictions for a given user.

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphManagedAppPolicy1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgusermanagedapppolicy
#>
function Get-MgUserManagedAppPolicy {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphManagedAppPolicy1])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Get = 'Microsoft.Graph.Users.Functions.private\Get-MgUserManagedAppPolicy_Get';
            GetViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserManagedAppPolicy_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function delta
.Description
Invoke function delta

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgusermessagedelta
#>
function Get-MgUserMessageDelta {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessage])]
[CmdletBinding(DefaultParameterSetName='Delta', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delta', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeltaViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Delta = 'Microsoft.Graph.Users.Functions.private\Get-MgUserMessageDelta_Delta';
            DeltaViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserMessageDelta_DeltaViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function getRecentNotebooks
.Description
Invoke function getRecentNotebooks

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecentNotebook
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mguseronenoterecentnotebook
#>
function Get-MgUserOnenoteRecentNotebook {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRecentNotebook])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.Management.Automation.SwitchParameter]
    # Usage: includePersonalNotebooks={includePersonalNotebooks}
    ${IncludePersonalNotebooks},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Get = 'Microsoft.Graph.Users.Functions.private\Get-MgUserOnenoteRecentNotebook_Get';
            GetViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserOnenoteRecentNotebook_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function delta
.Description
Invoke function delta

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTodoTaskList
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgusertodolistdelta
#>
function Get-MgUserTodoListDelta {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTodoTaskList])]
[CmdletBinding(DefaultParameterSetName='Delta', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delta', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeltaViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Delta = 'Microsoft.Graph.Users.Functions.private\Get-MgUserTodoListDelta_Delta';
            DeltaViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserTodoListDelta_DeltaViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function delta
.Description
Invoke function delta

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTodoTask
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/get-mgusertodolisttaskdelta
#>
function Get-MgUserTodoListTaskDelta {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTodoTask])]
[CmdletBinding(DefaultParameterSetName='Delta', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delta', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of todoTaskList
    ${TodoTaskListId},

    [Parameter(ParameterSetName='Delta', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='DeltaViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Delta = 'Microsoft.Graph.Users.Functions.private\Get-MgUserTodoListTaskDelta_Delta';
            DeltaViaIdentity = 'Microsoft.Graph.Users.Functions.private\Get-MgUserTodoListTaskDelta_DeltaViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function allowedCalendarSharingRoles
.Description
Invoke function allowedCalendarSharingRoles

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
System.String
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgcalendarusercalendarallowedcalendarsharingroles
#>
function Invoke-MgCalendarUserCalendarAllowedCalendarSharingRoles {
[OutputType([System.String])]
[CmdletBinding(DefaultParameterSetName='Calendar2', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Calendar2', Mandatory)]
    [Parameter(ParameterSetName='Calendar3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: User='{User}'
    ${User},

    [Parameter(ParameterSetName='Calendar2', Mandatory)]
    [Parameter(ParameterSetName='Calendar3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='Calendar3', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of calendar
    ${CalendarId},

    [Parameter(ParameterSetName='CalendarViaIdentity2', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CalendarViaIdentity3', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Calendar2 = 'Microsoft.Graph.Users.Functions.private\Invoke-MgCalendarUserCalendarAllowedCalendarSharingRoles_Calendar2';
            Calendar3 = 'Microsoft.Graph.Users.Functions.private\Invoke-MgCalendarUserCalendarAllowedCalendarSharingRoles_Calendar3';
            CalendarViaIdentity2 = 'Microsoft.Graph.Users.Functions.private\Invoke-MgCalendarUserCalendarAllowedCalendarSharingRoles_CalendarViaIdentity2';
            CalendarViaIdentity3 = 'Microsoft.Graph.Users.Functions.private\Invoke-MgCalendarUserCalendarAllowedCalendarSharingRoles_CalendarViaIdentity3';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function sharedWithMe
.Description
Invoke function sharedWithMe

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDriveItem
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mggraphuserdrive
#>
function Invoke-MgGraphUserDrive {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDriveItem])]
[CmdletBinding(DefaultParameterSetName='Graph', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Graph', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Graph', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='GraphViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Graph = 'Microsoft.Graph.Users.Functions.private\Invoke-MgGraphUserDrive_Graph';
            GraphViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgGraphUserDrive_GraphViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function preview
.Description
Invoke function preview

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnenotePagePreview
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgpreviewuseronenotepage
#>
function Invoke-MgPreviewUserOnenotePage {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphOnenotePagePreview])]
[CmdletBinding(DefaultParameterSetName='Preview', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Preview', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of onenotePage
    ${OnenotePageId},

    [Parameter(ParameterSetName='Preview', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='PreviewViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Preview = 'Microsoft.Graph.Users.Functions.private\Invoke-MgPreviewUserOnenotePage_Preview';
            PreviewViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgPreviewUserOnenotePage_PreviewViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function recent
.Description
Invoke function recent
.Example
Import-Module Microsoft.Graph.Users.Functions
# A UPN can also be used as -UserId.
Invoke-MgRecentUserActivity -UserId $userId

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserActivity1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgrecentuseractivity
#>
function Invoke-MgRecentUserActivity {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserActivity1])]
[CmdletBinding(DefaultParameterSetName='Recent1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Recent1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RecentViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Recent1 = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRecentUserActivity_Recent1';
            RecentViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRecentUserActivity_RecentViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function recent
.Description
Invoke function recent

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDriveItem
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgrecentuserdrive
#>
function Invoke-MgRecentUserDrive {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDriveItem])]
[CmdletBinding(DefaultParameterSetName='Recent', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Recent', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Recent', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='RecentViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Recent = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRecentUserDrive_Recent';
            RecentViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgRecentUserDrive_RecentViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function supportedLanguages
.Description
Invoke function supportedLanguages
.Example
Import-Module Microsoft.Graph.Users.Functions
# A UPN can also be used as -UserId.
Invoke-MgSupportedUserOutlookLanguage -UserId $userId

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphLocaleInfo
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgsupporteduseroutlooklanguage
#>
function Invoke-MgSupportedUserOutlookLanguage {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphLocaleInfo])]
[CmdletBinding(DefaultParameterSetName='Supported', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Supported', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='SupportedViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Supported = 'Microsoft.Graph.Users.Functions.private\Invoke-MgSupportedUserOutlookLanguage_Supported';
            SupportedViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgSupportedUserOutlookLanguage_SupportedViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function supportedTimeZones
.Description
Invoke function supportedTimeZones
.Example
Import-Module Microsoft.Graph.Users.Functions
# A UPN can also be used as -UserId.
Invoke-MgTimeUserOutlook -UserId $userId

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTimeZoneInformation
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgtimeuseroutlook
#>
function Invoke-MgTimeUserOutlook {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphTimeZoneInformation])]
[CmdletBinding(DefaultParameterSetName='Time', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Time', Mandatory)]
    [Parameter(ParameterSetName='Time1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='Time1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: TimeZoneStandard='{TimeZoneStandard}'
    ${TimeZoneStandard},

    [Parameter(ParameterSetName='TimeViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='TimeViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Time = 'Microsoft.Graph.Users.Functions.private\Invoke-MgTimeUserOutlook_Time';
            Time1 = 'Microsoft.Graph.Users.Functions.private\Invoke-MgTimeUserOutlook_Time1';
            TimeViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgTimeUserOutlook_TimeViaIdentity';
            TimeViaIdentity1 = 'Microsoft.Graph.Users.Functions.private\Invoke-MgTimeUserOutlook_TimeViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function reminderView
.Description
Invoke function reminderView

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphReminder1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/invoke-mgviewuserreminder
#>
function Invoke-MgViewUserReminder {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphReminder1])]
[CmdletBinding(DefaultParameterSetName='View', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='View', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: EndDateTime='{EndDateTime}'
    ${EndDateTime},

    [Parameter(ParameterSetName='View', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: StartDateTime='{StartDateTime}'
    ${StartDateTime},

    [Parameter(ParameterSetName='View', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='ViewViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            View = 'Microsoft.Graph.Users.Functions.private\Invoke-MgViewUserReminder_View';
            ViewViaIdentity = 'Microsoft.Graph.Users.Functions.private\Invoke-MgViewUserReminder_ViewViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function search
.Description
Invoke function search

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDriveItem
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/search-mguserdriveitem
#>
function Search-MgUserDriveItem {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDriveItem])]
[CmdletBinding(DefaultParameterSetName='Search', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Search', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Search', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of driveItem
    ${DriveItemId},

    [Parameter(ParameterSetName='Search', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: q='{q}'
    ${Q},

    [Parameter(ParameterSetName='Search', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='SearchViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Search = 'Microsoft.Graph.Users.Functions.private\Search-MgUserDriveItem_Search';
            SearchViaIdentity = 'Microsoft.Graph.Users.Functions.private\Search-MgUserDriveItem_SearchViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function search
.Description
Invoke function search

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDriveItem
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/search-mguserdriveroot
#>
function Search-MgUserDriveRoot {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDriveItem])]
[CmdletBinding(DefaultParameterSetName='Search', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Search', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Search', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: q='{q}'
    ${Q},

    [Parameter(ParameterSetName='Search', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='SearchViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Search = 'Microsoft.Graph.Users.Functions.private\Search-MgUserDriveRoot_Search';
            SearchViaIdentity = 'Microsoft.Graph.Users.Functions.private\Search-MgUserDriveRoot_SearchViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function search
.Description
Invoke function search

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDriveItem
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/search-mguserdrive
#>
function Search-MgUserDrive {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphDriveItem])]
[CmdletBinding(DefaultParameterSetName='Search', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Search', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Search', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # Usage: q='{q}'
    ${Q},

    [Parameter(ParameterSetName='Search', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='SearchViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Search = 'Microsoft.Graph.Users.Functions.private\Search-MgUserDrive_Search';
            SearchViaIdentity = 'Microsoft.Graph.Users.Functions.private\Search-MgUserDrive_SearchViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function isPublished
.Description
Invoke function isPublished

.Inputs
Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.users.functions/test-mguserdrivelistcontenttypepublished
#>
function Test-MgUserDriveListContentTypePublished {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Is', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Is', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of contentType
    ${ContentTypeId},

    [Parameter(ParameterSetName='Is', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of drive
    ${DriveId},

    [Parameter(ParameterSetName='Is', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of user
    ${UserId},

    [Parameter(ParameterSetName='IsViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.IUsersFunctionsIdentity]
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
            Is = 'Microsoft.Graph.Users.Functions.private\Test-MgUserDriveListContentTypePublished_Is';
            IsViaIdentity = 'Microsoft.Graph.Users.Functions.private\Test-MgUserDriveListContentTypePublished_IsViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
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
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCCfsTtkn5bdaUy0
# bW603Ul0tymHu1SU/m0QaCz09YDAaqCCDYEwggX/MIID56ADAgECAhMzAAACzI61
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
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgpHFqntjC
# B+xmJ6qIZBMatN2OtxG+8qvCNi5iZxfX4HUwQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQBXp01ZbBL4K8l+UA6KZ0Y5yHUnIvKM0e2cA+V7EQPo
# 6mGnDNL2qmMWy+UcWOXeke1WFjGU3wBP37h3NHvnzCjFqIEh8VmZETKHWzcMfsfP
# UC3WFYQkZ/xJAxNmTG3b6kugpDScleEv8fuBQ8cIMSGkWltqj2JG47nwqu7GaTnm
# yC2jCwZH9G1LdLt7ty7BinEt1vOnzcNy5eo+PSmO1sJdVcbeHv2HiSOVPu72B9pb
# YHenLRd8coa516WBAWGzBARL26Yhb9CT6He8nDwpxPc2YWHTR5qc0zHqFaw3gTTo
# v8mC83e2OLTboQzyQZ+s/oEbf+RIQ6naz+Dyo67EL3ddoYIXADCCFvwGCisGAQQB
# gjcDAwExghbsMIIW6AYJKoZIhvcNAQcCoIIW2TCCFtUCAQMxDzANBglghkgBZQME
# AgEFADCCAVEGCyqGSIb3DQEJEAEEoIIBQASCATwwggE4AgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEIDz2hPi42k8qR2ZcEVtZNjJKHi2fnXs4jv3fwGsG
# P1gJAgZjI1S3jwEYEzIwMjIwOTI4MTkzMDM1LjI0MVowBIACAfSggdCkgc0wgcox
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
# CRABBDAvBgkqhkiG9w0BCQQxIgQg2A+EHGzP+zfmvAXdb9CUnBdFa3623EQIT5e7
# ZrvUNwIwgfoGCyqGSIb3DQEJEAIvMYHqMIHnMIHkMIG9BCB2BNYC+B0105J2Ry6C
# fnZ0JA8JflZQQ6sLpHI3LbK9kDCBmDCBgKR+MHwxCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1w
# IFBDQSAyMDEwAhMzAAABlklbYuEv3fdPAAEAAAGWMCIEILzuhNIEqPeBqFiJuLYD
# WBIxKsX/L9oCD49BLWidg91eMA0GCSqGSIb3DQEBCwUABIICAHdqmUUvcQboxf0p
# +ovTPq4LAOqZnU/sUln/Ft3WoI5OespGtbSreR9f+DsvLNfyLrPQ+5Tr67JrzWc4
# eQAbAGRHY/9+sV6hC5GeRaWm1gYDN3uOgKk3nRfl4iQrKTFcu67NrDouz2TiLZrE
# t/dIs4b+D4tpH73FK76AMujA48oC4PSd0So1q84jNTsw8dbpDW2ulZ2LUYRYQzWH
# V8yYCoApf8RPTUgRDZdujieTLFUdmlwlMO5C4VLSNpO7L6jOL/2Jv8EwytzqgSpN
# AVHl6sCSuzonVkzFqN7S1v47MkNl9e+M2wFFt9ZRPsznDmzkzrj/ORNk5rVMmwso
# F98oE4jf18BNmGz9kOyoOoMS9J9Z8ANUA9H1HUxJdXHNmPv8dN5Wfo0zuMnGO1bW
# Ept5eHlvm/jdUmHq2efZQ/HqQPfJyHbCIriqcjocCcOL98cQs01IPom2Bn18fN3A
# uPNNwZKWKfvF78JAdX7EjrStsZdd1mwkVwg8W/7CcVMZotIFSI2Uspw84y9+44Cu
# lJxAO1CacNJDPA1UMv52tU1LGAnqVMpkax4DdWNB3YcmfCMxS/7619w6D/Bw4zdO
# 58ljwfleh+t3cDrQiD3cwJ7en1u+ct8vhAGVPNHbdrUvnfe/Cw74hlrXqAH1e7N4
# emepMnNfu5AdWlRNnz1XuKJPeNro
# SIG # End signature block
