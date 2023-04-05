
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
Invoke action applyHold
.Description
Invoke action applyHold
.Example
Import-Module Microsoft.Graph.Security
Add-MgSecurityCaseEdiscoveryCaseCustodianHold -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryCustodianId $ediscoveryCustodianId
.Example
Import-Module Microsoft.Graph.Security
Add-MgSecurityCaseEdiscoveryCaseCustodianHold -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryCustodianId $ediscoveryCustodianId

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths2560XySecurityCasesEdiscoverycasesEdiscoverycaseIdCustodiansMicrosoftGraphSecurityApplyholdPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/add-mgsecuritycaseediscoverycasecustodianhold
#>
function Add-MgSecurityCaseEdiscoveryCaseCustodianHold {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='ApplyExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Apply', Mandatory)]
    [Parameter(ParameterSetName='Apply1', Mandatory)]
    [Parameter(ParameterSetName='ApplyExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Apply', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCustodian
    ${EdiscoveryCustodianId},

    [Parameter(ParameterSetName='ApplyViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ApplyViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ApplyViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Apply1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ApplyViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths2560XySecurityCasesEdiscoverycasesEdiscoverycaseIdCustodiansMicrosoftGraphSecurityApplyholdPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='ApplyExpanded')]
    [Parameter(ParameterSetName='ApplyViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='ApplyExpanded')]
    [Parameter(ParameterSetName='ApplyViaIdentityExpanded')]
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
            Apply = 'Microsoft.Graph.Security.private\Add-MgSecurityCaseEdiscoveryCaseCustodianHold_Apply';
            Apply1 = 'Microsoft.Graph.Security.private\Add-MgSecurityCaseEdiscoveryCaseCustodianHold_Apply1';
            ApplyExpanded = 'Microsoft.Graph.Security.private\Add-MgSecurityCaseEdiscoveryCaseCustodianHold_ApplyExpanded';
            ApplyViaIdentity = 'Microsoft.Graph.Security.private\Add-MgSecurityCaseEdiscoveryCaseCustodianHold_ApplyViaIdentity';
            ApplyViaIdentity1 = 'Microsoft.Graph.Security.private\Add-MgSecurityCaseEdiscoveryCaseCustodianHold_ApplyViaIdentity1';
            ApplyViaIdentityExpanded = 'Microsoft.Graph.Security.private\Add-MgSecurityCaseEdiscoveryCaseCustodianHold_ApplyViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke action applyHold
.Description
Invoke action applyHold
.Example
Import-Module Microsoft.Graph.Security
Add-MgSecurityCaseEdiscoveryCaseNoncustodialDataSourceHold -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryNoncustodialDataSourceId $ediscoveryNoncustodialDataSourceId
.Example
Import-Module Microsoft.Graph.Security
Add-MgSecurityCaseEdiscoveryCaseNoncustodialDataSourceHold -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryNoncustodialDataSourceId $ediscoveryNoncustodialDataSourceId

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsUr2Sc1SecurityCasesEdiscoverycasesEdiscoverycaseIdNoncustodialdatasourcesMicrosoftGraphSecurityApplyholdPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/add-mgsecuritycaseediscoverycasenoncustodialdatasourcehold
#>
function Add-MgSecurityCaseEdiscoveryCaseNoncustodialDataSourceHold {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='ApplyExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Apply', Mandatory)]
    [Parameter(ParameterSetName='Apply1', Mandatory)]
    [Parameter(ParameterSetName='ApplyExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Apply', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryNoncustodialDataSource
    ${EdiscoveryNoncustodialDataSourceId},

    [Parameter(ParameterSetName='ApplyViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ApplyViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ApplyViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Apply1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ApplyViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsUr2Sc1SecurityCasesEdiscoverycasesEdiscoverycaseIdNoncustodialdatasourcesMicrosoftGraphSecurityApplyholdPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='ApplyExpanded')]
    [Parameter(ParameterSetName='ApplyViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='ApplyExpanded')]
    [Parameter(ParameterSetName='ApplyViaIdentityExpanded')]
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
            Apply = 'Microsoft.Graph.Security.private\Add-MgSecurityCaseEdiscoveryCaseNoncustodialDataSourceHold_Apply';
            Apply1 = 'Microsoft.Graph.Security.private\Add-MgSecurityCaseEdiscoveryCaseNoncustodialDataSourceHold_Apply1';
            ApplyExpanded = 'Microsoft.Graph.Security.private\Add-MgSecurityCaseEdiscoveryCaseNoncustodialDataSourceHold_ApplyExpanded';
            ApplyViaIdentity = 'Microsoft.Graph.Security.private\Add-MgSecurityCaseEdiscoveryCaseNoncustodialDataSourceHold_ApplyViaIdentity';
            ApplyViaIdentity1 = 'Microsoft.Graph.Security.private\Add-MgSecurityCaseEdiscoveryCaseNoncustodialDataSourceHold_ApplyViaIdentity1';
            ApplyViaIdentityExpanded = 'Microsoft.Graph.Security.private\Add-MgSecurityCaseEdiscoveryCaseNoncustodialDataSourceHold_ApplyViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke action applyTags
.Description
Invoke action applyTags
.Example
Import-Module Microsoft.Graph.Security
$params = @{
	TagsToAdd = @(
		@{
			Id = "d3d99dc704a74801b792b3e1e722aa0d"
		}
	)
}
Add-MgSecurityCaseEdiscoveryCaseReviewSetQueryTag -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryReviewSetId $ediscoveryReviewSetId -EdiscoveryReviewSetQueryId $ediscoveryReviewSetQueryId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsA2Ja7OSecurityCasesEdiscoverycasesEdiscoverycaseIdReviewsetsEdiscoveryreviewsetIdQueriesEdiscoveryreviewsetqueryIdMicrosoftGraphSecurityApplytagsPostRequestbodyContentApplicationJsonSchema1
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/add-mgsecuritycaseediscoverycasereviewsetquerytag
#>
function Add-MgSecurityCaseEdiscoveryCaseReviewSetQueryTag {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='ApplyExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Apply1', Mandatory)]
    [Parameter(ParameterSetName='ApplyExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Apply1', Mandatory)]
    [Parameter(ParameterSetName='ApplyExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryReviewSet
    ${EdiscoveryReviewSetId},

    [Parameter(ParameterSetName='Apply1', Mandatory)]
    [Parameter(ParameterSetName='ApplyExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryReviewSetQuery
    ${EdiscoveryReviewSetQueryId},

    [Parameter(ParameterSetName='ApplyViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ApplyViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Apply1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='ApplyViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsA2Ja7OSecurityCasesEdiscoverycasesEdiscoverycaseIdReviewsetsEdiscoveryreviewsetIdQueriesEdiscoveryreviewsetqueryIdMicrosoftGraphSecurityApplytagsPostRequestbodyContentApplicationJsonSchema1]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='ApplyExpanded1')]
    [Parameter(ParameterSetName='ApplyViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='ApplyExpanded1')]
    [Parameter(ParameterSetName='ApplyViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewTag1[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for TAGSTOADD properties and create a hash table.
    ${TagsToAdd},

    [Parameter(ParameterSetName='ApplyExpanded1')]
    [Parameter(ParameterSetName='ApplyViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewTag1[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for TAGSTOREMOVE properties and create a hash table.
    ${TagsToRemove},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Apply1 = 'Microsoft.Graph.Security.private\Add-MgSecurityCaseEdiscoveryCaseReviewSetQueryTag_Apply1';
            ApplyExpanded1 = 'Microsoft.Graph.Security.private\Add-MgSecurityCaseEdiscoveryCaseReviewSetQueryTag_ApplyExpanded1';
            ApplyViaIdentity1 = 'Microsoft.Graph.Security.private\Add-MgSecurityCaseEdiscoveryCaseReviewSetQueryTag_ApplyViaIdentity1';
            ApplyViaIdentityExpanded1 = 'Microsoft.Graph.Security.private\Add-MgSecurityCaseEdiscoveryCaseReviewSetQueryTag_ApplyViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke action addToReviewSet
.Description
Invoke action addToReviewSet
.Example
Import-Module Microsoft.Graph.Security
$params = @{
	Search = @{
		Id = "c17e91d6-6bc0-4ecb-b388-269ea3d4ffb7"
	}
	AdditionalDataOptions = "linkedFiles"
}
Add-MgSecurityCaseEdiscoveryCaseReviewSetToReviewSet -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryReviewSetId $ediscoveryReviewSetId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IPathsZszldxSecurityCasesEdiscoverycasesEdiscoverycaseIdReviewsetsEdiscoveryreviewsetIdMicrosoftGraphSecurityAddtoreviewsetPostRequestbodyContentApplicationJsonSchema1
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/add-mgsecuritycaseediscoverycasereviewsettoreviewset
#>
function Add-MgSecurityCaseEdiscoveryCaseReviewSetToReviewSet {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='AddExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Add1', Mandatory)]
    [Parameter(ParameterSetName='AddExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Add1', Mandatory)]
    [Parameter(ParameterSetName='AddExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryReviewSet
    ${EdiscoveryReviewSetId},

    [Parameter(ParameterSetName='AddViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='AddViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Add1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='AddViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPathsZszldxSecurityCasesEdiscoverycasesEdiscoverycaseIdReviewsetsEdiscoveryreviewsetIdMicrosoftGraphSecurityAddtoreviewsetPostRequestbodyContentApplicationJsonSchema1]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='AddExpanded1')]
    [Parameter(ParameterSetName='AddViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # additionalDataOptions
    ${AdditionalDataOptions},

    [Parameter(ParameterSetName='AddExpanded1')]
    [Parameter(ParameterSetName='AddViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='AddExpanded1')]
    [Parameter(ParameterSetName='AddViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoverySearch1]
    # ediscoverySearch
    # To construct, please use Get-Help -Online and see NOTES section for SEARCH properties and create a hash table.
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
            Add1 = 'Microsoft.Graph.Security.private\Add-MgSecurityCaseEdiscoveryCaseReviewSetToReviewSet_Add1';
            AddExpanded1 = 'Microsoft.Graph.Security.private\Add-MgSecurityCaseEdiscoveryCaseReviewSetToReviewSet_AddExpanded1';
            AddViaIdentity1 = 'Microsoft.Graph.Security.private\Add-MgSecurityCaseEdiscoveryCaseReviewSetToReviewSet_AddViaIdentity1';
            AddViaIdentityExpanded1 = 'Microsoft.Graph.Security.private\Add-MgSecurityCaseEdiscoveryCaseReviewSetToReviewSet_AddViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke action close
.Description
Invoke action close
.Example
Import-Module Microsoft.Graph.Security
Close-MgSecurityCaseEdiscoveryCase -EdiscoveryCaseId $ediscoveryCaseId

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/close-mgsecuritycaseediscoverycase
#>
function Close-MgSecurityCaseEdiscoveryCase {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Close', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Close', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='CloseViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Close = 'Microsoft.Graph.Security.private\Close-MgSecurityCaseEdiscoveryCase_Close';
            CloseViaIdentity = 'Microsoft.Graph.Security.private\Close-MgSecurityCaseEdiscoveryCase_CloseViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Get alerts from security
.Description
Get alerts from security
.Example
Import-Module Microsoft.Graph.Security
Get-MgSecurityAlert -AlertId $alertId
.Example
Import-Module Microsoft.Graph.Security
Get-MgSecurityAlert

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlert
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecurityalert
#>
function Get-MgSecurityAlert {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlert])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of alert
    ${AlertId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get = 'Microsoft.Graph.Security.private\Get-MgSecurityAlert_Get';
            GetViaIdentity = 'Microsoft.Graph.Security.private\Get-MgSecurityAlert_GetViaIdentity';
            List1 = 'Microsoft.Graph.Security.private\Get-MgSecurityAlert_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Operation entity that represents the latest indexing for the custodian.
.Description
Operation entity that represents the latest indexing for the custodian.
.Example
Import-Module Microsoft.Graph.Security
Get-MgSecurityCaseEdiscoveryCaseCustodianLastIndexOperation -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryCustodianId $ediscoveryCustodianId

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryIndexOperation1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecuritycaseediscoverycasecustodianlastindexoperation
#>
function Get-MgSecurityCaseEdiscoveryCaseCustodianLastIndexOperation {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryIndexOperation1])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCustodian
    ${EdiscoveryCustodianId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseCustodianLastIndexOperation_Get';
            GetViaIdentity = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseCustodianLastIndexOperation_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
The SharePoint site associated with the siteSource.
.Description
The SharePoint site associated with the siteSource.

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSite1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecuritycaseediscoverycasecustodiansitesourcesite
#>
function Get-MgSecurityCaseEdiscoveryCaseCustodianSiteSourceSite {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSite1])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCustodian
    ${EdiscoveryCustodianId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of siteSource
    ${SiteSourceId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseCustodianSiteSourceSite_Get';
            GetViaIdentity = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseCustodianSiteSourceSite_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Data source entity for SharePoint sites associated with the custodian.
.Description
Data source entity for SharePoint sites associated with the custodian.
.Example
Import-Module Microsoft.Graph.Security
Get-MgSecurityCaseEdiscoveryCaseCustodianSiteSource -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryCustodianId $ediscoveryCustodianId

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecuritySiteSource1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecuritycaseediscoverycasecustodiansitesource
#>
function Get-MgSecurityCaseEdiscoveryCaseCustodianSiteSource {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecuritySiteSource1])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCustodian
    ${EdiscoveryCustodianId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of siteSource
    ${SiteSourceId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseCustodianSiteSource_Get';
            GetViaIdentity = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseCustodianSiteSource_GetViaIdentity';
            List = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseCustodianSiteSource_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Represents a group.
.Description
Represents a group.

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphGroup1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecuritycaseediscoverycasecustodianunifiedgroupsourcegroup
#>
function Get-MgSecurityCaseEdiscoveryCaseCustodianUnifiedGroupSourceGroup {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphGroup1])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCustodian
    ${EdiscoveryCustodianId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of unifiedGroupSource
    ${UnifiedGroupSourceId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseCustodianUnifiedGroupSourceGroup_Get';
            GetViaIdentity = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseCustodianUnifiedGroupSourceGroup_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Data source entity for groups associated with the custodian.
.Description
Data source entity for groups associated with the custodian.
.Example
Import-Module Microsoft.Graph.Security
Get-MgSecurityCaseEdiscoveryCaseCustodianUnifiedGroupSource -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryCustodianId $ediscoveryCustodianId

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityUnifiedGroupSource1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecuritycaseediscoverycasecustodianunifiedgroupsource
#>
function Get-MgSecurityCaseEdiscoveryCaseCustodianUnifiedGroupSource {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityUnifiedGroupSource1])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCustodian
    ${EdiscoveryCustodianId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of unifiedGroupSource
    ${UnifiedGroupSourceId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseCustodianUnifiedGroupSource_Get';
            GetViaIdentity = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseCustodianUnifiedGroupSource_GetViaIdentity';
            List = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseCustodianUnifiedGroupSource_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Data source entity for a the custodian.
This is the container for a custodian's mailbox and OneDrive for Business site.
.Description
Data source entity for a the custodian.
This is the container for a custodian's mailbox and OneDrive for Business site.
.Example
Import-Module Microsoft.Graph.Security
Get-MgSecurityCaseEdiscoveryCaseCustodianUserSource -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryCustodianId $ediscoveryCustodianId

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityUserSource
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecuritycaseediscoverycasecustodianusersource
#>
function Get-MgSecurityCaseEdiscoveryCaseCustodianUserSource {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityUserSource])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCustodian
    ${EdiscoveryCustodianId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of userSource
    ${UserSourceId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseCustodianUserSource_Get';
            GetViaIdentity = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseCustodianUserSource_GetViaIdentity';
            List = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseCustodianUserSource_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Returns a list of case ediscoveryCustodian objects for this case.
.Description
Returns a list of case ediscoveryCustodian objects for this case.
.Example
Import-Module Microsoft.Graph.Security
Get-MgSecurityCaseEdiscoveryCaseCustodian -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryCustodianId $ediscoveryCustodianId
.Example
Import-Module Microsoft.Graph.Security
Get-MgSecurityCaseEdiscoveryCaseCustodian -EdiscoveryCaseId $ediscoveryCaseId

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryCustodian1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecuritycaseediscoverycasecustodian
#>
function Get-MgSecurityCaseEdiscoveryCaseCustodian {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryCustodian1])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCustodian
    ${EdiscoveryCustodianId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseCustodian_Get';
            GetViaIdentity = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseCustodian_GetViaIdentity';
            List = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseCustodian_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Operation entity that represents the latest indexing for the non-custodial data source.
.Description
Operation entity that represents the latest indexing for the non-custodial data source.

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryIndexOperation1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecuritycaseediscoverycasenoncustodialdatasourcelastindexoperation
#>
function Get-MgSecurityCaseEdiscoveryCaseNoncustodialDataSourceLastIndexOperation {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryIndexOperation1])]
[CmdletBinding(DefaultParameterSetName='Get', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryNoncustodialDataSource
    ${EdiscoveryNoncustodialDataSourceId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseNoncustodialDataSourceLastIndexOperation_Get';
            GetViaIdentity = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseNoncustodialDataSourceLastIndexOperation_GetViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Returns a list of case ediscoveryNoncustodialDataSource objects for this case.
.Description
Returns a list of case ediscoveryNoncustodialDataSource objects for this case.
.Example
Import-Module Microsoft.Graph.Security
Get-MgSecurityCaseEdiscoveryCaseNoncustodialDataSource -EdiscoveryCaseId $ediscoveryCaseId -ExpandProperty "dataSource" 
.Example
Import-Module Microsoft.Graph.Security
Get-MgSecurityCaseEdiscoveryCaseNoncustodialDataSource -EdiscoveryCaseId $ediscoveryCaseId -ExpandProperty "dataSource"  -OutFile $outFileId
.Example
Import-Module Microsoft.Graph.Security
Get-MgSecurityCaseEdiscoveryCaseNoncustodialDataSource -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryNoncustodialDataSourceId $ediscoveryNoncustodialDataSourceId -ExpandProperty "dataSource" 

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryNoncustodialDataSource1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecuritycaseediscoverycasenoncustodialdatasource
#>
function Get-MgSecurityCaseEdiscoveryCaseNoncustodialDataSource {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryNoncustodialDataSource1])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryNoncustodialDataSource
    ${EdiscoveryNoncustodialDataSourceId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseNoncustodialDataSource_Get';
            GetViaIdentity = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseNoncustodialDataSource_GetViaIdentity';
            List = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseNoncustodialDataSource_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Returns a list of case caseOperation objects for this case.
.Description
Returns a list of case caseOperation objects for this case.
.Example
Import-Module Microsoft.Graph.Security
Get-MgSecurityCaseEdiscoveryCaseOperation -EdiscoveryCaseId $ediscoveryCaseId -CaseOperationId $caseOperationId
.Example
Import-Module Microsoft.Graph.Security
Get-MgSecurityCaseEdiscoveryCaseOperation -EdiscoveryCaseId $ediscoveryCaseId

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityCaseOperation1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecuritycaseediscoverycaseoperation
#>
function Get-MgSecurityCaseEdiscoveryCaseOperation {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityCaseOperation1])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of caseOperation
    ${CaseOperationId},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseOperation_Get';
            GetViaIdentity = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseOperation_GetViaIdentity';
            List = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseOperation_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Represents queries within the review set.
.Description
Represents queries within the review set.
.Example
Import-Module Microsoft.Graph.Security
Get-MgSecurityCaseEdiscoveryCaseReviewSetQuery -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryReviewSetId $ediscoveryReviewSetId -EdiscoveryReviewSetQueryId $ediscoveryReviewSetQueryId
.Example
Import-Module Microsoft.Graph.Security
Get-MgSecurityCaseEdiscoveryCaseReviewSetQuery -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryReviewSetId $ediscoveryReviewSetId

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewSetQuery
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecuritycaseediscoverycasereviewsetquery
#>
function Get-MgSecurityCaseEdiscoveryCaseReviewSetQuery {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewSetQuery])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryReviewSet
    ${EdiscoveryReviewSetId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryReviewSetQuery
    ${EdiscoveryReviewSetQueryId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get1 = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseReviewSetQuery_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseReviewSetQuery_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseReviewSetQuery_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Returns a list of eDiscoveryReviewSet objects in the case.
.Description
Returns a list of eDiscoveryReviewSet objects in the case.
.Example
Import-Module Microsoft.Graph.Security
Get-MgSecurityCaseEdiscoveryCaseReviewSet -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryReviewSetId $ediscoveryReviewSetId
.Example
Import-Module Microsoft.Graph.Security
Get-MgSecurityCaseEdiscoveryCaseReviewSet -EdiscoveryCaseId $ediscoveryCaseId

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewSet1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecuritycaseediscoverycasereviewset
#>
function Get-MgSecurityCaseEdiscoveryCaseReviewSet {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewSet1])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryReviewSet
    ${EdiscoveryReviewSetId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get1 = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseReviewSet_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseReviewSet_GetViaIdentity1';
            List = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseReviewSet_List';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Adds an additional source to the eDiscovery search.
.Description
Adds an additional source to the eDiscovery search.
.Example
Import-Module Microsoft.Graph.Security
Get-MgSecurityCaseEdiscoveryCaseSearchAdditionalSource -EdiscoveryCaseId $ediscoveryCaseId -EdiscoverySearchId $ediscoverySearchId
.Example
Import-Module Microsoft.Graph.Security
Get-MgSecurityCaseEdiscoveryCaseSearchAdditionalSource -EdiscoveryCaseId $ediscoveryCaseId -EdiscoverySearchId $ediscoverySearchId -OutFile $outFileId

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityDataSource
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecuritycaseediscoverycasesearchadditionalsource
#>
function Get-MgSecurityCaseEdiscoveryCaseSearchAdditionalSource {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityDataSource])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of dataSource
    ${DataSourceId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoverySearch
    ${EdiscoverySearchId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get1 = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseSearchAdditionalSource_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseSearchAdditionalSource_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseSearchAdditionalSource_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Adds the results of the eDiscovery search to the specified reviewSet.
.Description
Adds the results of the eDiscovery search to the specified reviewSet.

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryAddToReviewSetOperation1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecuritycaseediscoverycasesearchaddtoreviewsetoperation
#>
function Get-MgSecurityCaseEdiscoveryCaseSearchAddToReviewSetOperation {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryAddToReviewSetOperation1])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoverySearch
    ${EdiscoverySearchId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get1 = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseSearchAddToReviewSetOperation_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseSearchAddToReviewSetOperation_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Custodian sources that are included in the eDiscovery search.
.Description
Custodian sources that are included in the eDiscovery search.
.Example
Import-Module Microsoft.Graph.Security
Get-MgSecurityCaseEdiscoveryCaseSearchCustodianSource -EdiscoveryCaseId $ediscoveryCaseId -EdiscoverySearchId $ediscoverySearchId

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityDataSource
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecuritycaseediscoverycasesearchcustodiansource
#>
function Get-MgSecurityCaseEdiscoveryCaseSearchCustodianSource {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityDataSource])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of dataSource
    ${DataSourceId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoverySearch
    ${EdiscoverySearchId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get1 = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseSearchCustodianSource_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseSearchCustodianSource_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseSearchCustodianSource_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
The last estimate operation associated with the eDiscovery search.
.Description
The last estimate operation associated with the eDiscovery search.
.Example
Import-Module Microsoft.Graph.Security
Get-MgSecurityCaseEdiscoveryCaseSearchLastEstimateStatisticsOperation -EdiscoveryCaseId $ediscoveryCaseId -EdiscoverySearchId $ediscoverySearchId

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryEstimateOperation1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecuritycaseediscoverycasesearchlastestimatestatisticsoperation
#>
function Get-MgSecurityCaseEdiscoveryCaseSearchLastEstimateStatisticsOperation {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryEstimateOperation1])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoverySearch
    ${EdiscoverySearchId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get1 = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseSearchLastEstimateStatisticsOperation_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseSearchLastEstimateStatisticsOperation_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
noncustodialDataSource sources that are included in the eDiscovery search
.Description
noncustodialDataSource sources that are included in the eDiscovery search
.Example
Import-Module Microsoft.Graph.Security
Get-MgSecurityCaseEdiscoveryCaseSearchNoncustodialSource -EdiscoveryCaseId $ediscoveryCaseId -EdiscoverySearchId $ediscoverySearchId

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryNoncustodialDataSource1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecuritycaseediscoverycasesearchnoncustodialsource
#>
function Get-MgSecurityCaseEdiscoveryCaseSearchNoncustodialSource {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryNoncustodialDataSource1])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryNoncustodialDataSource
    ${EdiscoveryNoncustodialDataSourceId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoverySearch
    ${EdiscoverySearchId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get1 = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseSearchNoncustodialSource_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseSearchNoncustodialSource_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseSearchNoncustodialSource_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Returns a list of eDiscoverySearch objects associated with this case.
.Description
Returns a list of eDiscoverySearch objects associated with this case.
.Example
Import-Module Microsoft.Graph.Security
Get-MgSecurityCaseEdiscoveryCaseSearch -EdiscoveryCaseId $ediscoveryCaseId -EdiscoverySearchId $ediscoverySearchId
.Example
Import-Module Microsoft.Graph.Security
Get-MgSecurityCaseEdiscoveryCaseSearch -EdiscoveryCaseId $ediscoveryCaseId

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoverySearch1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecuritycaseediscoverycasesearch
#>
function Get-MgSecurityCaseEdiscoveryCaseSearch {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoverySearch1])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoverySearch
    ${EdiscoverySearchId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get1 = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseSearch_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseSearch_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseSearch_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Returns a list of eDIscoverySettings objects in the case.
.Description
Returns a list of eDIscoverySettings objects in the case.
.Example
Import-Module Microsoft.Graph.Security
Get-MgSecurityCaseEdiscoveryCaseSetting -EdiscoveryCaseId $ediscoveryCaseId

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryCaseSettings
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecuritycaseediscoverycasesetting
#>
function Get-MgSecurityCaseEdiscoveryCaseSetting {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryCaseSettings])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get1 = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseSetting_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseSetting_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Returns the tags that are a child of a tag.
.Description
Returns the tags that are a child of a tag.

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewTag1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecuritycaseediscoverycasetagchildtag
#>
function Get-MgSecurityCaseEdiscoveryCaseTagChildTag {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewTag1])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryReviewTag
    ${EdiscoveryReviewTagId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryReviewTag
    ${EdiscoveryReviewTagId1},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get1 = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseTagChildTag_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseTagChildTag_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseTagChildTag_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Returns the parent tag of the specified tag.
.Description
Returns the parent tag of the specified tag.

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewTag1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecuritycaseediscoverycasetagparent
#>
function Get-MgSecurityCaseEdiscoveryCaseTagParent {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewTag1])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryReviewTag
    ${EdiscoveryReviewTagId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get1 = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseTagParent_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseTagParent_GetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Returns a list of ediscoveryReviewTag objects associated to this case.
.Description
Returns a list of ediscoveryReviewTag objects associated to this case.
.Example
Import-Module Microsoft.Graph.Security
Get-MgSecurityCaseEdiscoveryCaseTag -EdiscoveryCaseId $ediscoveryCaseId
.Example
Import-Module Microsoft.Graph.Security
Get-MgSecurityCaseEdiscoveryCaseTag -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryReviewTagId $ediscoveryReviewTagId

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewTag1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecuritycaseediscoverycasetag
#>
function Get-MgSecurityCaseEdiscoveryCaseTag {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewTag1])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Parameter(ParameterSetName='List1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryReviewTag
    ${EdiscoveryReviewTagId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get1 = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseTag_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseTag_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCaseTag_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Get ediscoveryCases from security
.Description
Get ediscoveryCases from security
.Example
Import-Module Microsoft.Graph.Security
Get-MgSecurityCaseEdiscoveryCase -EdiscoveryCaseId $ediscoveryCaseId
.Example
Import-Module Microsoft.Graph.Security
Get-MgSecurityCaseEdiscoveryCase

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryCase1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecuritycaseediscoverycase
#>
function Get-MgSecurityCaseEdiscoveryCase {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryCase1])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get1 = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCase_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCase_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Security.private\Get-MgSecurityCaseEdiscoveryCase_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Get cases from security
.Description
Get cases from security

.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityCasesRoot1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecuritycase
#>
function Get-MgSecurityCase {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityCasesRoot1])]
[CmdletBinding(DefaultParameterSetName='Get1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
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
            Get1 = 'Microsoft.Graph.Security.private\Get-MgSecurityCase_Get1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Get secureScoreControlProfiles from security
.Description
Get secureScoreControlProfiles from security
.Example
Import-Module Microsoft.Graph.Security
Get-MgSecuritySecureScoreControlProfile -SecureScoreControlProfileId $secureScoreControlProfileId
.Example
Import-Module Microsoft.Graph.Security
Get-MgSecuritySecureScoreControlProfile

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScoreControlProfile
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecuritysecurescorecontrolprofile
#>
function Get-MgSecuritySecureScoreControlProfile {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScoreControlProfile])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of secureScoreControlProfile
    ${SecureScoreControlProfileId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get1 = 'Microsoft.Graph.Security.private\Get-MgSecuritySecureScoreControlProfile_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Security.private\Get-MgSecuritySecureScoreControlProfile_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Security.private\Get-MgSecuritySecureScoreControlProfile_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Get secureScores from security
.Description
Get secureScores from security
.Example
Import-Module Microsoft.Graph.Security
Get-MgSecuritySecureScore -SecureScoreId $secureScoreId
.Example
Import-Module Microsoft.Graph.Security
Get-MgSecuritySecureScore -Top 1 

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScore
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/get-mgsecuritysecurescore
#>
function Get-MgSecuritySecureScore {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScore])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Get1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of secureScore
    ${SecureScoreId},

    [Parameter(ParameterSetName='GetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Get1 = 'Microsoft.Graph.Security.private\Get-MgSecuritySecureScore_Get1';
            GetViaIdentity1 = 'Microsoft.Graph.Security.private\Get-MgSecuritySecureScore_GetViaIdentity1';
            List1 = 'Microsoft.Graph.Security.private\Get-MgSecuritySecureScore_List1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke action activate
.Description
Invoke action activate
.Example
Import-Module Microsoft.Graph.Security
Initialize-MgSecurityCaseEdiscoveryCaseCustodian -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryCustodianId $ediscoveryCustodianId

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/initialize-mgsecuritycaseediscoverycasecustodian
#>
function Initialize-MgSecurityCaseEdiscoveryCaseCustodian {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Activate', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Activate', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Activate', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCustodian
    ${EdiscoveryCustodianId},

    [Parameter(ParameterSetName='ActivateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Activate = 'Microsoft.Graph.Security.private\Initialize-MgSecurityCaseEdiscoveryCaseCustodian_Activate';
            ActivateViaIdentity = 'Microsoft.Graph.Security.private\Initialize-MgSecurityCaseEdiscoveryCaseCustodian_ActivateViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke function asHierarchy
.Description
Invoke function asHierarchy
.Example
Import-Module Microsoft.Graph.Security
Invoke-MgAsSecurityCaseEdiscoveryCaseTagHierarchy -EdiscoveryCaseId $ediscoveryCaseId

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewTag1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/invoke-mgassecuritycaseediscoverycasetaghierarchy
#>
function Invoke-MgAsSecurityCaseEdiscoveryCaseTagHierarchy {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewTag1])]
[CmdletBinding(DefaultParameterSetName='As1', PositionalBinding=$false)]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='As1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='AsViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            As1 = 'Microsoft.Graph.Security.private\Invoke-MgAsSecurityCaseEdiscoveryCaseTagHierarchy_As1';
            AsViaIdentity1 = 'Microsoft.Graph.Security.private\Invoke-MgAsSecurityCaseEdiscoveryCaseTagHierarchy_AsViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke action estimateStatistics
.Description
Invoke action estimateStatistics
.Example
Import-Module Microsoft.Graph.Security
Invoke-MgEstimateSecurityCaseEdiscoveryCaseSearchStatistics -EdiscoveryCaseId $ediscoveryCaseId -EdiscoverySearchId $ediscoverySearchId

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/invoke-mgestimatesecuritycaseediscoverycasesearchstatistics
#>
function Invoke-MgEstimateSecurityCaseEdiscoveryCaseSearchStatistics {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Estimate1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Estimate1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Estimate1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoverySearch
    ${EdiscoverySearchId},

    [Parameter(ParameterSetName='EstimateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Estimate1 = 'Microsoft.Graph.Security.private\Invoke-MgEstimateSecurityCaseEdiscoveryCaseSearchStatistics_Estimate1';
            EstimateViaIdentity1 = 'Microsoft.Graph.Security.private\Invoke-MgEstimateSecurityCaseEdiscoveryCaseSearchStatistics_EstimateViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke action reopen
.Description
Invoke action reopen
.Example
Import-Module Microsoft.Graph.Security
Invoke-MgReopenSecurityCaseEdiscoveryCase -EdiscoveryCaseId $ediscoveryCaseId

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/invoke-mgreopensecuritycaseediscoverycase
#>
function Invoke-MgReopenSecurityCaseEdiscoveryCase {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Reopen', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Reopen', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='ReopenViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Reopen = 'Microsoft.Graph.Security.private\Invoke-MgReopenSecurityCaseEdiscoveryCase_Reopen';
            ReopenViaIdentity = 'Microsoft.Graph.Security.private\Invoke-MgReopenSecurityCaseEdiscoveryCase_ReopenViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Create new navigation property to alerts for security
.Description
Create new navigation property to alerts for security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlert
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlert
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/new-mgsecurityalert
#>
function New-MgSecurityAlert {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlert])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlert]
    # alert
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Name or alias of the activity group (attacker) this alert is attributed to.
    ${ActivityGroupName},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlertDetection[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for ALERTDETECTIONS properties and create a hash table.
    ${AlertDetections},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Name of the analyst the alert is assigned to for triage, investigation, or remediation (supports update).
    ${AssignedTo},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Azure subscription ID, present if this alert is related to an Azure resource.
    ${AzureSubscriptionId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Azure Active Directory tenant ID.
    # Required.
    ${AzureTenantId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Category of the alert (for example, credentialTheft, ransomware, etc.).
    ${Category},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Time at which the alert was closed.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z (supports update).
    ${ClosedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCloudAppSecurityState[]]
    # Security-related stateful information generated by the provider about the cloud application/s related to this alert.
    # To construct, please use Get-Help -Online and see NOTES section for CLOUDAPPSTATES properties and create a hash table.
    ${CloudAppStates},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Customer-provided comments on alert (for customer alert management) (supports update).
    ${Comments},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Confidence of the detection logic (percentage between 1-100).
    ${Confidence},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Time at which the alert was created by the alert provider.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    # Required.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Alert description.
    ${Description},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Set of alerts related to this alert entity (each alert is pushed to the SIEM as a separate record).
    ${DetectionIds},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Time at which the event(s) that served as the trigger(s) to generate the alert occurred.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    # Required.
    ${EventDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # alertFeedback
    ${Feedback},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphFileSecurityState[]]
    # Security-related stateful information generated by the provider about the file(s) related to this alert.
    # To construct, please use Get-Help -Online and see NOTES section for FILESTATES properties and create a hash table.
    ${FileStates},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlertHistoryState[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for HISTORYSTATES properties and create a hash table.
    ${HistoryStates},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphHostSecurityState[]]
    # Security-related stateful information generated by the provider about the host(s) related to this alert.
    # To construct, please use Get-Help -Online and see NOTES section for HOSTSTATES properties and create a hash table.
    ${HostStates},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # IDs of incidents related to current alert.
    ${IncidentIds},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInvestigationSecurityState[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for INVESTIGATIONSECURITYSTATES properties and create a hash table.
    ${InvestigationSecurityStates},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${LastEventDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Time at which the alert entity was last modified.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMalwareState[]]
    # Threat Intelligence pertaining to malware related to this alert.
    # To construct, please use Get-Help -Online and see NOTES section for MALWARESTATES properties and create a hash table.
    ${MalwareStates},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessageSecurityState[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for MESSAGESECURITYSTATES properties and create a hash table.
    ${MessageSecurityStates},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphNetworkConnection[]]
    # Security-related stateful information generated by the provider about the network connection(s) related to this alert.
    # To construct, please use Get-Help -Online and see NOTES section for NETWORKCONNECTIONS properties and create a hash table.
    ${NetworkConnections},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphProcess[]]
    # Security-related stateful information generated by the provider about the process or processes related to this alert.
    # To construct, please use Get-Help -Online and see NOTES section for PROCESSES properties and create a hash table.
    ${Processes},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Vendor/provider recommended action(s) to take as a result of the alert (for example, isolate machine, enforce2FA, reimage host).
    ${RecommendedActions},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRegistryKeyState[]]
    # Security-related stateful information generated by the provider about the registry keys related to this alert.
    # To construct, please use Get-Help -Online and see NOTES section for REGISTRYKEYSTATES properties and create a hash table.
    ${RegistryKeyStates},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityResource[]]
    # Resources related to current alert.
    # For example, for some alerts this can have the Azure Resource value.
    # To construct, please use Get-Help -Online and see NOTES section for SECURITYRESOURCES properties and create a hash table.
    ${SecurityResources},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # alertSeverity
    ${Severity},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Hyperlinks (URIs) to the source material related to the alert, for example, provider's user interface for alerts or log search, etc.
    ${SourceMaterials},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # alertStatus
    ${Status},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # User-definable labels that can be applied to an alert and can serve as filter conditions (for example 'HVA', 'SAW', etc.) (supports update).
    ${Tags},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Alert title.
    # Required.
    ${Title},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlertTrigger[]]
    # Security-related information about the specific properties that triggered the alert (properties appearing in the alert).
    # Alerts might contain information about multiple users, hosts, files, ip addresses.
    # This field indicates which properties triggered the alert generation.
    # To construct, please use Get-Help -Online and see NOTES section for TRIGGERS properties and create a hash table.
    ${Triggers},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUriClickSecurityState[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for URICLICKSECURITYSTATES properties and create a hash table.
    ${UriClickSecurityStates},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserSecurityState[]]
    # Security-related stateful information generated by the provider about the user accounts related to this alert.
    # To construct, please use Get-Help -Online and see NOTES section for USERSTATES properties and create a hash table.
    ${UserStates},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityVendorInformation]
    # securityVendorInformation
    # To construct, please use Get-Help -Online and see NOTES section for VENDORINFORMATION properties and create a hash table.
    ${VendorInformation},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphVulnerabilityState[]]
    # Threat intelligence pertaining to one or more vulnerabilities related to this alert.
    # To construct, please use Get-Help -Online and see NOTES section for VULNERABILITYSTATES properties and create a hash table.
    ${VulnerabilityStates},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Create1 = 'Microsoft.Graph.Security.private\New-MgSecurityAlert_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Security.private\New-MgSecurityAlert_CreateExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Create new navigation property to siteSources for security
.Description
Create new navigation property to siteSources for security
.Example
Import-Module Microsoft.Graph.Security
$params = @{
	Site = @{
		WebUrl = "https://m365x809305.sharepoint.com/sites/Retail"
	}
}
New-MgSecurityCaseEdiscoveryCaseCustodianSiteSource -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryCustodianId $ediscoveryCustodianId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecuritySiteSource1
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecuritySiteSource1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/new-mgsecuritycaseediscoverycasecustodiansitesource
#>
function New-MgSecurityCaseEdiscoveryCaseCustodianSiteSource {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecuritySiteSource1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCustodian
    ${EdiscoveryCustodianId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecuritySiteSource1]
    # siteSource
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, please use Get-Help -Online and see NOTES section for CREATEDBY properties and create a hash table.
    ${CreatedBy},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The date and time the dataSource was created.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The display name of the dataSource.
    # This will be the name of the SharePoint site.
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # dataSourceHoldStatus
    ${HoldStatus},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSite1]
    # site
    # To construct, please use Get-Help -Online and see NOTES section for SITE properties and create a hash table.
    ${Site},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Create = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseCustodianSiteSource_Create';
            CreateExpanded = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseCustodianSiteSource_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseCustodianSiteSource_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseCustodianSiteSource_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Create new navigation property to unifiedGroupSources for security
.Description
Create new navigation property to unifiedGroupSources for security
.Example
Import-Module Microsoft.Graph.Security
$params = @{
	Group = @{
		Mail = "SOCTeam@M365x809305.onmicrosoft.com"
	}
	IncludedSources = "mailbox, site"
}
New-MgSecurityCaseEdiscoveryCaseCustodianUnifiedGroupSource -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryCustodianId $ediscoveryCustodianId -BodyParameter $params
.Example
Import-Module Microsoft.Graph.Security
$params = @{
	"Group@odata.bind" = "https://graph.microsoft.com/v1.0/groups/93f90172-fe05-43ea-83cf-ff785a40d610"
	IncludedSources = "mailbox"
}
New-MgSecurityCaseEdiscoveryCaseCustodianUnifiedGroupSource -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryCustodianId $ediscoveryCustodianId -BodyParameter $params
.Example
Import-Module Microsoft.Graph.Security
$params = @{
	"Group@odata.bind" = "https://graph.microsoft.com/v1.0/groups/93f90172-fe05-43ea-83cf-ff785a40d610"
	IncludedSources = "mailbox"
}
New-MgSecurityCaseEdiscoveryCaseCustodianUnifiedGroupSource -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryCustodianId $ediscoveryCustodianId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityUnifiedGroupSource1
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityUnifiedGroupSource1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/new-mgsecuritycaseediscoverycasecustodianunifiedgroupsource
#>
function New-MgSecurityCaseEdiscoveryCaseCustodianUnifiedGroupSource {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityUnifiedGroupSource1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCustodian
    ${EdiscoveryCustodianId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityUnifiedGroupSource1]
    # unifiedGroupSource
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, please use Get-Help -Online and see NOTES section for CREATEDBY properties and create a hash table.
    ${CreatedBy},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The date and time the dataSource was created.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The display name of the dataSource.
    # This will be the name of the SharePoint site.
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphGroup1]
    # group
    # To construct, please use Get-Help -Online and see NOTES section for GROUP properties and create a hash table.
    ${Group},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # dataSourceHoldStatus
    ${HoldStatus},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # sourceType
    ${IncludedSources},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Create = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseCustodianUnifiedGroupSource_Create';
            CreateExpanded = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseCustodianUnifiedGroupSource_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseCustodianUnifiedGroupSource_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseCustodianUnifiedGroupSource_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Create new navigation property to userSources for security
.Description
Create new navigation property to userSources for security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityUserSource
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityUserSource
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/new-mgsecuritycaseediscoverycasecustodianusersource
#>
function New-MgSecurityCaseEdiscoveryCaseCustodianUserSource {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityUserSource])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCustodian
    ${EdiscoveryCustodianId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityUserSource]
    # userSource
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, please use Get-Help -Online and see NOTES section for CREATEDBY properties and create a hash table.
    ${CreatedBy},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The date and time the dataSource was created.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The display name of the dataSource.
    # This will be the name of the SharePoint site.
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Email address of the user's mailbox.
    ${Email},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # dataSourceHoldStatus
    ${HoldStatus},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # sourceType
    ${IncludedSources},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The URL of the user's OneDrive for Business site.
    # Read-only.
    ${SiteWebUrl},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Create = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseCustodianUserSource_Create';
            CreateExpanded = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseCustodianUserSource_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseCustodianUserSource_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseCustodianUserSource_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Create new navigation property to custodians for security
.Description
Create new navigation property to custodians for security
.Example
Import-Module Microsoft.Graph.Security
$params = @{
	Email = "AdeleV@contoso.com"
}
New-MgSecurityCaseEdiscoveryCaseCustodian -EdiscoveryCaseId $ediscoveryCaseId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryCustodian1
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryCustodian1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/new-mgsecuritycaseediscoverycasecustodian
#>
function New-MgSecurityCaseEdiscoveryCaseCustodian {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryCustodian1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryCustodian1]
    # ediscoveryCustodian
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Date and time the custodian acknowledged a hold notification.
    ${AcknowledgedDateTime},

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
    # Created date and time of the dataSourceContainer entity.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Display name of the dataSourceContainer entity.
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Email address of the custodian.
    ${Email},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # dataSourceHoldStatus
    ${HoldStatus},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryIndexOperation1]))]
    [System.Collections.Hashtable]
    # ediscoveryIndexOperation
    ${LastIndexOperation},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Last modified date and time of the dataSourceContainer.
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Date and time that the dataSourceContainer was released from the case.
    ${ReleasedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecuritySiteSource1[]]
    # Data source entity for SharePoint sites associated with the custodian.
    # To construct, please use Get-Help -Online and see NOTES section for SITESOURCES properties and create a hash table.
    ${SiteSources},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # dataSourceContainerStatus
    ${Status},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityUnifiedGroupSource1[]]
    # Data source entity for groups associated with the custodian.
    # To construct, please use Get-Help -Online and see NOTES section for UNIFIEDGROUPSOURCES properties and create a hash table.
    ${UnifiedGroupSources},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityUserSource[]]
    # Data source entity for a the custodian.
    # This is the container for a custodian's mailbox and OneDrive for Business site.
    # To construct, please use Get-Help -Online and see NOTES section for USERSOURCES properties and create a hash table.
    ${UserSources},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Create = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseCustodian_Create';
            CreateExpanded = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseCustodian_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseCustodian_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseCustodian_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Create new navigation property to noncustodialDataSources for security
.Description
Create new navigation property to noncustodialDataSources for security
.Example
Import-Module Microsoft.Graph.Security
$params = @{
	DataSource = @{
		"@odata.type" = "microsoft.graph.security.siteSource"
	}
}
New-MgSecurityCaseEdiscoveryCaseNoncustodialDataSource -EdiscoveryCaseId $ediscoveryCaseId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryNoncustodialDataSource1
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryNoncustodialDataSource1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/new-mgsecuritycaseediscoverycasenoncustodialdatasource
#>
function New-MgSecurityCaseEdiscoveryCaseNoncustodialDataSource {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryNoncustodialDataSource1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryNoncustodialDataSource1]
    # ediscoveryNoncustodialDataSource
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
    # Created date and time of the dataSourceContainer entity.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityDataSource]
    # dataSource
    # To construct, please use Get-Help -Online and see NOTES section for DATASOURCE properties and create a hash table.
    ${DataSource},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Display name of the dataSourceContainer entity.
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # dataSourceHoldStatus
    ${HoldStatus},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryIndexOperation1]))]
    [System.Collections.Hashtable]
    # ediscoveryIndexOperation
    ${LastIndexOperation},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Last modified date and time of the dataSourceContainer.
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Date and time that the dataSourceContainer was released from the case.
    ${ReleasedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # dataSourceContainerStatus
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
            Create = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseNoncustodialDataSource_Create';
            CreateExpanded = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseNoncustodialDataSource_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseNoncustodialDataSource_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseNoncustodialDataSource_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Create new navigation property to operations for security
.Description
Create new navigation property to operations for security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityCaseOperation1
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityCaseOperation1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/new-mgsecuritycaseediscoverycaseoperation
#>
function New-MgSecurityCaseEdiscoveryCaseOperation {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityCaseOperation1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityCaseOperation1]
    # caseOperation
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Action},

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
    # The date and time the operation was completed.
    ${CompletedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, please use Get-Help -Online and see NOTES section for CREATEDBY properties and create a hash table.
    ${CreatedBy},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The date and time the operation was created.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # The progress of the operation.
    ${PercentProgress},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphResultInfo]
    # resultInfo
    # To construct, please use Get-Help -Online and see NOTES section for RESULTINFO properties and create a hash table.
    ${ResultInfo},

    [Parameter(ParameterSetName='CreateExpanded')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # caseOperationStatus
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
            Create = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseOperation_Create';
            CreateExpanded = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseOperation_CreateExpanded';
            CreateViaIdentity = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseOperation_CreateViaIdentity';
            CreateViaIdentityExpanded = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseOperation_CreateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Create new navigation property to queries for security
.Description
Create new navigation property to queries for security
.Example
Import-Module Microsoft.Graph.Security
$params = @{
	DisplayName = "My Query 1"
	ContentQuery = "(Author="edison")"
}
New-MgSecurityCaseEdiscoveryCaseReviewSetQuery -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryReviewSetId $ediscoveryReviewSetId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Inputs
System.Collections.Hashtable
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewSetQuery
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/new-mgsecuritycaseediscoverycasereviewsetquery
#>
function New-MgSecurityCaseEdiscoveryCaseReviewSetQuery {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewSetQuery])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryReviewSet
    ${EdiscoveryReviewSetId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(Required, PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewSetQuery]))]
    [System.Collections.Hashtable]
    # ediscoveryReviewSetQuery
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
    ${ContentQuery},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, please use Get-Help -Online and see NOTES section for CREATEDBY properties and create a hash table.
    ${CreatedBy},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Description},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, please use Get-Help -Online and see NOTES section for LASTMODIFIEDBY properties and create a hash table.
    ${LastModifiedBy},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${LastModifiedDateTime},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Create1 = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseReviewSetQuery_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseReviewSetQuery_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseReviewSetQuery_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseReviewSetQuery_CreateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Create new navigation property to reviewSets for security
.Description
Create new navigation property to reviewSets for security
.Example
Import-Module Microsoft.Graph.Security
$params = @{
	DisplayName = "My review set 2"
}
New-MgSecurityCaseEdiscoveryCaseReviewSet -EdiscoveryCaseId $ediscoveryCaseId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewSet1
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewSet1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/new-mgsecuritycaseediscoverycasereviewset
#>
function New-MgSecurityCaseEdiscoveryCaseReviewSet {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewSet1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewSet1]
    # ediscoveryReviewSet
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, please use Get-Help -Online and see NOTES section for CREATEDBY properties and create a hash table.
    ${CreatedBy},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewSetQuery[]]
    # Represents queries within the review set.
    # To construct, please use Get-Help -Online and see NOTES section for QUERIES properties and create a hash table.
    ${Queries},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Create1 = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseReviewSet_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseReviewSet_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseReviewSet_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseReviewSet_CreateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Create new navigation property to additionalSources for security
.Description
Create new navigation property to additionalSources for security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityDataSource
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityDataSource
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/new-mgsecuritycaseediscoverycasesearchadditionalsource
#>
function New-MgSecurityCaseEdiscoveryCaseSearchAdditionalSource {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityDataSource])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoverySearch
    ${EdiscoverySearchId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityDataSource]
    # dataSource
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, please use Get-Help -Online and see NOTES section for CREATEDBY properties and create a hash table.
    ${CreatedBy},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The date and time the dataSource was created.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The display name of the dataSource.
    # This will be the name of the SharePoint site.
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # dataSourceHoldStatus
    ${HoldStatus},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
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
            Create1 = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseSearchAdditionalSource_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseSearchAdditionalSource_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseSearchAdditionalSource_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseSearchAdditionalSource_CreateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Create new navigation property to searches for security
.Description
Create new navigation property to searches for security
.Example
Import-Module Microsoft.Graph.Security
$params = @{
	DisplayName = "My search 2"
	Description = "My first search"
	ContentQuery = "(Author="edison")"
	"CustodianSources@odata.bind" = @(
		"https://graph.microsoft.com/v1.0/security/cases/ediscoveryCases/b0073e4e-4184-41c6-9eb7-8c8cc3e2288b/custodians/0053a61a3b6c42738f7606791716a22a/userSources/43434642-3137-3138-3432-374142313639"
		"https://graph.microsoft.com/v1.0/security/cases/ediscoveryCases/b0073e4e-4184-41c6-9eb7-8c8cc3e2288b/custodians/0053a61a3b6c42738f7606791716a22a/siteSources/169718e3-a8df-449d-bef4-ee09fe1ddc5d"
		"https://graph.microsoft.com/v1.0/security/cases/ediscoveryCases('b0073e4e-4184-41c6-9eb7-8c8cc3e2288b')/custodians('0053a61a3b6c42738f7606791716a22a')/unifiedGroupSources('32e14fa4-3106-4bd2-a245-34bf0c718a7e')"
	)
	"NoncustodialSources@odata.bind" = @(
		"https://graph.microsoft.com/v1.0/security/cases/ediscoveryCases/b0073e4e-4184-41c6-9eb7-8c8cc3e2288b/noncustodialdatasources/35393639323133394345384344303043"
	)
}
New-MgSecurityCaseEdiscoveryCaseSearch -EdiscoveryCaseId $ediscoveryCaseId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoverySearch1
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoverySearch1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/new-mgsecuritycaseediscoverycasesearch
#>
function New-MgSecurityCaseEdiscoveryCaseSearch {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoverySearch1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoverySearch1]
    # ediscoverySearch
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryAddToReviewSetOperation1]
    # ediscoveryAddToReviewSetOperation
    # To construct, please use Get-Help -Online and see NOTES section for ADDTOREVIEWSETOPERATION properties and create a hash table.
    ${AddToReviewSetOperation},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityDataSource[]]
    # Adds an additional source to the eDiscovery search.
    # To construct, please use Get-Help -Online and see NOTES section for ADDITIONALSOURCES properties and create a hash table.
    ${AdditionalSources},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ContentQuery},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, please use Get-Help -Online and see NOTES section for CREATEDBY properties and create a hash table.
    ${CreatedBy},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityDataSource[]]
    # Custodian sources that are included in the eDiscovery search.
    # To construct, please use Get-Help -Online and see NOTES section for CUSTODIANSOURCES properties and create a hash table.
    ${CustodianSources},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # dataSourceScopes
    ${DataSourceScopes},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Description},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryEstimateOperation1]
    # ediscoveryEstimateOperation
    # To construct, please use Get-Help -Online and see NOTES section for LASTESTIMATESTATISTICSOPERATION properties and create a hash table.
    ${LastEstimateStatisticsOperation},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, please use Get-Help -Online and see NOTES section for LASTMODIFIEDBY properties and create a hash table.
    ${LastModifiedBy},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryNoncustodialDataSource1[]]
    # noncustodialDataSource sources that are included in the eDiscovery search
    # To construct, please use Get-Help -Online and see NOTES section for NONCUSTODIALSOURCES properties and create a hash table.
    ${NoncustodialSources},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Create1 = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseSearch_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseSearch_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseSearch_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseSearch_CreateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Create new navigation property to tags for security
.Description
Create new navigation property to tags for security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewTag1
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewTag1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/new-mgsecuritycaseediscoverycasetag
#>
function New-MgSecurityCaseEdiscoveryCaseTag {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewTag1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory)]
    [Parameter(ParameterSetName='CreateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='CreateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewTag1]
    # ediscoveryReviewTag
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
    # childSelectability
    ${ChildSelectability},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewTag1[]]
    # Returns the tags that are a child of a tag.
    # To construct, please use Get-Help -Online and see NOTES section for CHILDTAGS properties and create a hash table.
    ${ChildTags},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, please use Get-Help -Online and see NOTES section for CREATEDBY properties and create a hash table.
    ${CreatedBy},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Description},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${DisplayName},

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
    # .
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Parameter(ParameterSetName='CreateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewTag1]
    # ediscoveryReviewTag
    # To construct, please use Get-Help -Online and see NOTES section for PARENT properties and create a hash table.
    ${Parent},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Create1 = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseTag_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseTag_CreateExpanded1';
            CreateViaIdentity1 = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseTag_CreateViaIdentity1';
            CreateViaIdentityExpanded1 = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCaseTag_CreateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Create new navigation property to ediscoveryCases for security
.Description
Create new navigation property to ediscoveryCases for security
.Example
Import-Module Microsoft.Graph.Security
$params = @{
	DisplayName = "CONTOSO LITIGATION-005"
	Description = "Project Bazooka"
	ExternalId = "324516"
}
New-MgSecurityCaseEdiscoveryCase -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryCase1
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryCase1
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/new-mgsecuritycaseediscoverycase
#>
function New-MgSecurityCaseEdiscoveryCase {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryCase1])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryCase1]
    # ediscoveryCase
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, please use Get-Help -Online and see NOTES section for CLOSEDBY properties and create a hash table.
    ${ClosedBy},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The date and time when the case was closed.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${ClosedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryCustodian1[]]
    # Returns a list of case ediscoveryCustodian objects for this case.
    # To construct, please use Get-Help -Online and see NOTES section for CUSTODIANS properties and create a hash table.
    ${Custodians},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Description},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${DisplayName},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The external case number for customer reference.
    ${ExternalId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, please use Get-Help -Online and see NOTES section for LASTMODIFIEDBY properties and create a hash table.
    ${LastModifiedBy},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryNoncustodialDataSource1[]]
    # Returns a list of case ediscoveryNoncustodialDataSource objects for this case.
    # To construct, please use Get-Help -Online and see NOTES section for NONCUSTODIALDATASOURCES properties and create a hash table.
    ${NoncustodialDataSources},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityCaseOperation1[]]
    # Returns a list of case caseOperation objects for this case.
    # To construct, please use Get-Help -Online and see NOTES section for OPERATIONS properties and create a hash table.
    ${Operations},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewSet1[]]
    # Returns a list of eDiscoveryReviewSet objects in the case.
    # To construct, please use Get-Help -Online and see NOTES section for REVIEWSETS properties and create a hash table.
    ${ReviewSets},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoverySearch1[]]
    # Returns a list of eDiscoverySearch objects associated with this case.
    # To construct, please use Get-Help -Online and see NOTES section for SEARCHES properties and create a hash table.
    ${Searches},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryCaseSettings]
    # ediscoveryCaseSettings
    # To construct, please use Get-Help -Online and see NOTES section for SETTINGS properties and create a hash table.
    ${Settings},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # caseStatus
    ${Status},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewTag1[]]
    # Returns a list of ediscoveryReviewTag objects associated to this case.
    # To construct, please use Get-Help -Online and see NOTES section for TAGS properties and create a hash table.
    ${Tags},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Create1 = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCase_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Security.private\New-MgSecurityCaseEdiscoveryCase_CreateExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Create new navigation property to secureScoreControlProfiles for security
.Description
Create new navigation property to secureScoreControlProfiles for security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScoreControlProfile
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScoreControlProfile
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/new-mgsecuritysecurescorecontrolprofile
#>
function New-MgSecuritySecureScoreControlProfile {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScoreControlProfile])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScoreControlProfile]
    # secureScoreControlProfile
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Control action type (Config, Review, Behavior).
    ${ActionType},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # URL to where the control can be actioned.
    ${ActionUrl},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # GUID string for tenant ID.
    ${AzureTenantId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphComplianceInformation[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for COMPLIANCEINFORMATION properties and create a hash table.
    ${ComplianceInformation},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Control action category (Identity, Data, Device, Apps, Infrastructure).
    ${ControlCategory},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScoreControlStateUpdate[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for CONTROLSTATEUPDATES properties and create a hash table.
    ${ControlStateUpdates},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Flag to indicate if a control is depreciated.
    ${Deprecated},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Resource cost of implemmentating control (low, moderate, high).
    ${ImplementationCost},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Time at which the control profile entity was last modified.
    # The Timestamp type represents date and time
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Double]
    # max attainable score for the control.
    ${MaxScore},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Microsoft's stack ranking of control.
    ${Rank},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Description of what the control will help remediate.
    ${Remediation},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Description of the impact on users of the remediation.
    ${RemediationImpact},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Service that owns the control (Exchange, Sharepoint, Azure AD).
    ${Service},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # List of threats the control mitigates (accountBreach,dataDeletion,dataExfiltration,dataSpillage,
    ${Threats},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Tier},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Title of the control.
    ${Title},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${UserImpact},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityVendorInformation]
    # securityVendorInformation
    # To construct, please use Get-Help -Online and see NOTES section for VENDORINFORMATION properties and create a hash table.
    ${VendorInformation},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Create1 = 'Microsoft.Graph.Security.private\New-MgSecuritySecureScoreControlProfile_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Security.private\New-MgSecuritySecureScoreControlProfile_CreateExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Create new navigation property to secureScores for security
.Description
Create new navigation property to secureScores for security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScore
.Outputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScore
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/new-mgsecuritysecurescore
#>
function New-MgSecuritySecureScore {
[OutputType([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScore])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Create1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScore]
    # secureScore
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Active user count of the given tenant.
    ${ActiveUserCount},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAverageComparativeScore[]]
    # Average score by different scopes (for example, average by industry, average by seating) and control category (Identity, Data, Device, Apps, Infrastructure) within the scope.
    # To construct, please use Get-Help -Online and see NOTES section for AVERAGECOMPARATIVESCORES properties and create a hash table.
    ${AverageComparativeScores},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # GUID string for tenant ID.
    ${AzureTenantId},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphControlScore[]]
    # Contains tenant scores for a set of controls.
    # To construct, please use Get-Help -Online and see NOTES section for CONTROLSCORES properties and create a hash table.
    ${ControlScores},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The date when the entity is created.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Double]
    # Tenant current attained score on specified date.
    ${CurrentScore},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Microsoft-provided services for the tenant (for example, Exchange online, Skype, Sharepoint).
    ${EnabledServices},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Licensed user count of the given tenant.
    ${LicensedUserCount},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Double]
    # Tenant maximum possible score on specified date.
    ${MaxScore},

    [Parameter(ParameterSetName='CreateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityVendorInformation]
    # securityVendorInformation
    # To construct, please use Get-Help -Online and see NOTES section for VENDORINFORMATION properties and create a hash table.
    ${VendorInformation},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Create1 = 'Microsoft.Graph.Security.private\New-MgSecuritySecureScore_Create1';
            CreateExpanded1 = 'Microsoft.Graph.Security.private\New-MgSecuritySecureScore_CreateExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke action release
.Description
Invoke action release
.Example
Import-Module Microsoft.Graph.Security
Publish-MgSecurityCaseEdiscoveryCaseCustodian -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryCustodianId $ediscoveryCustodianId

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/publish-mgsecuritycaseediscoverycasecustodian
#>
function Publish-MgSecurityCaseEdiscoveryCaseCustodian {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Release', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Release', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Release', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCustodian
    ${EdiscoveryCustodianId},

    [Parameter(ParameterSetName='ReleaseViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Release = 'Microsoft.Graph.Security.private\Publish-MgSecurityCaseEdiscoveryCaseCustodian_Release';
            ReleaseViaIdentity = 'Microsoft.Graph.Security.private\Publish-MgSecurityCaseEdiscoveryCaseCustodian_ReleaseViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke action release
.Description
Invoke action release
.Example
Import-Module Microsoft.Graph.Security
Publish-MgSecurityCaseEdiscoveryCaseNoncustodialDataSource -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryNoncustodialDataSourceId $ediscoveryNoncustodialDataSourceId

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/publish-mgsecuritycaseediscoverycasenoncustodialdatasource
#>
function Publish-MgSecurityCaseEdiscoveryCaseNoncustodialDataSource {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Release', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Release', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Release', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryNoncustodialDataSource
    ${EdiscoveryNoncustodialDataSourceId},

    [Parameter(ParameterSetName='ReleaseViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Release = 'Microsoft.Graph.Security.private\Publish-MgSecurityCaseEdiscoveryCaseNoncustodialDataSource_Release';
            ReleaseViaIdentity = 'Microsoft.Graph.Security.private\Publish-MgSecurityCaseEdiscoveryCaseNoncustodialDataSource_ReleaseViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Delete navigation property alerts for security
.Description
Delete navigation property alerts for security

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/remove-mgsecurityalert
#>
function Remove-MgSecurityAlert {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of alert
    ${AlertId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Delete = 'Microsoft.Graph.Security.private\Remove-MgSecurityAlert_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Security.private\Remove-MgSecurityAlert_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke action removeHold
.Description
Invoke action removeHold
.Example
Import-Module Microsoft.Graph.Security
Remove-MgSecurityCaseEdiscoveryCaseCustodianHold -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryCustodianId $ediscoveryCustodianId

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths1P15Ma7SecurityCasesEdiscoverycasesEdiscoverycaseIdCustodiansMicrosoftGraphSecurityRemoveholdPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/remove-mgsecuritycaseediscoverycasecustodianhold
#>
function Remove-MgSecurityCaseEdiscoveryCaseCustodianHold {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='RemoveExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Remove', Mandatory)]
    [Parameter(ParameterSetName='Remove1', Mandatory)]
    [Parameter(ParameterSetName='RemoveExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Remove', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCustodian
    ${EdiscoveryCustodianId},

    [Parameter(ParameterSetName='RemoveViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='RemoveViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='RemoveViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Remove1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='RemoveViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths1P15Ma7SecurityCasesEdiscoverycasesEdiscoverycaseIdCustodiansMicrosoftGraphSecurityRemoveholdPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='RemoveExpanded')]
    [Parameter(ParameterSetName='RemoveViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='RemoveExpanded')]
    [Parameter(ParameterSetName='RemoveViaIdentityExpanded')]
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
            Remove = 'Microsoft.Graph.Security.private\Remove-MgSecurityCaseEdiscoveryCaseCustodianHold_Remove';
            Remove1 = 'Microsoft.Graph.Security.private\Remove-MgSecurityCaseEdiscoveryCaseCustodianHold_Remove1';
            RemoveExpanded = 'Microsoft.Graph.Security.private\Remove-MgSecurityCaseEdiscoveryCaseCustodianHold_RemoveExpanded';
            RemoveViaIdentity = 'Microsoft.Graph.Security.private\Remove-MgSecurityCaseEdiscoveryCaseCustodianHold_RemoveViaIdentity';
            RemoveViaIdentity1 = 'Microsoft.Graph.Security.private\Remove-MgSecurityCaseEdiscoveryCaseCustodianHold_RemoveViaIdentity1';
            RemoveViaIdentityExpanded = 'Microsoft.Graph.Security.private\Remove-MgSecurityCaseEdiscoveryCaseCustodianHold_RemoveViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Delete navigation property siteSources for security
.Description
Delete navigation property siteSources for security

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/remove-mgsecuritycaseediscoverycasecustodiansitesource
#>
function Remove-MgSecurityCaseEdiscoveryCaseCustodianSiteSource {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCustodian
    ${EdiscoveryCustodianId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of siteSource
    ${SiteSourceId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Delete = 'Microsoft.Graph.Security.private\Remove-MgSecurityCaseEdiscoveryCaseCustodianSiteSource_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Security.private\Remove-MgSecurityCaseEdiscoveryCaseCustodianSiteSource_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Delete navigation property unifiedGroupSources for security
.Description
Delete navigation property unifiedGroupSources for security

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/remove-mgsecuritycaseediscoverycasecustodianunifiedgroupsource
#>
function Remove-MgSecurityCaseEdiscoveryCaseCustodianUnifiedGroupSource {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCustodian
    ${EdiscoveryCustodianId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of unifiedGroupSource
    ${UnifiedGroupSourceId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Delete = 'Microsoft.Graph.Security.private\Remove-MgSecurityCaseEdiscoveryCaseCustodianUnifiedGroupSource_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Security.private\Remove-MgSecurityCaseEdiscoveryCaseCustodianUnifiedGroupSource_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Delete navigation property userSources for security
.Description
Delete navigation property userSources for security

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/remove-mgsecuritycaseediscoverycasecustodianusersource
#>
function Remove-MgSecurityCaseEdiscoveryCaseCustodianUserSource {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCustodian
    ${EdiscoveryCustodianId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of userSource
    ${UserSourceId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Delete = 'Microsoft.Graph.Security.private\Remove-MgSecurityCaseEdiscoveryCaseCustodianUserSource_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Security.private\Remove-MgSecurityCaseEdiscoveryCaseCustodianUserSource_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Delete navigation property custodians for security
.Description
Delete navigation property custodians for security

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/remove-mgsecuritycaseediscoverycasecustodian
#>
function Remove-MgSecurityCaseEdiscoveryCaseCustodian {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCustodian
    ${EdiscoveryCustodianId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Delete = 'Microsoft.Graph.Security.private\Remove-MgSecurityCaseEdiscoveryCaseCustodian_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Security.private\Remove-MgSecurityCaseEdiscoveryCaseCustodian_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke action removeHold
.Description
Invoke action removeHold
.Example
Import-Module Microsoft.Graph.Security
Remove-MgSecurityCaseEdiscoveryCaseNoncustodialDataSourceHold -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryNoncustodialDataSourceId $ediscoveryNoncustodialDataSourceId
.Example
Import-Module Microsoft.Graph.Security
Remove-MgSecurityCaseEdiscoveryCaseNoncustodialDataSourceHold -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryNoncustodialDataSourceId $ediscoveryNoncustodialDataSourceId

.Inputs
Microsoft.Graph.PowerShell.Models.IPaths101Xa3PSecurityCasesEdiscoverycasesEdiscoverycaseIdNoncustodialdatasourcesMicrosoftGraphSecurityRemoveholdPostRequestbodyContentApplicationJsonSchema
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/remove-mgsecuritycaseediscoverycasenoncustodialdatasourcehold
#>
function Remove-MgSecurityCaseEdiscoveryCaseNoncustodialDataSourceHold {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='RemoveExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Remove', Mandatory)]
    [Parameter(ParameterSetName='Remove1', Mandatory)]
    [Parameter(ParameterSetName='RemoveExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Remove', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryNoncustodialDataSource
    ${EdiscoveryNoncustodialDataSourceId},

    [Parameter(ParameterSetName='RemoveViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='RemoveViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='RemoveViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Remove1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='RemoveViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IPaths101Xa3PSecurityCasesEdiscoverycasesEdiscoverycaseIdNoncustodialdatasourcesMicrosoftGraphSecurityRemoveholdPostRequestbodyContentApplicationJsonSchema]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='RemoveExpanded')]
    [Parameter(ParameterSetName='RemoveViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='RemoveExpanded')]
    [Parameter(ParameterSetName='RemoveViaIdentityExpanded')]
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
            Remove = 'Microsoft.Graph.Security.private\Remove-MgSecurityCaseEdiscoveryCaseNoncustodialDataSourceHold_Remove';
            Remove1 = 'Microsoft.Graph.Security.private\Remove-MgSecurityCaseEdiscoveryCaseNoncustodialDataSourceHold_Remove1';
            RemoveExpanded = 'Microsoft.Graph.Security.private\Remove-MgSecurityCaseEdiscoveryCaseNoncustodialDataSourceHold_RemoveExpanded';
            RemoveViaIdentity = 'Microsoft.Graph.Security.private\Remove-MgSecurityCaseEdiscoveryCaseNoncustodialDataSourceHold_RemoveViaIdentity';
            RemoveViaIdentity1 = 'Microsoft.Graph.Security.private\Remove-MgSecurityCaseEdiscoveryCaseNoncustodialDataSourceHold_RemoveViaIdentity1';
            RemoveViaIdentityExpanded = 'Microsoft.Graph.Security.private\Remove-MgSecurityCaseEdiscoveryCaseNoncustodialDataSourceHold_RemoveViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Delete navigation property noncustodialDataSources for security
.Description
Delete navigation property noncustodialDataSources for security

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/remove-mgsecuritycaseediscoverycasenoncustodialdatasource
#>
function Remove-MgSecurityCaseEdiscoveryCaseNoncustodialDataSource {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryNoncustodialDataSource
    ${EdiscoveryNoncustodialDataSourceId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Delete = 'Microsoft.Graph.Security.private\Remove-MgSecurityCaseEdiscoveryCaseNoncustodialDataSource_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Security.private\Remove-MgSecurityCaseEdiscoveryCaseNoncustodialDataSource_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Delete navigation property operations for security
.Description
Delete navigation property operations for security

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/remove-mgsecuritycaseediscoverycaseoperation
#>
function Remove-MgSecurityCaseEdiscoveryCaseOperation {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of caseOperation
    ${CaseOperationId},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Delete = 'Microsoft.Graph.Security.private\Remove-MgSecurityCaseEdiscoveryCaseOperation_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Security.private\Remove-MgSecurityCaseEdiscoveryCaseOperation_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Delete navigation property queries for security
.Description
Delete navigation property queries for security
.Example
Import-Module Microsoft.Graph.Security
Remove-MgSecurityCaseEdiscoveryCaseReviewSetQuery -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryReviewSetId $ediscoveryReviewSetId -EdiscoveryReviewSetQueryId $ediscoveryReviewSetQueryId

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/remove-mgsecuritycaseediscoverycasereviewsetquery
#>
function Remove-MgSecurityCaseEdiscoveryCaseReviewSetQuery {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryReviewSet
    ${EdiscoveryReviewSetId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryReviewSetQuery
    ${EdiscoveryReviewSetQueryId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Delete1 = 'Microsoft.Graph.Security.private\Remove-MgSecurityCaseEdiscoveryCaseReviewSetQuery_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Security.private\Remove-MgSecurityCaseEdiscoveryCaseReviewSetQuery_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Delete navigation property reviewSets for security
.Description
Delete navigation property reviewSets for security

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/remove-mgsecuritycaseediscoverycasereviewset
#>
function Remove-MgSecurityCaseEdiscoveryCaseReviewSet {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryReviewSet
    ${EdiscoveryReviewSetId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Delete1 = 'Microsoft.Graph.Security.private\Remove-MgSecurityCaseEdiscoveryCaseReviewSet_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Security.private\Remove-MgSecurityCaseEdiscoveryCaseReviewSet_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Delete navigation property additionalSources for security
.Description
Delete navigation property additionalSources for security

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/remove-mgsecuritycaseediscoverycasesearchadditionalsource
#>
function Remove-MgSecurityCaseEdiscoveryCaseSearchAdditionalSource {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of dataSource
    ${DataSourceId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoverySearch
    ${EdiscoverySearchId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Delete1 = 'Microsoft.Graph.Security.private\Remove-MgSecurityCaseEdiscoveryCaseSearchAdditionalSource_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Security.private\Remove-MgSecurityCaseEdiscoveryCaseSearchAdditionalSource_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Delete navigation property searches for security
.Description
Delete navigation property searches for security
.Example
Import-Module Microsoft.Graph.Security
Remove-MgSecurityCaseEdiscoveryCaseSearch -EdiscoveryCaseId $ediscoveryCaseId -EdiscoverySearchId $ediscoverySearchId

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/remove-mgsecuritycaseediscoverycasesearch
#>
function Remove-MgSecurityCaseEdiscoveryCaseSearch {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoverySearch
    ${EdiscoverySearchId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Delete1 = 'Microsoft.Graph.Security.private\Remove-MgSecurityCaseEdiscoveryCaseSearch_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Security.private\Remove-MgSecurityCaseEdiscoveryCaseSearch_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Delete navigation property settings for security
.Description
Delete navigation property settings for security

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/remove-mgsecuritycaseediscoverycasesetting
#>
function Remove-MgSecurityCaseEdiscoveryCaseSetting {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Delete1 = 'Microsoft.Graph.Security.private\Remove-MgSecurityCaseEdiscoveryCaseSetting_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Security.private\Remove-MgSecurityCaseEdiscoveryCaseSetting_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Delete navigation property tags for security
.Description
Delete navigation property tags for security
.Example
Import-Module Microsoft.Graph.Security
Remove-MgSecurityCaseEdiscoveryCaseTag -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryReviewTagId $ediscoveryReviewTagId

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/remove-mgsecuritycaseediscoverycasetag
#>
function Remove-MgSecurityCaseEdiscoveryCaseTag {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryReviewTag
    ${EdiscoveryReviewTagId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Delete1 = 'Microsoft.Graph.Security.private\Remove-MgSecurityCaseEdiscoveryCaseTag_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Security.private\Remove-MgSecurityCaseEdiscoveryCaseTag_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Delete navigation property ediscoveryCases for security
.Description
Delete navigation property ediscoveryCases for security
.Example
Import-Module Microsoft.Graph.Security
Remove-MgSecurityCaseEdiscoveryCase -EdiscoveryCaseId $ediscoveryCaseId

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/remove-mgsecuritycaseediscoverycase
#>
function Remove-MgSecurityCaseEdiscoveryCase {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Delete = 'Microsoft.Graph.Security.private\Remove-MgSecurityCaseEdiscoveryCase_Delete';
            DeleteViaIdentity = 'Microsoft.Graph.Security.private\Remove-MgSecurityCaseEdiscoveryCase_DeleteViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Delete navigation property cases for security
.Description
Delete navigation property cases for security

.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/remove-mgsecuritycase
#>
function Remove-MgSecurityCase {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
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
            Delete1 = 'Microsoft.Graph.Security.private\Remove-MgSecurityCase_Delete1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Delete navigation property secureScoreControlProfiles for security
.Description
Delete navigation property secureScoreControlProfiles for security

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/remove-mgsecuritysecurescorecontrolprofile
#>
function Remove-MgSecuritySecureScoreControlProfile {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of secureScoreControlProfile
    ${SecureScoreControlProfileId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Delete1 = 'Microsoft.Graph.Security.private\Remove-MgSecuritySecureScoreControlProfile_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Security.private\Remove-MgSecuritySecureScoreControlProfile_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Delete navigation property secureScores for security
.Description
Delete navigation property secureScores for security

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/remove-mgsecuritysecurescore
#>
function Remove-MgSecuritySecureScore {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Delete1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of secureScore
    ${SecureScoreId},

    [Parameter(ParameterSetName='DeleteViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Delete1 = 'Microsoft.Graph.Security.private\Remove-MgSecuritySecureScore_Delete1';
            DeleteViaIdentity1 = 'Microsoft.Graph.Security.private\Remove-MgSecuritySecureScore_DeleteViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke action resetToDefault
.Description
Invoke action resetToDefault
.Example
Import-Module Microsoft.Graph.Security
Reset-MgSecurityCaseEdiscoveryCaseSettingToDefault -EdiscoveryCaseId $ediscoveryCaseId

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/reset-mgsecuritycaseediscoverycasesettingtodefault
#>
function Reset-MgSecurityCaseEdiscoveryCaseSettingToDefault {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Reset1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Reset1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='ResetViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Reset1 = 'Microsoft.Graph.Security.private\Reset-MgSecurityCaseEdiscoveryCaseSettingToDefault_Reset1';
            ResetViaIdentity1 = 'Microsoft.Graph.Security.private\Reset-MgSecurityCaseEdiscoveryCaseSettingToDefault_ResetViaIdentity1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Update the navigation property alerts in security
.Description
Update the navigation property alerts in security
.Example
Import-Module Microsoft.Graph.Security
$params = @{
	AssignedTo = "String"
	ClosedDateTime = [System.DateTime]::Parse("String (timestamp)")
	Comments = @(
		"String"
	)
	Feedback = "@odata.type: microsoft.graph.alertFeedback"
	Status = "@odata.type: microsoft.graph.alertStatus"
	Tags = @(
		"String"
	)
	VendorInformation = @{
		Provider = "String"
		Vendor = "String"
	}
}
Update-MgSecurityAlert -AlertId $alertId -BodyParameter $params
.Example
Import-Module Microsoft.Graph.Security
$params = @{
	AssignedTo = "String"
	ClosedDateTime = [System.DateTime]::Parse("String (timestamp)")
	Comments = @(
		"String"
	)
	Feedback = "@odata.type: microsoft.graph.alertFeedback"
	Status = "@odata.type: microsoft.graph.alertStatus"
	Tags = @(
		"String"
	)
	VendorInformation = @{
		Provider = "String"
		Vendor = "String"
	}
}
Update-MgSecurityAlert -AlertId $alertId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlert
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/update-mgsecurityalert
#>
function Update-MgSecurityAlert {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of alert
    ${AlertId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlert]
    # alert
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Name or alias of the activity group (attacker) this alert is attributed to.
    ${ActivityGroupName},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlertDetection[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for ALERTDETECTIONS properties and create a hash table.
    ${AlertDetections},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Name of the analyst the alert is assigned to for triage, investigation, or remediation (supports update).
    ${AssignedTo},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Azure subscription ID, present if this alert is related to an Azure resource.
    ${AzureSubscriptionId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Azure Active Directory tenant ID.
    # Required.
    ${AzureTenantId},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Category of the alert (for example, credentialTheft, ransomware, etc.).
    ${Category},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Time at which the alert was closed.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z (supports update).
    ${ClosedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphCloudAppSecurityState[]]
    # Security-related stateful information generated by the provider about the cloud application/s related to this alert.
    # To construct, please use Get-Help -Online and see NOTES section for CLOUDAPPSTATES properties and create a hash table.
    ${CloudAppStates},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Customer-provided comments on alert (for customer alert management) (supports update).
    ${Comments},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Confidence of the detection logic (percentage between 1-100).
    ${Confidence},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Time at which the alert was created by the alert provider.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    # Required.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Alert description.
    ${Description},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Set of alerts related to this alert entity (each alert is pushed to the SIEM as a separate record).
    ${DetectionIds},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Time at which the event(s) that served as the trigger(s) to generate the alert occurred.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    # Required.
    ${EventDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # alertFeedback
    ${Feedback},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphFileSecurityState[]]
    # Security-related stateful information generated by the provider about the file(s) related to this alert.
    # To construct, please use Get-Help -Online and see NOTES section for FILESTATES properties and create a hash table.
    ${FileStates},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlertHistoryState[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for HISTORYSTATES properties and create a hash table.
    ${HistoryStates},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphHostSecurityState[]]
    # Security-related stateful information generated by the provider about the host(s) related to this alert.
    # To construct, please use Get-Help -Online and see NOTES section for HOSTSTATES properties and create a hash table.
    ${HostStates},

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
    # IDs of incidents related to current alert.
    ${IncidentIds},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphInvestigationSecurityState[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for INVESTIGATIONSECURITYSTATES properties and create a hash table.
    ${InvestigationSecurityStates},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${LastEventDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Time at which the alert entity was last modified.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMalwareState[]]
    # Threat Intelligence pertaining to malware related to this alert.
    # To construct, please use Get-Help -Online and see NOTES section for MALWARESTATES properties and create a hash table.
    ${MalwareStates},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphMessageSecurityState[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for MESSAGESECURITYSTATES properties and create a hash table.
    ${MessageSecurityStates},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphNetworkConnection[]]
    # Security-related stateful information generated by the provider about the network connection(s) related to this alert.
    # To construct, please use Get-Help -Online and see NOTES section for NETWORKCONNECTIONS properties and create a hash table.
    ${NetworkConnections},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphProcess[]]
    # Security-related stateful information generated by the provider about the process or processes related to this alert.
    # To construct, please use Get-Help -Online and see NOTES section for PROCESSES properties and create a hash table.
    ${Processes},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Vendor/provider recommended action(s) to take as a result of the alert (for example, isolate machine, enforce2FA, reimage host).
    ${RecommendedActions},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphRegistryKeyState[]]
    # Security-related stateful information generated by the provider about the registry keys related to this alert.
    # To construct, please use Get-Help -Online and see NOTES section for REGISTRYKEYSTATES properties and create a hash table.
    ${RegistryKeyStates},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityResource[]]
    # Resources related to current alert.
    # For example, for some alerts this can have the Azure Resource value.
    # To construct, please use Get-Help -Online and see NOTES section for SECURITYRESOURCES properties and create a hash table.
    ${SecurityResources},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # alertSeverity
    ${Severity},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Hyperlinks (URIs) to the source material related to the alert, for example, provider's user interface for alerts or log search, etc.
    ${SourceMaterials},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # alertStatus
    ${Status},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # User-definable labels that can be applied to an alert and can serve as filter conditions (for example 'HVA', 'SAW', etc.) (supports update).
    ${Tags},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Alert title.
    # Required.
    ${Title},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAlertTrigger[]]
    # Security-related information about the specific properties that triggered the alert (properties appearing in the alert).
    # Alerts might contain information about multiple users, hosts, files, ip addresses.
    # This field indicates which properties triggered the alert generation.
    # To construct, please use Get-Help -Online and see NOTES section for TRIGGERS properties and create a hash table.
    ${Triggers},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUriClickSecurityState[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for URICLICKSECURITYSTATES properties and create a hash table.
    ${UriClickSecurityStates},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphUserSecurityState[]]
    # Security-related stateful information generated by the provider about the user accounts related to this alert.
    # To construct, please use Get-Help -Online and see NOTES section for USERSTATES properties and create a hash table.
    ${UserStates},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityVendorInformation]
    # securityVendorInformation
    # To construct, please use Get-Help -Online and see NOTES section for VENDORINFORMATION properties and create a hash table.
    ${VendorInformation},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphVulnerabilityState[]]
    # Threat intelligence pertaining to one or more vulnerabilities related to this alert.
    # To construct, please use Get-Help -Online and see NOTES section for VULNERABILITYSTATES properties and create a hash table.
    ${VulnerabilityStates},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Security.private\Update-MgSecurityAlert_Update';
            UpdateExpanded = 'Microsoft.Graph.Security.private\Update-MgSecurityAlert_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Security.private\Update-MgSecurityAlert_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Security.private\Update-MgSecurityAlert_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke action updateIndex
.Description
Invoke action updateIndex
.Example
Import-Module Microsoft.Graph.Security
Update-MgSecurityCaseEdiscoveryCaseCustodianIndex -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryCustodianId $ediscoveryCustodianId

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/update-mgsecuritycaseediscoverycasecustodianindex
#>
function Update-MgSecurityCaseEdiscoveryCaseCustodianIndex {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Update', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCustodian
    ${EdiscoveryCustodianId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Update = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseCustodianIndex_Update';
            UpdateViaIdentity = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseCustodianIndex_UpdateViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Update the navigation property siteSources in security
.Description
Update the navigation property siteSources in security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecuritySiteSource1
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/update-mgsecuritycaseediscoverycasecustodiansitesource
#>
function Update-MgSecurityCaseEdiscoveryCaseCustodianSiteSource {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCustodian
    ${EdiscoveryCustodianId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of siteSource
    ${SiteSourceId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecuritySiteSource1]
    # siteSource
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, please use Get-Help -Online and see NOTES section for CREATEDBY properties and create a hash table.
    ${CreatedBy},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The date and time the dataSource was created.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The display name of the dataSource.
    # This will be the name of the SharePoint site.
    ${DisplayName},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # dataSourceHoldStatus
    ${HoldStatus},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSite1]
    # site
    # To construct, please use Get-Help -Online and see NOTES section for SITE properties and create a hash table.
    ${Site},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseCustodianSiteSource_Update';
            UpdateExpanded = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseCustodianSiteSource_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseCustodianSiteSource_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseCustodianSiteSource_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Update the navigation property unifiedGroupSources in security
.Description
Update the navigation property unifiedGroupSources in security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityUnifiedGroupSource1
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/update-mgsecuritycaseediscoverycasecustodianunifiedgroupsource
#>
function Update-MgSecurityCaseEdiscoveryCaseCustodianUnifiedGroupSource {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCustodian
    ${EdiscoveryCustodianId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of unifiedGroupSource
    ${UnifiedGroupSourceId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityUnifiedGroupSource1]
    # unifiedGroupSource
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, please use Get-Help -Online and see NOTES section for CREATEDBY properties and create a hash table.
    ${CreatedBy},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The date and time the dataSource was created.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The display name of the dataSource.
    # This will be the name of the SharePoint site.
    ${DisplayName},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphGroup1]
    # group
    # To construct, please use Get-Help -Online and see NOTES section for GROUP properties and create a hash table.
    ${Group},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # dataSourceHoldStatus
    ${HoldStatus},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # sourceType
    ${IncludedSources},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseCustodianUnifiedGroupSource_Update';
            UpdateExpanded = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseCustodianUnifiedGroupSource_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseCustodianUnifiedGroupSource_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseCustodianUnifiedGroupSource_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Update the navigation property userSources in security
.Description
Update the navigation property userSources in security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityUserSource
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/update-mgsecuritycaseediscoverycasecustodianusersource
#>
function Update-MgSecurityCaseEdiscoveryCaseCustodianUserSource {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCustodian
    ${EdiscoveryCustodianId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of userSource
    ${UserSourceId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityUserSource]
    # userSource
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, please use Get-Help -Online and see NOTES section for CREATEDBY properties and create a hash table.
    ${CreatedBy},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The date and time the dataSource was created.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The display name of the dataSource.
    # This will be the name of the SharePoint site.
    ${DisplayName},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Email address of the user's mailbox.
    ${Email},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # dataSourceHoldStatus
    ${HoldStatus},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # sourceType
    ${IncludedSources},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The URL of the user's OneDrive for Business site.
    # Read-only.
    ${SiteWebUrl},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseCustodianUserSource_Update';
            UpdateExpanded = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseCustodianUserSource_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseCustodianUserSource_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseCustodianUserSource_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Update the navigation property custodians in security
.Description
Update the navigation property custodians in security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryCustodian1
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/update-mgsecuritycaseediscoverycasecustodian
#>
function Update-MgSecurityCaseEdiscoveryCaseCustodian {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCustodian
    ${EdiscoveryCustodianId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryCustodian1]
    # ediscoveryCustodian
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Date and time the custodian acknowledged a hold notification.
    ${AcknowledgedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Created date and time of the dataSourceContainer entity.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Display name of the dataSourceContainer entity.
    ${DisplayName},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Email address of the custodian.
    ${Email},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # dataSourceHoldStatus
    ${HoldStatus},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryIndexOperation1]))]
    [System.Collections.Hashtable]
    # ediscoveryIndexOperation
    ${LastIndexOperation},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Last modified date and time of the dataSourceContainer.
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Date and time that the dataSourceContainer was released from the case.
    ${ReleasedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecuritySiteSource1[]]
    # Data source entity for SharePoint sites associated with the custodian.
    # To construct, please use Get-Help -Online and see NOTES section for SITESOURCES properties and create a hash table.
    ${SiteSources},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # dataSourceContainerStatus
    ${Status},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityUnifiedGroupSource1[]]
    # Data source entity for groups associated with the custodian.
    # To construct, please use Get-Help -Online and see NOTES section for UNIFIEDGROUPSOURCES properties and create a hash table.
    ${UnifiedGroupSources},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityUserSource[]]
    # Data source entity for a the custodian.
    # This is the container for a custodian's mailbox and OneDrive for Business site.
    # To construct, please use Get-Help -Online and see NOTES section for USERSOURCES properties and create a hash table.
    ${UserSources},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseCustodian_Update';
            UpdateExpanded = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseCustodian_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseCustodian_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseCustodian_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Invoke action updateIndex
.Description
Invoke action updateIndex
.Example
Import-Module Microsoft.Graph.Security
Update-MgSecurityCaseEdiscoveryCaseNoncustodialDataSourceIndex -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryNoncustodialDataSourceId $ediscoveryNoncustodialDataSourceId

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/update-mgsecuritycaseediscoverycasenoncustodialdatasourceindex
#>
function Update-MgSecurityCaseEdiscoveryCaseNoncustodialDataSourceIndex {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Update', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryNoncustodialDataSource
    ${EdiscoveryNoncustodialDataSourceId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
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
            Update = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseNoncustodialDataSourceIndex_Update';
            UpdateViaIdentity = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseNoncustodialDataSourceIndex_UpdateViaIdentity';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Update the navigation property noncustodialDataSources in security
.Description
Update the navigation property noncustodialDataSources in security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryNoncustodialDataSource1
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/update-mgsecuritycaseediscoverycasenoncustodialdatasource
#>
function Update-MgSecurityCaseEdiscoveryCaseNoncustodialDataSource {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryNoncustodialDataSource
    ${EdiscoveryNoncustodialDataSourceId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryNoncustodialDataSource1]
    # ediscoveryNoncustodialDataSource
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
    [System.DateTime]
    # Created date and time of the dataSourceContainer entity.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityDataSource]
    # dataSource
    # To construct, please use Get-Help -Online and see NOTES section for DATASOURCE properties and create a hash table.
    ${DataSource},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Display name of the dataSourceContainer entity.
    ${DisplayName},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # dataSourceHoldStatus
    ${HoldStatus},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryIndexOperation1]))]
    [System.Collections.Hashtable]
    # ediscoveryIndexOperation
    ${LastIndexOperation},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Last modified date and time of the dataSourceContainer.
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Date and time that the dataSourceContainer was released from the case.
    ${ReleasedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # dataSourceContainerStatus
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
            Update = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseNoncustodialDataSource_Update';
            UpdateExpanded = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseNoncustodialDataSource_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseNoncustodialDataSource_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseNoncustodialDataSource_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Update the navigation property operations in security
.Description
Update the navigation property operations in security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityCaseOperation1
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/update-mgsecuritycaseediscoverycaseoperation
#>
function Update-MgSecurityCaseEdiscoveryCaseOperation {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of caseOperation
    ${CaseOperationId},

    [Parameter(ParameterSetName='Update', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityCaseOperation1]
    # caseOperation
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Action},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The date and time the operation was completed.
    ${CompletedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, please use Get-Help -Online and see NOTES section for CREATEDBY properties and create a hash table.
    ${CreatedBy},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The date and time the operation was created.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # The progress of the operation.
    ${PercentProgress},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphResultInfo]
    # resultInfo
    # To construct, please use Get-Help -Online and see NOTES section for RESULTINFO properties and create a hash table.
    ${ResultInfo},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # caseOperationStatus
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
            Update = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseOperation_Update';
            UpdateExpanded = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseOperation_UpdateExpanded';
            UpdateViaIdentity = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseOperation_UpdateViaIdentity';
            UpdateViaIdentityExpanded = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseOperation_UpdateViaIdentityExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Update the navigation property queries in security
.Description
Update the navigation property queries in security
.Example
Import-Module Microsoft.Graph.Security
$params = @{
	DisplayName = "My Query 1 (update)"
	ContentQuery = "(Author="edisons")"
}
Update-MgSecurityCaseEdiscoveryCaseReviewSetQuery -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryReviewSetId $ediscoveryReviewSetId -EdiscoveryReviewSetQueryId $ediscoveryReviewSetQueryId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Inputs
System.Collections.Hashtable
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/update-mgsecuritycaseediscoverycasereviewsetquery
#>
function Update-MgSecurityCaseEdiscoveryCaseReviewSetQuery {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryReviewSet
    ${EdiscoveryReviewSetId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryReviewSetQuery
    ${EdiscoveryReviewSetQueryId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Runtime.Info(Required, PossibleTypes=([Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewSetQuery]))]
    [System.Collections.Hashtable]
    # ediscoveryReviewSetQuery
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
    ${ContentQuery},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, please use Get-Help -Online and see NOTES section for CREATEDBY properties and create a hash table.
    ${CreatedBy},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Description},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${DisplayName},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, please use Get-Help -Online and see NOTES section for LASTMODIFIEDBY properties and create a hash table.
    ${LastModifiedBy},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${LastModifiedDateTime},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseReviewSetQuery_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseReviewSetQuery_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseReviewSetQuery_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseReviewSetQuery_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Update the navigation property reviewSets in security
.Description
Update the navigation property reviewSets in security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewSet1
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/update-mgsecuritycaseediscoverycasereviewset
#>
function Update-MgSecurityCaseEdiscoveryCaseReviewSet {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryReviewSet
    ${EdiscoveryReviewSetId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewSet1]
    # ediscoveryReviewSet
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, please use Get-Help -Online and see NOTES section for CREATEDBY properties and create a hash table.
    ${CreatedBy},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${DisplayName},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewSetQuery[]]
    # Represents queries within the review set.
    # To construct, please use Get-Help -Online and see NOTES section for QUERIES properties and create a hash table.
    ${Queries},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseReviewSet_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseReviewSet_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseReviewSet_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseReviewSet_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Update the navigation property additionalSources in security
.Description
Update the navigation property additionalSources in security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityDataSource
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/update-mgsecuritycaseediscoverycasesearchadditionalsource
#>
function Update-MgSecurityCaseEdiscoveryCaseSearchAdditionalSource {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of dataSource
    ${DataSourceId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoverySearch
    ${EdiscoverySearchId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityDataSource]
    # dataSource
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, please use Get-Help -Online and see NOTES section for CREATEDBY properties and create a hash table.
    ${CreatedBy},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The date and time the dataSource was created.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The display name of the dataSource.
    # This will be the name of the SharePoint site.
    ${DisplayName},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # dataSourceHoldStatus
    ${HoldStatus},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
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
            Update1 = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseSearchAdditionalSource_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseSearchAdditionalSource_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseSearchAdditionalSource_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseSearchAdditionalSource_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Update the navigation property searches in security
.Description
Update the navigation property searches in security
.Example
Import-Module Microsoft.Graph.Security
$params = @{
	DisplayName = "Teams search"
}
Update-MgSecurityCaseEdiscoveryCaseSearch -EdiscoveryCaseId $ediscoveryCaseId -EdiscoverySearchId $ediscoverySearchId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoverySearch1
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/update-mgsecuritycaseediscoverycasesearch
#>
function Update-MgSecurityCaseEdiscoveryCaseSearch {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoverySearch
    ${EdiscoverySearchId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoverySearch1]
    # ediscoverySearch
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryAddToReviewSetOperation1]
    # ediscoveryAddToReviewSetOperation
    # To construct, please use Get-Help -Online and see NOTES section for ADDTOREVIEWSETOPERATION properties and create a hash table.
    ${AddToReviewSetOperation},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityDataSource[]]
    # Adds an additional source to the eDiscovery search.
    # To construct, please use Get-Help -Online and see NOTES section for ADDITIONALSOURCES properties and create a hash table.
    ${AdditionalSources},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${ContentQuery},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, please use Get-Help -Online and see NOTES section for CREATEDBY properties and create a hash table.
    ${CreatedBy},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityDataSource[]]
    # Custodian sources that are included in the eDiscovery search.
    # To construct, please use Get-Help -Online and see NOTES section for CUSTODIANSOURCES properties and create a hash table.
    ${CustodianSources},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # dataSourceScopes
    ${DataSourceScopes},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Description},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${DisplayName},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryEstimateOperation1]
    # ediscoveryEstimateOperation
    # To construct, please use Get-Help -Online and see NOTES section for LASTESTIMATESTATISTICSOPERATION properties and create a hash table.
    ${LastEstimateStatisticsOperation},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, please use Get-Help -Online and see NOTES section for LASTMODIFIEDBY properties and create a hash table.
    ${LastModifiedBy},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryNoncustodialDataSource1[]]
    # noncustodialDataSource sources that are included in the eDiscovery search
    # To construct, please use Get-Help -Online and see NOTES section for NONCUSTODIALSOURCES properties and create a hash table.
    ${NoncustodialSources},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseSearch_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseSearch_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseSearch_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseSearch_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Update the navigation property settings in security
.Description
Update the navigation property settings in security
.Example
Import-Module Microsoft.Graph.Security
$params = @{
	"@odata.type" = "#microsoft.graph.security.ediscoveryCaseSettings"
	RedundancyDetection = @{
		"@odata.type" = "microsoft.graph.security.redundancyDetectionSettings"
	}
	TopicModeling = @{
		"@odata.type" = "microsoft.graph.security.topicModelingSettings"
	}
	Ocr = @{
		"@odata.type" = "microsoft.graph.security.ocrSettings"
	}
}
Update-MgSecurityCaseEdiscoveryCaseSetting -EdiscoveryCaseId $ediscoveryCaseId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryCaseSettings
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/update-mgsecuritycaseediscoverycasesetting
#>
function Update-MgSecurityCaseEdiscoveryCaseSetting {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryCaseSettings]
    # ediscoveryCaseSettings
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityOcrSettings]
    # ocrSettings
    # To construct, please use Get-Help -Online and see NOTES section for OCR properties and create a hash table.
    ${Ocr},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityRedundancyDetectionSettings]
    # redundancyDetectionSettings
    # To construct, please use Get-Help -Online and see NOTES section for REDUNDANCYDETECTION properties and create a hash table.
    ${RedundancyDetection},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityTopicModelingSettings]
    # topicModelingSettings
    # To construct, please use Get-Help -Online and see NOTES section for TOPICMODELING properties and create a hash table.
    ${TopicModeling},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseSetting_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseSetting_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseSetting_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseSetting_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Update the navigation property tags in security
.Description
Update the navigation property tags in security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewTag1
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/update-mgsecuritycaseediscoverycasetag
#>
function Update-MgSecurityCaseEdiscoveryCaseTag {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryReviewTag
    ${EdiscoveryReviewTagId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewTag1]
    # ediscoveryReviewTag
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
    # childSelectability
    ${ChildSelectability},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewTag1[]]
    # Returns the tags that are a child of a tag.
    # To construct, please use Get-Help -Online and see NOTES section for CHILDTAGS properties and create a hash table.
    ${ChildTags},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, please use Get-Help -Online and see NOTES section for CREATEDBY properties and create a hash table.
    ${CreatedBy},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Description},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${DisplayName},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewTag1]
    # ediscoveryReviewTag
    # To construct, please use Get-Help -Online and see NOTES section for PARENT properties and create a hash table.
    ${Parent},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseTag_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseTag_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseTag_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCaseTag_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Update the navigation property ediscoveryCases in security
.Description
Update the navigation property ediscoveryCases in security
.Example
Import-Module Microsoft.Graph.Security
$params = @{
	DisplayName = "My Case 1 - Renamed"
	Description = "Updated description"
}
Update-MgSecurityCaseEdiscoveryCase -EdiscoveryCaseId $ediscoveryCaseId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryCase1
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/update-mgsecuritycaseediscoverycase
#>
function Update-MgSecurityCaseEdiscoveryCase {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of ediscoveryCase
    ${EdiscoveryCaseId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryCase1]
    # ediscoveryCase
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, please use Get-Help -Online and see NOTES section for CLOSEDBY properties and create a hash table.
    ${ClosedBy},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The date and time when the case was closed.
    # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.
    # For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
    ${ClosedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryCustodian1[]]
    # Returns a list of case ediscoveryCustodian objects for this case.
    # To construct, please use Get-Help -Online and see NOTES section for CUSTODIANS properties and create a hash table.
    ${Custodians},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Description},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${DisplayName},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # The external case number for customer reference.
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
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphIdentitySet]
    # identitySet
    # To construct, please use Get-Help -Online and see NOTES section for LASTMODIFIEDBY properties and create a hash table.
    ${LastModifiedBy},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # .
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryNoncustodialDataSource1[]]
    # Returns a list of case ediscoveryNoncustodialDataSource objects for this case.
    # To construct, please use Get-Help -Online and see NOTES section for NONCUSTODIALDATASOURCES properties and create a hash table.
    ${NoncustodialDataSources},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityCaseOperation1[]]
    # Returns a list of case caseOperation objects for this case.
    # To construct, please use Get-Help -Online and see NOTES section for OPERATIONS properties and create a hash table.
    ${Operations},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewSet1[]]
    # Returns a list of eDiscoveryReviewSet objects in the case.
    # To construct, please use Get-Help -Online and see NOTES section for REVIEWSETS properties and create a hash table.
    ${ReviewSets},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoverySearch1[]]
    # Returns a list of eDiscoverySearch objects associated with this case.
    # To construct, please use Get-Help -Online and see NOTES section for SEARCHES properties and create a hash table.
    ${Searches},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryCaseSettings]
    # ediscoveryCaseSettings
    # To construct, please use Get-Help -Online and see NOTES section for SETTINGS properties and create a hash table.
    ${Settings},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # caseStatus
    ${Status},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryReviewTag1[]]
    # Returns a list of ediscoveryReviewTag objects associated to this case.
    # To construct, please use Get-Help -Online and see NOTES section for TAGS properties and create a hash table.
    ${Tags},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCase_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCase_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCase_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Security.private\Update-MgSecurityCaseEdiscoveryCase_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Update the navigation property cases in security
.Description
Update the navigation property cases in security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityCasesRoot1
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/update-mgsecuritycase
#>
function Update-MgSecurityCase {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityCasesRoot1]
    # casesRoot
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityEdiscoveryCase1[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for EDISCOVERYCASES properties and create a hash table.
    ${EdiscoveryCases},

    [Parameter(ParameterSetName='UpdateExpanded1')]
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
            Update1 = 'Microsoft.Graph.Security.private\Update-MgSecurityCase_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Security.private\Update-MgSecurityCase_UpdateExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Update the navigation property secureScoreControlProfiles in security
.Description
Update the navigation property secureScoreControlProfiles in security
.Example
Import-Module Microsoft.Graph.Security
$params = @{
	AssignedTo = ""
	Comment = "control is reviewed"
	State = "Reviewed"
	VendorInformation = @{
		Provider = "SecureScore"
		ProviderVersion = $null
		SubProvider = $null
		Vendor = "Microsoft"
	}
}
Update-MgSecuritySecureScoreControlProfile -SecureScoreControlProfileId $secureScoreControlProfileId -BodyParameter $params
.Example
Import-Module Microsoft.Graph.Security
$params = @{
	AssignedTo = ""
	Comment = "control is reviewed"
	State = "Reviewed"
	VendorInformation = @{
		Provider = "SecureScore"
		ProviderVersion = $null
		SubProvider = $null
		Vendor = "Microsoft"
	}
}
Update-MgSecuritySecureScoreControlProfile -SecureScoreControlProfileId $secureScoreControlProfileId -BodyParameter $params

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScoreControlProfile
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/update-mgsecuritysecurescorecontrolprofile
#>
function Update-MgSecuritySecureScoreControlProfile {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of secureScoreControlProfile
    ${SecureScoreControlProfileId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScoreControlProfile]
    # secureScoreControlProfile
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Control action type (Config, Review, Behavior).
    ${ActionType},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # URL to where the control can be actioned.
    ${ActionUrl},

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
    # GUID string for tenant ID.
    ${AzureTenantId},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphComplianceInformation[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for COMPLIANCEINFORMATION properties and create a hash table.
    ${ComplianceInformation},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Control action category (Identity, Data, Device, Apps, Infrastructure).
    ${ControlCategory},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScoreControlStateUpdate[]]
    # .
    # To construct, please use Get-Help -Online and see NOTES section for CONTROLSTATEUPDATES properties and create a hash table.
    ${ControlStateUpdates},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Flag to indicate if a control is depreciated.
    ${Deprecated},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Resource cost of implemmentating control (low, moderate, high).
    ${ImplementationCost},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # Time at which the control profile entity was last modified.
    # The Timestamp type represents date and time
    ${LastModifiedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Double]
    # max attainable score for the control.
    ${MaxScore},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Microsoft's stack ranking of control.
    ${Rank},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Description of what the control will help remediate.
    ${Remediation},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Description of the impact on users of the remediation.
    ${RemediationImpact},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Service that owns the control (Exchange, Sharepoint, Azure AD).
    ${Service},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # List of threats the control mitigates (accountBreach,dataDeletion,dataExfiltration,dataSpillage,
    ${Threats},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Tier},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # Title of the control.
    ${Title},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${UserImpact},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityVendorInformation]
    # securityVendorInformation
    # To construct, please use Get-Help -Online and see NOTES section for VENDORINFORMATION properties and create a hash table.
    ${VendorInformation},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.Security.private\Update-MgSecuritySecureScoreControlProfile_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Security.private\Update-MgSecuritySecureScoreControlProfile_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Security.private\Update-MgSecuritySecureScoreControlProfile_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Security.private\Update-MgSecuritySecureScoreControlProfile_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

<#
.Synopsis
Update the navigation property secureScores in security
.Description
Update the navigation property secureScores in security

.Inputs
Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScore
.Inputs
Microsoft.Graph.PowerShell.Models.ISecurityIdentity
.Outputs
System.Boolean
.Notes
Please use Get-Help -Online.
.Link
https://docs.microsoft.com/en-us/powershell/module/microsoft.graph.security/update-mgsecuritysecurescore
#>
function Update-MgSecuritySecureScore {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded1', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
[Microsoft.Graph.PowerShell.Profile('v1.0')]
param(
    [Parameter(ParameterSetName='Update1', Mandatory)]
    [Parameter(ParameterSetName='UpdateExpanded1', Mandatory)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [System.String]
    # key: id of secureScore
    ${SecureScoreId},

    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Path')]
    [Microsoft.Graph.PowerShell.Models.ISecurityIdentity]
    # Identity Parameter
    # To construct, please use Get-Help -Online and see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='Update1', Mandatory, ValueFromPipeline)]
    [Parameter(ParameterSetName='UpdateViaIdentity1', Mandatory, ValueFromPipeline)]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecureScore]
    # secureScore
    # To construct, please use Get-Help -Online and see NOTES section for BODYPARAMETER properties and create a hash table.
    ${BodyParameter},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Active user count of the given tenant.
    ${ActiveUserCount},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Collections.Hashtable]
    # Additional Parameters
    ${AdditionalProperties},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAverageComparativeScore[]]
    # Average score by different scopes (for example, average by industry, average by seating) and control category (Identity, Data, Device, Apps, Infrastructure) within the scope.
    # To construct, please use Get-Help -Online and see NOTES section for AVERAGECOMPARATIVESCORES properties and create a hash table.
    ${AverageComparativeScores},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # GUID string for tenant ID.
    ${AzureTenantId},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphControlScore[]]
    # Contains tenant scores for a set of controls.
    # To construct, please use Get-Help -Online and see NOTES section for CONTROLSCORES properties and create a hash table.
    ${ControlScores},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.DateTime]
    # The date when the entity is created.
    ${CreatedDateTime},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Double]
    # Tenant current attained score on specified date.
    ${CurrentScore},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String[]]
    # Microsoft-provided services for the tenant (for example, Exchange online, Skype, Sharepoint).
    ${EnabledServices},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.String]
    # .
    ${Id},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Int32]
    # Licensed user count of the given tenant.
    ${LicensedUserCount},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [System.Double]
    # Tenant maximum possible score on specified date.
    ${MaxScore},

    [Parameter(ParameterSetName='UpdateExpanded1')]
    [Parameter(ParameterSetName='UpdateViaIdentityExpanded1')]
    [Microsoft.Graph.PowerShell.Category('Body')]
    [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphSecurityVendorInformation]
    # securityVendorInformation
    # To construct, please use Get-Help -Online and see NOTES section for VENDORINFORMATION properties and create a hash table.
    ${VendorInformation},

    [Parameter(DontShow)]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Graph.PowerShell.Category('Runtime')]
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
            Update1 = 'Microsoft.Graph.Security.private\Update-MgSecuritySecureScore_Update1';
            UpdateExpanded1 = 'Microsoft.Graph.Security.private\Update-MgSecuritySecureScore_UpdateExpanded1';
            UpdateViaIdentity1 = 'Microsoft.Graph.Security.private\Update-MgSecuritySecureScore_UpdateViaIdentity1';
            UpdateViaIdentityExpanded1 = 'Microsoft.Graph.Security.private\Update-MgSecuritySecureScore_UpdateViaIdentityExpanded1';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
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
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCAl0VkCRyssaMG9
# ZWVezGbmTHxaGW/yjM9Hm8E0O8nyRaCCDYEwggX/MIID56ADAgECAhMzAAACzI61
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
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgYUaxSdgH
# 5rx64EUUr2x7uGmEzuLVvXURs9W5wZCF8s8wQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQCKA/omE0+tsHYv2EVPt5884dGPN9/TqXYrPGV+Kemr
# 69inTW/3gFBDG0igwC5WjK+aYmXuKxzHCbzmxOPKWXAEzjbmelsMOxY96yk+H7xo
# zFdSAY9CV9Bd8bNGeWW2EE1jAAiOI4c9M6y1DzGenvkyFCSZSHjQVn884vIWsrEd
# 9FoiFvHKaTmTXOX7G+n1KCSaT5WVi4qZ2AYpyzK5oGfbcF/qnqQqGnNZfwNY1hCD
# PNtEoxb4Wg0bH5DmH2fRHRBu0KYjcXTblMlro4jFASzwhuxMBpYUPCjZJZ4azNGW
# iCRSXpwuL9Rs8PuQtdQEm/RdFdpIWvXLsK6TRA5rb1DZoYIXADCCFvwGCisGAQQB
# gjcDAwExghbsMIIW6AYJKoZIhvcNAQcCoIIW2TCCFtUCAQMxDzANBglghkgBZQME
# AgEFADCCAVEGCyqGSIb3DQEJEAEEoIIBQASCATwwggE4AgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEIPiDQzziSArGUUz0CRlmCtJSyi/sJ+MXmZYSMM2E
# HNGeAgZjI1S3jtwYEzIwMjIwOTI4MTkzMDM0LjcwN1owBIACAfSggdCkgc0wgcox
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
# CRABBDAvBgkqhkiG9w0BCQQxIgQgAPvaeYTjdd8+n87TVk1WjoHZK3+A5WHu9g/W
# ZARiF6kwgfoGCyqGSIb3DQEJEAIvMYHqMIHnMIHkMIG9BCB2BNYC+B0105J2Ry6C
# fnZ0JA8JflZQQ6sLpHI3LbK9kDCBmDCBgKR+MHwxCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1w
# IFBDQSAyMDEwAhMzAAABlklbYuEv3fdPAAEAAAGWMCIEILzuhNIEqPeBqFiJuLYD
# WBIxKsX/L9oCD49BLWidg91eMA0GCSqGSIb3DQEBCwUABIICAI0l48fQ58ZztFTn
# Pu2wgc0aiRF2eBVA4WkZeTdDKfXLaI+gL32qQqas4TJSnF8Ill7jUdc+XXomOsVt
# z5jUYTrbXl3o/XdOJkZFxLGm0sx3o8NyrXCggyz8x0VD/VlDvlOp0z0FLBiz2w5F
# pQBJI3xF3UvGHD9ihPuh59clzpscbRDyTHVKmIk3gkBTRPO+g5kkJ2Dp53UI8Czu
# LRp0lTg9zPFx5vhtHo+6HvMN4ORpwdpJYeI5aejd3wiNi1E8Tw75pnTQo0TJZnzG
# U8eoDxTttBbAxHcSIzuEY9v5jkNjY9uDTCs3DnO+o3Of4wgXj5wQ8fCDE7jYUfad
# o6w8y3g93ZIUpRY/4l5WtJdYYqhQ0sYvaB3kqF400bVV/advgTJ4tdtDzwHXBux7
# PVcXK//2HNQL64OzBsBF2IvzERBC853CcqFVdhdGGRqpTOdmsgg8a9T/sKSjmJFj
# b/tQ9oBYqzC21IH/3V8+buch6LrZkjvVuyINH34XtZsESypdyDhQNcHOXJcw+4uz
# OxoP6k+NEmt1USojAeLJItj8LOYeK4mhclZk8mtROLos1dR5EQqpnuEssKeb631k
# 6UNwGL3igryCBktJqDV0Ej2NsCwXz4+qGAIgI8L49ZFYtqlbpSjdwOwS4Nc6OpZ8
# 2sjPr72nDGOh3slUzV0X83sWkbQn
# SIG # End signature block
