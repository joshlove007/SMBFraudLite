
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
Creates or updates the alert rule.
.Description
Creates or updates the alert rule.

.Link
https://learn.microsoft.com/powershell/module/az.securityinsights/new-azsentinelalertrule
#>
function New-AzSentinelAlertRule {
    [OutputType([Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.AlertRule])]
    [CmdletBinding(DefaultParameterSetName = 'FusionMLTI', PositionalBinding = $false, SupportsShouldProcess, ConfirmImpact = 'Medium')]
    param(
        [Parameter()]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Path')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Runtime.DefaultInfo(Script = '(Get-AzContext).Subscription.Id')]
        [System.String]
        # Gets subscription credentials which uniquely identify Microsoft Azure subscription.
        # The subscription ID forms part of the URI for every service call.
        ${SubscriptionId},
        
        [Parameter(Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Path')]
        [System.String]
        # The Resource Group Name.
        ${ResourceGroupName},

        [Parameter(Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Path')]
        [System.String]
        # The name of the workspace.
        ${WorkspaceName},

        [Parameter()]
        #[Alias('RuleId')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Path')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Runtime.DefaultInfo(Script = '(New-Guid).Guid')]
        [System.String]
        # The Id of the Rule.
        ${RuleId},

        [Parameter(Mandatory)]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.AlertRuleKind])]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.AlertRuleKind]
        # Kind of the the data connection
        ${Kind},

        [Parameter(ParameterSetName = 'FusionMLTI', Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        ${AlertRuleTemplate},

        [Parameter(ParameterSetName = 'MicrosoftSecurityIncidentCreation')]
        [Parameter(ParameterSetName = 'NRT')]
        [Parameter(ParameterSetName = 'Scheduled')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        ${AlertRuleTemplateName},
        
        [Parameter(ParameterSetName = 'FusionMLTI')]
        [Parameter(ParameterSetName = 'MicrosoftSecurityIncidentCreation')]
        [Parameter(ParameterSetName = 'NRT')]
        [Parameter(ParameterSetName = 'Scheduled')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [Switch]
        ${Enabled},

        [Parameter(ParameterSetName = 'MicrosoftSecurityIncidentCreation')]
        [Parameter(ParameterSetName = 'NRT')]
        [Parameter(ParameterSetName = 'Scheduled')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        ${Description},

        [Parameter(ParameterSetName = 'MicrosoftSecurityIncidentCreation')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        ${DisplayNamesFilter},

        [Parameter(ParameterSetName = 'MicrosoftSecurityIncidentCreation')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        ${DisplayNamesExcludeFilter},


        [Parameter(ParameterSetName = 'MicrosoftSecurityIncidentCreation', Mandatory)]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.MicrosoftSecurityProductName])]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.MicrosoftSecurityProductName]
        ${ProductFilter},
            
        [Parameter(ParameterSetName = 'MicrosoftSecurityIncidentCreation')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.AlertSeverity[]]
        #High, Medium, Low, Informational
        ${SeveritiesFilter},

        [Parameter(ParameterSetName = 'NRT', Mandatory)]
        [Parameter(ParameterSetName = 'Scheduled', Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        ${Query},
        
        [Parameter(ParameterSetName = 'NRT', Mandatory)]
        [Parameter(ParameterSetName = 'Scheduled', Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        ${DisplayName},

        [Parameter(ParameterSetName = 'NRT')]
        [Parameter(ParameterSetName = 'Scheduled')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Runtime.DefaultInfo(Script = 'New-TimeSpan -Hours 5')]
        [System.TimeSpan]
        ${SuppressionDuration},

        [Parameter(ParameterSetName = 'NRT')]
        [Parameter(ParameterSetName = 'Scheduled')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [Switch]
        ${SuppressionEnabled},

        [Parameter(ParameterSetName = 'NRT', Mandatory)]
        [Parameter(ParameterSetName = 'Scheduled', Mandatory)]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.AlertSeverity])]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.AlertSeverity]
        ${Severity},

        [Parameter(ParameterSetName = 'NRT')]
        [Parameter(ParameterSetName = 'Scheduled')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        #[Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.AttackTactic]
        [System.String]
        #InitialAccess, Execution, Persistence, PrivilegeEscalation, DefenseEvasion, CredentialAccess, Discovery, LateralMovement, Collection, Exfiltration, CommandAndControl, Impact, PreAttack
        ${Tactic},
        
        [Parameter(ParameterSetName = 'NRT')]
        [Parameter(ParameterSetName = 'Scheduled')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [Switch]
        ${CreateIncident},

        [Parameter(ParameterSetName = 'NRT')]
        [Parameter(ParameterSetName = 'Scheduled')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [Switch]
        ${GroupingConfigurationEnabled},

        [Parameter(ParameterSetName = 'NRT')]
        [Parameter(ParameterSetName = 'Scheduled')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [Switch]
        ${ReOpenClosedIncident},

        [Parameter(ParameterSetName = 'NRT')]
        [Parameter(ParameterSetName = 'Scheduled')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Runtime.DefaultInfo(Script = 'New-TimeSpan -Hours 5')]
        [System.TimeSpan]
        ${LookbackDuration},

        [Parameter(ParameterSetName = 'NRT')]
        [Parameter(ParameterSetName = 'Scheduled')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Runtime.DefaultInfo(Script = '"AllEntities"')]
        [ValidateSet('AllEntities', 'AnyAlert', 'Selected')]
        [System.String]
        ${MatchingMethod},
            
        
        [Parameter(ParameterSetName = 'NRT')]
        [Parameter(ParameterSetName = 'Scheduled')]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.AlertDetail])]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.AlertDetail]
        ${GroupByAlertDetail}, 
        
        [Parameter(ParameterSetName = 'NRT')]
        [Parameter(ParameterSetName = 'Scheduled')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [string[]] 
        ${GroupByCustomDetail},
        
        [Parameter(ParameterSetName = 'NRT')]
        [Parameter(ParameterSetName = 'Scheduled')]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.EntityMappingType])]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.EntityMappingType]
        ${GroupByEntity},
    
        
        [Parameter(ParameterSetName = 'NRT')]
        [Parameter(ParameterSetName = 'Scheduled')]
        #'Account', 'Host', 'IP', 'Malware', 'File', 'Process', 'CloudApplication', 'DNS', 'AzureResource', 'FileHash', 'RegistryKey', 'RegistryValue', 'SecurityGroup', 'URL', 'Mailbox', 'MailCluster', 'MailMessage', 'SubmissionMail'
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.EntityMapping]
        ${EntityMapping},

        [Parameter(ParameterSetName = 'NRT')]
        [Parameter(ParameterSetName = 'Scheduled')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        ${AlertDescriptionFormat},

        [Parameter(ParameterSetName = 'NRT')]
        [Parameter(ParameterSetName = 'Scheduled')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        ${AlertDisplayNameFormat},

        [Parameter(ParameterSetName = 'NRT')]
        [Parameter(ParameterSetName = 'Scheduled')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        ${AlertSeverityColumnName},

        [Parameter(ParameterSetName = 'NRT')]
        [Parameter(ParameterSetName = 'Scheduled')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.String]
        ${AlertTacticsColumnName},


        [Parameter(ParameterSetName = 'Scheduled', Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.TimeSpan]
        ${QueryFrequency},

        [Parameter(ParameterSetName = 'Scheduled', Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [System.TimeSpan]
        ${QueryPeriod},

        [Parameter(ParameterSetName = 'Scheduled', Mandatory)]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.TriggerOperator])]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.TriggerOperator]
        ${TriggerOperator},
        
        [Parameter(ParameterSetName = 'Scheduled', Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [int]
        ${TriggerThreshold},

        [Parameter(ParameterSetName = 'Scheduled')]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.EventGroupingAggregationKind])]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Support.EventGroupingAggregationKind]
        ${EventGroupingSettingAggregationKind},
            
        [Parameter()]
        [Alias('AzureRMContext', 'AzureCredential')]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Azure')]
        [System.Management.Automation.PSObject]
        # The credentials, account, tenant, and subscription used for communication with Azure.
        ${DefaultProfile},

        [Parameter()]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Run the command as a job
        ${AsJob},

        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Wait for .NET debugger to attach
        ${Break},

        [Parameter(DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Runtime.SendAsyncStep[]]
        # SendAsync Pipeline Steps to be appended to the front of the pipeline
        ${HttpPipelineAppend},

        [Parameter(DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Runtime.SendAsyncStep[]]
        # SendAsync Pipeline Steps to be prepended to the front of the pipeline
        ${HttpPipelinePrepend},

        [Parameter()]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Run the command asynchronously
        ${NoWait},

        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
        [System.Uri]
        # The URI for the proxy server to use
        ${Proxy},

        [Parameter(DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
        [System.Management.Automation.PSCredential]
        # Credentials for a proxy server to use for the remote call
        ${ProxyCredential},

        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Use the default credentials for the proxy
        ${ProxyUseDefaultCredentials}
    )

    process {
        try {
            #Fusion
            if ($PSBoundParameters['Kind'] -eq 'Fusion'){
                $AlertRule = [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.FusionAlertRule]::new()
                
                $AlertRule.AlertRuleTemplateName = $PSBoundParameters['AlertRuleTemplate']
                $null = $PSBoundParameters.Remove('AlertRuleTemplate')
                
                If($PSBoundParameters['Enabled']){
                    $AlertRule.Enabled = $true
                    $null = $PSBoundParameters.Remove('Enabled')
                }
                else{
                    $AlertRule.Enabled = $false
                }
            }
            #MSIC
            if($PSBoundParameters['Kind'] -eq 'MicrosoftSecurityIncidentCreation'){
                $AlertRule = [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.MicrosoftSecurityIncidentCreationAlertRule]::new()
                
                If($PSBoundParameters['AlertRuleTemplateName']){
                    $AlertRule.AlertRuleTemplateName = $PSBoundParameters['AlertRuleTemplateName']
                    $null = $PSBoundParameters.Remove('AlertRuleTemplateName')
                }
                
                If($PSBoundParameters['Enabled']){
                    $AlertRule.Enabled = $true
                    $null = $PSBoundParameters.Remove('Enabled')
                }
                else{
                    $AlertRule.Enabled = $false
                }
                
                If($PSBoundParameters['Description']){
                    $AlertRule.Enabled = $PSBoundParameters['Description']
                    $null = $PSBoundParameters.Remove('Description')
                }
                
                If($PSBoundParameters['DisplayNamesFilter']){
                    $AlertRule.Enabled = $PSBoundParameters['DisplayNamesFilter']
                    $null = $PSBoundParameters.Remove('DisplayNamesFilter')
                }
                
                If($PSBoundParameters['DisplayNamesExcludeFilter']){
                    $AlertRule.Enabled = $PSBoundParameters['DisplayNamesExcludeFilter']
                    $null = $PSBoundParameters.Remove('DisplayNamesExcludeFilter')
                }
                
                $AlertRule.ProductFilter = $PSBoundParameters['ProductFilter']
                $null = $PSBoundParameters.Remove('ProductFilter')

                If($PSBoundParameters['SeveritiesFilter']){
                    $AlertRule.Enabled = $PSBoundParameters['SeveritiesFilter']
                    $null = $PSBoundParameters.Remove('SeveritiesFilter')
                }
            }
            #ML
            if ($PSBoundParameters['Kind'] -eq 'MLBehaviorAnalytics'){
                $AlertRule = [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.MlBehaviorAnalyticsAlertRule]::new()
                
                $AlertRule.AlertRuleTemplateName = $PSBoundParameters['AlertRuleTemplate']
                $null = $PSBoundParameters.Remove('AlertRuleTemplate')
                
                If($PSBoundParameters['Enabled']){
                    $AlertRule.Enabled = $true
                    $null = $PSBoundParameters.Remove('Enabled')
                }
                else{
                    $AlertRule.Enabled = $false
                }
            }

            #NRT
            if($PSBoundParameters['Kind'] -eq 'NRT'){
                $AlertRule = [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.NrtAlertRule]::new()
                
                If($PSBoundParameters['AlertRuleTemplateName']){
                    $AlertRule.AlertRuleTemplateName = $PSBoundParameters['AlertRuleTemplateName']
                    $null = $PSBoundParameters.Remove('AlertRuleTemplateName')
                }
                
                If($PSBoundParameters['Enabled']){
                    $AlertRule.Enabled = $true
                    $null = $PSBoundParameters.Remove('Enabled')
                }
                else{
                    $AlertRule.Enabled = $false
                }
                
                If($PSBoundParameters['Description']){
                    $AlertRule.Enabled = $PSBoundParameters['Description']
                    $null = $PSBoundParameters.Remove('Description')
                }
                
                $AlertRule.Query = $PSBoundParameters['Query']
                $null = $PSBoundParameters.Remove('Query')
                
                $AlertRule.DisplayName = $PSBoundParameters['DisplayName']
                $null = $PSBoundParameters.Remove('DisplayName')
                
                $AlertRule.SuppressionDuration = $PSBoundParameters['SuppressionDuration']
                $null = $PSBoundParameters.Remove('SuppressionDuration')
                
                If($PSBoundParameters['SuppressionEnabled']){
                    $AlertRule.SuppressionEnabled = $PSBoundParameters['SuppressionEnabled']
                    $null = $PSBoundParameters.Remove('SuppressionEnabled')
                }
                else{
                    $AlertRule.SuppressionEnabled = $false
                }
                
                $AlertRule.Severity = $PSBoundParameters['Severity']
                $null = $PSBoundParameters.Remove('Severity')
                
                If($PSBoundParameters['Tactic']){
                    $AlertRule.Tactic = $PSBoundParameters['Tactic']
                    $null = $PSBoundParameters.Remove('Tactic')
                }
                
                If($PSBoundParameters['CreateIncident']){
                    $AlertRule.IncidentConfigurationCreateIncident = $PSBoundParameters['CreateIncident']
                    $null = $PSBoundParameters.Remove('CreateIncident')
                }
                else{
                    $AlertRule.IncidentConfigurationCreateIncident = $false
                }
                
                If($PSBoundParameters['GroupingConfigurationEnabled']){
                    $AlertRule.GroupingConfigurationEnabled = $PSBoundParameters['GroupingConfigurationEnabled']
                    $null = $PSBoundParameters.Remove('GroupingConfigurationEnabled')
                }
                else{
                    $AlertRule.GroupingConfigurationEnabled = $false
                }
                
                If($PSBoundParameters['ReOpenClosedIncident']){
                    $AlertRule.GroupingConfigurationReOpenClosedIncident = $PSBoundParameters['ReOpenClosedIncident']
                    $null = $PSBoundParameters.Remove('ReOpenClosedIncident')
                }
                else{
                    $AlertRule.GroupingConfigurationReOpenClosedIncident = $false
                }
                
                $AlertRule.GroupingConfigurationLookbackDuration = $PSBoundParameters['LookbackDuration']
                $null = $PSBoundParameters.Remove('LookbackDuration')
                
                $AlertRule.GroupingConfigurationMatchingMethod = $PSBoundParameters['MatchingMethod']
                $null = $PSBoundParameters.Remove('MatchingMethod')
                
                If($PSBoundParameters['GroupByAlertDetail']){
                    $AlertRule.GroupingConfigurationGroupByAlertDetail = $PSBoundParameters['GroupByAlertDetail']
                    $null = $PSBoundParameters.Remove('GroupByAlertDetail')
                }

                If($PSBoundParameters['GroupByCustomDetail']){
                    $AlertRule.GroupingConfigurationGroupByCustomDetail = $PSBoundParameters['GroupByCustomDetail']
                    $null = $PSBoundParameters.Remove('GroupByCustomDetail')
                }
                
                If($PSBoundParameters['GroupByEntity']){
                    $AlertRule.GroupingConfigurationGroupByEntity = $PSBoundParameters['GroupByEntity']
                    $null = $PSBoundParameters.Remove('GroupByEntity')
                }

                If($PSBoundParameters['EntityMapping']){
                    $AlertRule.EntityMapping = $PSBoundParameters['EntityMapping']
                    $null = $PSBoundParameters.Remove('EntityMapping')
                }

                If($PSBoundParameters['AlertDescriptionFormat']){
                    $AlertRule.AlertDetailOverrideAlertDescriptionFormat = $PSBoundParameters['AlertDescriptionFormat']
                    $null = $PSBoundParameters.Remove('AlertDescriptionFormat')
                }

                If($PSBoundParameters['AlertDisplayNameFormat']){
                    $AlertRule.AlertDetailOverrideAlertDisplayNameFormat = $PSBoundParameters['AlertDisplayNameFormat']
                    $null = $PSBoundParameters.Remove('AlertDisplayNameFormat')
                }

                If($PSBoundParameters['AlertSeverityColumnName']){
                    $AlertRule.AlertDetailOverrideAlertSeverityColumnName = $PSBoundParameters['AlertSeverityColumnName']
                    $null = $PSBoundParameters.Remove('AlertSeverityColumnName')
                }

                If($PSBoundParameters['AlertTacticsColumnName']){
                    $AlertRule.AlertDetailOverrideAlertTacticsColumnName = $PSBoundParameters['AlertTacticsColumnName']
                    $null = $PSBoundParameters.Remove('AlertTacticsColumnName')
                }
                
            }
            #Scheduled
            if ($PSBoundParameters['Kind'] -eq 'Scheduled'){
                $AlertRule = [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.ScheduledAlertRule]::new()
                
                If($PSBoundParameters['AlertRuleTemplateName']){
                    $AlertRule.AlertRuleTemplateName = $PSBoundParameters['AlertRuleTemplateName']
                    $null = $PSBoundParameters.Remove('AlertRuleTemplateName')
                }
                
                If($PSBoundParameters['Enabled']){
                    $AlertRule.Enabled = $true
                    $null = $PSBoundParameters.Remove('Enabled')
                }
                else{
                    $AlertRule.Enabled = $false
                }
                
                If($PSBoundParameters['Description']){
                    $AlertRule.Description = $PSBoundParameters['Description']
                    $null = $PSBoundParameters.Remove('Description')
                }
                
                $AlertRule.Query = $PSBoundParameters['Query']
                $null = $PSBoundParameters.Remove('Query')
                
                $AlertRule.DisplayName = $PSBoundParameters['DisplayName']
                $null = $PSBoundParameters.Remove('DisplayName')
                
                $AlertRule.SuppressionDuration = $PSBoundParameters['SuppressionDuration']
                $null = $PSBoundParameters.Remove('SuppressionDuration')
                
                If($PSBoundParameters['SuppressionEnabled']){
                    $AlertRule.SuppressionEnabled = $PSBoundParameters['SuppressionEnabled']
                    $null = $PSBoundParameters.Remove('SuppressionEnabled')
                }
                else{
                    $AlertRule.SuppressionEnabled = $false
                }
                
                $AlertRule.Severity = $PSBoundParameters['Severity']
                $null = $PSBoundParameters.Remove('Severity')
                
                If($PSBoundParameters['Tactic']){
                    $AlertRule.Tactic = $PSBoundParameters['Tactic']
                    $null = $PSBoundParameters.Remove('Tactic')
                }
                
                If($PSBoundParameters['CreateIncident']){
                    $AlertRule.IncidentConfigurationCreateIncident = $PSBoundParameters['CreateIncident']
                    $null = $PSBoundParameters.Remove('CreateIncident')
                }
                else{
                    $AlertRule.IncidentConfigurationCreateIncident = $false
                }
                
                If($PSBoundParameters['GroupingConfigurationEnabled']){
                    $AlertRule.GroupingConfigurationEnabled = $PSBoundParameters['GroupingConfigurationEnabled']
                    $null = $PSBoundParameters.Remove('GroupingConfigurationEnabled')
                }
                else{
                    $AlertRule.GroupingConfigurationEnabled = $false
                }
                
                If($PSBoundParameters['ReOpenClosedIncident']){
                    $AlertRule.GroupingConfigurationReOpenClosedIncident = $PSBoundParameters['ReOpenClosedIncident']
                    $null = $PSBoundParameters.Remove('ReOpenClosedIncident')
                }
                else{
                    $AlertRule.GroupingConfigurationReOpenClosedIncident = $false
                }
                
                $AlertRule.GroupingConfigurationLookbackDuration = $PSBoundParameters['LookbackDuration']
                $null = $PSBoundParameters.Remove('LookbackDuration')
                
                $AlertRule.GroupingConfigurationMatchingMethod = $PSBoundParameters['MatchingMethod']
                $null = $PSBoundParameters.Remove('MatchingMethod')
                
                If($PSBoundParameters['GroupByAlertDetail']){
                    $AlertRule.GroupingConfigurationGroupByAlertDetail = $PSBoundParameters['GroupByAlertDetail']
                    $null = $PSBoundParameters.Remove('GroupByAlertDetail')
                }

                If($PSBoundParameters['GroupByCustomDetail']){
                    $AlertRule.GroupingConfigurationGroupByCustomDetail = $PSBoundParameters['GroupByCustomDetail']
                    $null = $PSBoundParameters.Remove('GroupByCustomDetail')
                }
                
                If($PSBoundParameters['GroupByEntity']){
                    $AlertRule.GroupingConfigurationGroupByEntity = $PSBoundParameters['GroupByEntity']
                    $null = $PSBoundParameters.Remove('GroupByEntity')
                }

                If($PSBoundParameters['EntityMapping']){
                    $AlertRule.EntityMapping = $PSBoundParameters['EntityMapping']
                    $null = $PSBoundParameters.Remove('EntityMapping')
                }

                If($PSBoundParameters['AlertDescriptionFormat']){
                    $AlertRule.AlertDetailOverrideAlertDescriptionFormat = $PSBoundParameters['AlertDescriptionFormat']
                    $null = $PSBoundParameters.Remove('AlertDescriptionFormat')
                }

                If($PSBoundParameters['AlertDisplayNameFormat']){
                    $AlertRule.AlertDetailOverrideAlertDisplayNameFormat = $PSBoundParameters['AlertDisplayNameFormat']
                    $null = $PSBoundParameters.Remove('AlertDisplayNameFormat')
                }

                If($PSBoundParameters['AlertSeverityColumnName']){
                    $AlertRule.AlertDetailOverrideAlertSeverityColumnName = $PSBoundParameters['AlertSeverityColumnName']
                    $null = $PSBoundParameters.Remove('AlertSeverityColumnName')
                }

                If($PSBoundParameters['AlertTacticsColumnName']){
                    $AlertRule.AlertDetailOverrideAlertTacticsColumnName = $PSBoundParameters['AlertTacticsColumnName']
                    $null = $PSBoundParameters.Remove('AlertTacticsColumnName')
                }

                $AlertRule.QueryFrequency = $PSBoundParameters['QueryFrequency']
                $null = $PSBoundParameters.Remove('QueryFrequency')

                $AlertRule.QueryPeriod = $PSBoundParameters['QueryPeriod']
                $null = $PSBoundParameters.Remove('QueryPeriod')

                $AlertRule.TriggerOperator = $PSBoundParameters['TriggerOperator']
                $null = $PSBoundParameters.Remove('TriggerOperator')

                $AlertRule.TriggerThreshold = $PSBoundParameters['TriggerThreshold']
                $null = $PSBoundParameters.Remove('TriggerThreshold')

                If($PSBoundParameters['EventGroupingSettingAggregationKind']){
                    $AlertRule.EventGroupingSettingAggregationKind = $PSBoundParameters['EventGroupingSettingAggregationKind']
                    $null = $PSBoundParameters.Remove('EventGroupingSettingAggregationKind')
                }
            }
            #TI
            if ($PSBoundParameters['Kind'] -eq 'ThreatIntelligence'){
                $AlertRule = [Microsoft.Azure.PowerShell.Cmdlets.SecurityInsights.Models.Api20210901Preview.ThreatIntelligenceAlertRule]::new()
                
                $AlertRule.AlertRuleTemplateName = $PSBoundParameters['AlertRuleTemplate']
                $null = $PSBoundParameters.Remove('AlertRuleTemplate')
                
                If($PSBoundParameters['Enabled']){
                    $AlertRule.Enabled = $true
                    $null = $PSBoundParameters.Remove('Enabled')
                }
                else {
                    $AlertRule.Enabled = $false
                }
            }
            
            $null = $PSBoundParameters.Remove('FusionMLTI')

            $AlertRule.Kind = $PSBoundParameters['Kind']
            $null = $PSBoundParameters.Remove('Kind')

            $null = $PSBoundParameters.Add('AlertRule', $AlertRule) 

            Az.SecurityInsights.internal\New-AzSentinelAlertRule @PSBoundParameters
        }
        catch {
            throw
        }
    }
}
# SIG # Begin signature block
# MIInrQYJKoZIhvcNAQcCoIInnjCCJ5oCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCDbiJOSYKt8AyBJ
# GHGkLwZDkMyVsJ6Bz5wwusKPbe88+KCCDYEwggX/MIID56ADAgECAhMzAAACzI61
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
# RcBCyZt2WwqASGv9eZ/BvW1taslScxMNelDNMYIZgjCCGX4CAQEwgZUwfjELMAkG
# A1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQx
# HjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEoMCYGA1UEAxMfTWljcm9z
# b2Z0IENvZGUgU2lnbmluZyBQQ0EgMjAxMQITMwAAAsyOtZamvdHJTgAAAAACzDAN
# BglghkgBZQMEAgEFAKCBrjAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgor
# BgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgAv1tTNrc
# 1lH0lpR8UznT1/z2mHb8v+VxNJbVzPH1n4wwQgYKKwYBBAGCNwIBDDE0MDKgFIAS
# AE0AaQBjAHIAbwBzAG8AZgB0oRqAGGh0dHA6Ly93d3cubWljcm9zb2Z0LmNvbTAN
# BgkqhkiG9w0BAQEFAASCAQBo+gdl4MEjJZ2mOihaYNfgfFkiK2WFh9Yvriua+VmE
# o8qmrtSXSef752ZLdpjv2x1/UnFroI1Nt0PSKBCbkMN/62YE4L5mP4KtNXrfHe+p
# JY1wcMQDTFy06sJ+YAN2flgnHEhE3GeWUnHbcOrE4gqJqoRDKtS1JesTQ9Ih1fH8
# BOfDuQH122JF1mZgSHUD/D8pkP53oLMmLvuTtRfWOgXhO9/a3mIjvh7ENJPSGZ3d
# Nk/qaImDQYfhIehaXVJmXtAJETMuL7e4ZLzilD/cAFwxeKleHvU2YblrWmC/vZ7n
# V8P5kic4N4xl/Yt8C6ShkpU7viNxHjEr/EnSrWnlr2NvoYIXDDCCFwgGCisGAQQB
# gjcDAwExghb4MIIW9AYJKoZIhvcNAQcCoIIW5TCCFuECAQMxDzANBglghkgBZQME
# AgEFADCCAVUGCyqGSIb3DQEJEAEEoIIBRASCAUAwggE8AgEBBgorBgEEAYRZCgMB
# MDEwDQYJYIZIAWUDBAIBBQAEIJ4QywoUKK8ddQXnuSHWSW6pD8zLgdt0OLN0i7wj
# +yk+AgZjoaF9+EoYEzIwMjMwMTA2MTAwNTE3Ljk4MVowBIACAfSggdSkgdEwgc4x
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKTAnBgNVBAsTIE1p
# Y3Jvc29mdCBPcGVyYXRpb25zIFB1ZXJ0byBSaWNvMSYwJAYDVQQLEx1UaGFsZXMg
# VFNTIEVTTjowQTU2LUUzMjktNEQ0RDElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUt
# U3RhbXAgU2VydmljZaCCEV8wggcQMIIE+KADAgECAhMzAAABpzW7LsJkhVApAAEA
# AAGnMA0GCSqGSIb3DQEBCwUAMHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNo
# aW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29y
# cG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEw
# MB4XDTIyMDMwMjE4NTEyMloXDTIzMDUxMTE4NTEyMlowgc4xCzAJBgNVBAYTAlVT
# MRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQK
# ExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKTAnBgNVBAsTIE1pY3Jvc29mdCBPcGVy
# YXRpb25zIFB1ZXJ0byBSaWNvMSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjowQTU2
# LUUzMjktNEQ0RDElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2Vydmlj
# ZTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAO0jOMYdUAXecCWm5V6T
# RoQZ4hsPLe0Vp6CwxFiTA5l867fAbDyxnKzdfBsf/0XJVXzIkcvzCESXoklvMDBD
# a97SEv+CuLEIooMbFBH1WeYgmLVO9TbbLStJilNITmQQQ4FB5qzMEsDfpmaZZMWW
# gdOjoSQed9UrjjmcuWsSskntiaUD/VQdQcLMnpeUGc7CQsAYo9HcIMb1H8DTcZ7y
# Ae3aOYf766P2OT553/4hdnJ9Kbp/FfDeUAVYuEc1wZlmbPdRa/uCx4iKXpt80/5w
# oAGSDl8vSNFxi4umXKCkwWHm8GeDZ3tOKzMIcIY/64FtpdqpNwbqGa3GkJToEFPR
# 6D6XJ0WyqebZvOZjMQEeLCJIrSnF4LbkkfkX4D4scjKz92lI9LRurhMPTBEQ6pw3
# iGsEPY+Jrcx/DJmyQWqbpN3FskWu9xhgzYoYsRuisCb5FIMShiallzEzum5xLE4U
# 5fuxEbwk0uY9ZVDNVfEhgiQedcSAd3GWvVM36gtYy6QJfixD7ltwjSm5sVa1voBf
# 2WZgCC3r4RE7VnovlqbCd3nHyXv5+8UGTLq7qRdRQQaBQXekT9UjUubcNS8ZYeZw
# K8d2etD98mSI4MqXcMySRKUJ9OZVQNWzI3LyS5+CjIssBHdv19aM6CjXQuZkkmlZ
# OtMqkLRg1tmhgI61yFC+jxB3AgMBAAGjggE2MIIBMjAdBgNVHQ4EFgQUH2y4fwWY
# LjCFb+EOQgPz9PpaRYMwHwYDVR0jBBgwFoAUn6cVXQBeYl2D9OXSZacbUzUZ6XIw
# XwYDVR0fBFgwVjBUoFKgUIZOaHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3BraW9w
# cy9jcmwvTWljcm9zb2Z0JTIwVGltZS1TdGFtcCUyMFBDQSUyMDIwMTAoMSkuY3Js
# MGwGCCsGAQUFBwEBBGAwXjBcBggrBgEFBQcwAoZQaHR0cDovL3d3dy5taWNyb3Nv
# ZnQuY29tL3BraW9wcy9jZXJ0cy9NaWNyb3NvZnQlMjBUaW1lLVN0YW1wJTIwUENB
# JTIwMjAxMCgxKS5jcnQwDAYDVR0TAQH/BAIwADATBgNVHSUEDDAKBggrBgEFBQcD
# CDANBgkqhkiG9w0BAQsFAAOCAgEATxL6MfPZOhR91DHShlzal7B8vOCUvzlvbVha
# 0UzhZfvIcZA/bT3XTXbQPLnIDWlRdjQX7PGkORhX/mpjZCC5J7fD3TJMn9ZQQ8MX
# nJ0sx3/QJIlNgPVaOpk9Yk1YEqyItOyPHr3Om3v/q9h5f5qDk0IMV2taosze0JGl
# M3M5z7bGkDly+TfhH9lI03D/FzLjjzW8EtvcqmmH68QHdTsl84NWGkd2dUlVF2aB
# WMUprb8H9EhPUQcBcpf11IAj+f04yB3ncQLh+P+PSS2kxNLLeRg9CWbmsugplYP1
# D5wW+aH2mdyBlPXZMIaERJFvZUZyD8RfJ8AsE3uU3JSd408QBDaXDUf94Ki3wEXT
# tl8JQItGc3ixRYWNIghraI4h3d/+266OB6d0UM2iBXSqwz8tdj+xSST6G7ZYqxat
# Ezt806T1BBHe9tZ/mr2S52UjJgAVQBgCQiiiixNO27g5Qy4CDS94vT4nfC2lXwLl
# hrAcNqnAJKmRqK8ehI50TTIZGONhdhGcM5xUVeHmeRy9G6ufU6B6Ob0rW6LXY2qT
# LXvgt9/x/XEh1CrnuWeBWa9E307AbePaBopu8+WnXjXy6N01j/AVBq1TyKnQX1nS
# MjU9gZ3EaG8oS/zNM59HK/IhnAzWeVcdBYrq/hsu9JMvBpF+ZEQY2ZWpbEJm7ELl
# /CuRIPAwggdxMIIFWaADAgECAhMzAAAAFcXna54Cm0mZAAAAAAAVMA0GCSqGSIb3
# DQEBCwUAMIGIMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4G
# A1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMTIw
# MAYDVQQDEylNaWNyb3NvZnQgUm9vdCBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkgMjAx
# MDAeFw0yMTA5MzAxODIyMjVaFw0zMDA5MzAxODMyMjVaMHwxCzAJBgNVBAYTAlVT
# MRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQK
# ExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1l
# LVN0YW1wIFBDQSAyMDEwMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA
# 5OGmTOe0ciELeaLL1yR5vQ7VgtP97pwHB9KpbE51yMo1V/YBf2xK4OK9uT4XYDP/
# XE/HZveVU3Fa4n5KWv64NmeFRiMMtY0Tz3cywBAY6GB9alKDRLemjkZrBxTzxXb1
# hlDcwUTIcVxRMTegCjhuje3XD9gmU3w5YQJ6xKr9cmmvHaus9ja+NSZk2pg7uhp7
# M62AW36MEBydUv626GIl3GoPz130/o5Tz9bshVZN7928jaTjkY+yOSxRnOlwaQ3K
# Ni1wjjHINSi947SHJMPgyY9+tVSP3PoFVZhtaDuaRr3tpK56KTesy+uDRedGbsoy
# 1cCGMFxPLOJiss254o2I5JasAUq7vnGpF1tnYN74kpEeHT39IM9zfUGaRnXNxF80
# 3RKJ1v2lIH1+/NmeRd+2ci/bfV+AutuqfjbsNkz2K26oElHovwUDo9Fzpk03dJQc
# NIIP8BDyt0cY7afomXw/TNuvXsLz1dhzPUNOwTM5TI4CvEJoLhDqhFFG4tG9ahha
# YQFzymeiXtcodgLiMxhy16cg8ML6EgrXY28MyTZki1ugpoMhXV8wdJGUlNi5UPkL
# iWHzNgY1GIRH29wb0f2y1BzFa/ZcUlFdEtsluq9QBXpsxREdcu+N+VLEhReTwDwV
# 2xo3xwgVGD94q0W29R6HXtqPnhZyacaue7e3PmriLq0CAwEAAaOCAd0wggHZMBIG
# CSsGAQQBgjcVAQQFAgMBAAEwIwYJKwYBBAGCNxUCBBYEFCqnUv5kxJq+gpE8RjUp
# zxD/LwTuMB0GA1UdDgQWBBSfpxVdAF5iXYP05dJlpxtTNRnpcjBcBgNVHSAEVTBT
# MFEGDCsGAQQBgjdMg30BATBBMD8GCCsGAQUFBwIBFjNodHRwOi8vd3d3Lm1pY3Jv
# c29mdC5jb20vcGtpb3BzL0RvY3MvUmVwb3NpdG9yeS5odG0wEwYDVR0lBAwwCgYI
# KwYBBQUHAwgwGQYJKwYBBAGCNxQCBAweCgBTAHUAYgBDAEEwCwYDVR0PBAQDAgGG
# MA8GA1UdEwEB/wQFMAMBAf8wHwYDVR0jBBgwFoAU1fZWy4/oolxiaNE9lJBb186a
# GMQwVgYDVR0fBE8wTTBLoEmgR4ZFaHR0cDovL2NybC5taWNyb3NvZnQuY29tL3Br
# aS9jcmwvcHJvZHVjdHMvTWljUm9vQ2VyQXV0XzIwMTAtMDYtMjMuY3JsMFoGCCsG
# AQUFBwEBBE4wTDBKBggrBgEFBQcwAoY+aHR0cDovL3d3dy5taWNyb3NvZnQuY29t
# L3BraS9jZXJ0cy9NaWNSb29DZXJBdXRfMjAxMC0wNi0yMy5jcnQwDQYJKoZIhvcN
# AQELBQADggIBAJ1VffwqreEsH2cBMSRb4Z5yS/ypb+pcFLY+TkdkeLEGk5c9MTO1
# OdfCcTY/2mRsfNB1OW27DzHkwo/7bNGhlBgi7ulmZzpTTd2YurYeeNg2LpypglYA
# A7AFvonoaeC6Ce5732pvvinLbtg/SHUB2RjebYIM9W0jVOR4U3UkV7ndn/OOPcbz
# aN9l9qRWqveVtihVJ9AkvUCgvxm2EhIRXT0n4ECWOKz3+SmJw7wXsFSFQrP8DJ6L
# GYnn8AtqgcKBGUIZUnWKNsIdw2FzLixre24/LAl4FOmRsqlb30mjdAy87JGA0j3m
# Sj5mO0+7hvoyGtmW9I/2kQH2zsZ0/fZMcm8Qq3UwxTSwethQ/gpY3UA8x1RtnWN0
# SCyxTkctwRQEcb9k+SS+c23Kjgm9swFXSVRk2XPXfx5bRAGOWhmRaw2fpCjcZxko
# JLo4S5pu+yFUa2pFEUep8beuyOiJXk+d0tBMdrVXVAmxaQFEfnyhYWxz/gq77EFm
# PWn9y8FBSX5+k77L+DvktxW/tM4+pTFRhLy/AsGConsXHRWJjXD+57XQKBqJC482
# 2rpM+Zv/Cuk0+CQ1ZyvgDbjmjJnW4SLq8CdCPSWU5nR0W2rRnj7tfqAxM328y+l7
# vzhwRNGQ8cirOoo6CGJ/2XBjU02N7oJtpQUQwXEGahC0HVUzWLOhcGbyoYIC0jCC
# AjsCAQEwgfyhgdSkgdEwgc4xCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5n
# dG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9y
# YXRpb24xKTAnBgNVBAsTIE1pY3Jvc29mdCBPcGVyYXRpb25zIFB1ZXJ0byBSaWNv
# MSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjowQTU2LUUzMjktNEQ0RDElMCMGA1UE
# AxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2VydmljZaIjCgEBMAcGBSsOAwIaAxUA
# wH7vHimSAzeDLN0qzWNb2p2vRH+ggYMwgYCkfjB8MQswCQYDVQQGEwJVUzETMBEG
# A1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWlj
# cm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFt
# cCBQQ0EgMjAxMDANBgkqhkiG9w0BAQUFAAIFAOdh4IgwIhgPMjAyMzAxMDYwMzQ5
# MjhaGA8yMDIzMDEwNzAzNDkyOFowdzA9BgorBgEEAYRZCgQBMS8wLTAKAgUA52Hg
# iAIBADAKAgEAAgIM8QIB/zAHAgEAAgIRVzAKAgUA52MyCAIBADA2BgorBgEEAYRZ
# CgQCMSgwJjAMBgorBgEEAYRZCgMCoAowCAIBAAIDB6EgoQowCAIBAAIDAYagMA0G
# CSqGSIb3DQEBBQUAA4GBAD4m0ZBn4zVpaK+ij9UJqetIW54/98DfylX4TnRytIbz
# hR+fJvQMYE3t6j8wpAPNT3Y4HlypEBGhLwss1yhAGDewixZzzVHT85DYTp09wArr
# C6PQUzYZ3jixSvKr6TOhAgdEwjWb/lg2GDDCbtrM4AnjlICZcvUN82y+TNkliDwL
# MYIEDTCCBAkCAQEwgZMwfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0
# b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3Jh
# dGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTACEzMA
# AAGnNbsuwmSFUCkAAQAAAacwDQYJYIZIAWUDBAIBBQCgggFKMBoGCSqGSIb3DQEJ
# AzENBgsqhkiG9w0BCRABBDAvBgkqhkiG9w0BCQQxIgQg1H7xauhpubxJOjsHdYQd
# t2aS7MZ291zmkUY4WFTjoEwwgfoGCyqGSIb3DQEJEAIvMYHqMIHnMIHkMIG9BCBH
# 8H/nCZUC4L0Yqbz3sH3w5kzhwJ4RqCkXXKxNPtqOGzCBmDCBgKR+MHwxCzAJBgNV
# BAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4w
# HAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29m
# dCBUaW1lLVN0YW1wIFBDQSAyMDEwAhMzAAABpzW7LsJkhVApAAEAAAGnMCIEIFCr
# b1bghF3ycqhv2KWjKnz6/HtTXiN1ETD6AhvLwU3rMA0GCSqGSIb3DQEBCwUABIIC
# AEyNTVmWzecx0rW9H7WNXJzmWci37wWzjb2Pjp1Sm/Gz/0kdBY7YxHyD7Cx3pdWa
# hrNFekztHeUGRbP4lS8OC0kLrrvPqLhlvLjfWfoH96yYLj1ANyMROyGhCU0gesKr
# PlySnJ3DPMfRKNEwhuhWYa/bEsZz/XQhcbS/SjH7BsPTAbjQU39d1yqMGWq892tv
# vvawyI3a4I+DRKEoYIs3c9RF5kvZj7aDTsXpk88Buu4LPNxRitfjY2/gP6fIndW3
# sQW0hqeXouzE+qYORZE0BgW19v8kZBRReVg67YZA341N7s0JwjGPHhWShDs4koC1
# Y1TVP0OdHRdPFT8/FRrIAbHEhPYdLGrU4heZ272o42U3qUWOmxzL+034Y+RJ53bp
# E6nMwasvyAMbzGn9SINLZEhF10xgZ8IlKAYDAtD1x4W8mx6nnEqCLSuTo3Om+ror
# zliFU58Pb3cs/7bIY/NOjaXZFUWR0rQA2Z86G1f3YqLHawIh80EK8sYzuzbk1oeD
# kkclpbsIrF5mj558qRSA/mziIWg1DHIEqwm62FHbP5xc8B7C+PwFkCKXTfQ8DIlm
# RELa+KNkCaLrslTJCJDlEbe4yBOwGgYR9UzkuRNDFXShsrcIuSbQTVs0yXPai7kj
# 2TPMj1YyBPuBbyE8FliidyOpo0y2WcbmcpdnHxPZ5rGU
# SIG # End signature block
