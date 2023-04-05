#
# Module manifest for module 'Microsoft.Graph.Compliance'
#
# Generated by: Microsoft Corporation
#
# Generated on: 9/28/2022
#

@{

# Script module or binary module file associated with this manifest.
RootModule = './Microsoft.Graph.Compliance.psm1'

# Version number of this module.
ModuleVersion = '1.12.2'

# Supported PSEditions
CompatiblePSEditions = 'Core', 'Desktop'

# ID used to uniquely identify this module
GUID = '7478368f-6e69-4d5a-a06d-07ae47a87ec4'

# Author of this module
Author = 'Microsoft Corporation'

# Company or vendor of this module
CompanyName = 'Microsoft Corporation'

# Copyright statement for this module
Copyright = 'Microsoft Corporation. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Microsoft Graph PowerShell Cmdlets'

# Minimum version of the PowerShell engine required by this module
PowerShellVersion = '5.1'

# Name of the PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
DotNetFrameworkVersion = '4.7.2'

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# ClrVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
RequiredModules = @(@{ModuleName = 'Microsoft.Graph.Authentication'; RequiredVersion = '1.12.2'; })

# Assemblies that must be loaded prior to importing this module
RequiredAssemblies = './bin/Microsoft.Graph.Compliance.private.dll'

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = './Microsoft.Graph.Compliance.format.ps1xml'

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = 'Add-MgComplianceEdiscoveryCaseCustodianHold', 
               'Add-MgComplianceEdiscoveryCaseNoncustodialDataSourceHold', 
               'Add-MgComplianceEdiscoveryCaseReviewSetQueryTag', 
               'Add-MgComplianceEdiscoveryCaseReviewSetToReviewSet', 
               'Clear-MgComplianceEdiscoveryCaseSourceCollectionData', 
               'Close-MgComplianceEdiscoveryCase', 
               'Export-MgComplianceEdiscoveryCaseReviewSet', 'Get-MgCompliance', 
               'Get-MgComplianceEdiscovery', 'Get-MgComplianceEdiscoveryCase', 
               'Get-MgComplianceEdiscoveryCaseCustodian', 
               'Get-MgComplianceEdiscoveryCaseCustodianSiteSource', 
               'Get-MgComplianceEdiscoveryCaseCustodianSiteSourceSite', 
               'Get-MgComplianceEdiscoveryCaseCustodianUnifiedGroupSource', 
               'Get-MgComplianceEdiscoveryCaseCustodianUnifiedGroupSourceGroup', 
               'Get-MgComplianceEdiscoveryCaseCustodianUserSource', 
               'Get-MgComplianceEdiscoveryCaseLegalHold', 
               'Get-MgComplianceEdiscoveryCaseLegalHoldSiteSource', 
               'Get-MgComplianceEdiscoveryCaseLegalHoldSiteSourceSite', 
               'Get-MgComplianceEdiscoveryCaseLegalHoldUnifiedGroupSource', 
               'Get-MgComplianceEdiscoveryCaseLegalHoldUnifiedGroupSourceGroup', 
               'Get-MgComplianceEdiscoveryCaseLegalHoldUserSource', 
               'Get-MgComplianceEdiscoveryCaseNoncustodialDataSource', 
               'Get-MgComplianceEdiscoveryCaseOperation', 
               'Get-MgComplianceEdiscoveryCaseReviewSet', 
               'Get-MgComplianceEdiscoveryCaseReviewSetQuery', 
               'Get-MgComplianceEdiscoveryCaseSetting', 
               'Get-MgComplianceEdiscoveryCaseSourceCollection', 
               'Get-MgComplianceEdiscoveryCaseSourceCollectionAdditionalSource', 
               'Get-MgComplianceEdiscoveryCaseSourceCollectionAddToReviewSetOperation', 
               'Get-MgComplianceEdiscoveryCaseSourceCollectionCustodianSource', 
               'Get-MgComplianceEdiscoveryCaseSourceCollectionLastEstimateStatisticsOperation', 
               'Get-MgComplianceEdiscoveryCaseSourceCollectionNoncustodialSource', 
               'Get-MgComplianceEdiscoveryCaseTag', 
               'Get-MgComplianceEdiscoveryCaseTagChildTag', 
               'Get-MgComplianceEdiscoveryCaseTagParent', 
               'Initialize-MgComplianceEdiscoveryCaseCustodian', 
               'Invoke-MgAsComplianceEdiscoveryCaseTagHierarchy', 
               'Invoke-MgEstimateComplianceEdiscoveryCaseSourceCollectionStatistics', 
               'Invoke-MgReopenComplianceEdiscoveryCase', 
               'New-MgComplianceEdiscoveryCase', 
               'New-MgComplianceEdiscoveryCaseCustodian', 
               'New-MgComplianceEdiscoveryCaseCustodianSiteSource', 
               'New-MgComplianceEdiscoveryCaseCustodianUnifiedGroupSource', 
               'New-MgComplianceEdiscoveryCaseCustodianUserSource', 
               'New-MgComplianceEdiscoveryCaseLegalHold', 
               'New-MgComplianceEdiscoveryCaseLegalHoldSiteSource', 
               'New-MgComplianceEdiscoveryCaseLegalHoldUnifiedGroupSource', 
               'New-MgComplianceEdiscoveryCaseLegalHoldUserSource', 
               'New-MgComplianceEdiscoveryCaseNoncustodialDataSource', 
               'New-MgComplianceEdiscoveryCaseOperation', 
               'New-MgComplianceEdiscoveryCaseReviewSet', 
               'New-MgComplianceEdiscoveryCaseReviewSetQuery', 
               'New-MgComplianceEdiscoveryCaseSourceCollection', 
               'New-MgComplianceEdiscoveryCaseSourceCollectionAdditionalSource', 
               'New-MgComplianceEdiscoveryCaseTag', 
               'Publish-MgComplianceEdiscoveryCaseCustodian', 
               'Publish-MgComplianceEdiscoveryCaseNoncustodialDataSource', 
               'Remove-MgComplianceEdiscovery', 
               'Remove-MgComplianceEdiscoveryCase', 
               'Remove-MgComplianceEdiscoveryCaseCustodian', 
               'Remove-MgComplianceEdiscoveryCaseCustodianHold', 
               'Remove-MgComplianceEdiscoveryCaseCustodianSiteSource', 
               'Remove-MgComplianceEdiscoveryCaseCustodianUnifiedGroupSource', 
               'Remove-MgComplianceEdiscoveryCaseCustodianUserSource', 
               'Remove-MgComplianceEdiscoveryCaseLegalHold', 
               'Remove-MgComplianceEdiscoveryCaseLegalHoldSiteSource', 
               'Remove-MgComplianceEdiscoveryCaseLegalHoldUnifiedGroupSource', 
               'Remove-MgComplianceEdiscoveryCaseLegalHoldUserSource', 
               'Remove-MgComplianceEdiscoveryCaseNoncustodialDataSource', 
               'Remove-MgComplianceEdiscoveryCaseNoncustodialDataSourceHold', 
               'Remove-MgComplianceEdiscoveryCaseOperation', 
               'Remove-MgComplianceEdiscoveryCaseReviewSet', 
               'Remove-MgComplianceEdiscoveryCaseReviewSetQuery', 
               'Remove-MgComplianceEdiscoveryCaseSetting', 
               'Remove-MgComplianceEdiscoveryCaseSourceCollection', 
               'Remove-MgComplianceEdiscoveryCaseSourceCollectionAdditionalSource', 
               'Remove-MgComplianceEdiscoveryCaseTag', 
               'Reset-MgComplianceEdiscoveryCaseSettingToDefault', 
               'Update-MgCompliance', 'Update-MgComplianceEdiscovery', 
               'Update-MgComplianceEdiscoveryCase', 
               'Update-MgComplianceEdiscoveryCaseCustodian', 
               'Update-MgComplianceEdiscoveryCaseCustodianIndex', 
               'Update-MgComplianceEdiscoveryCaseCustodianSiteSource', 
               'Update-MgComplianceEdiscoveryCaseCustodianUnifiedGroupSource', 
               'Update-MgComplianceEdiscoveryCaseCustodianUserSource', 
               'Update-MgComplianceEdiscoveryCaseLegalHold', 
               'Update-MgComplianceEdiscoveryCaseLegalHoldSiteSource', 
               'Update-MgComplianceEdiscoveryCaseLegalHoldUnifiedGroupSource', 
               'Update-MgComplianceEdiscoveryCaseLegalHoldUserSource', 
               'Update-MgComplianceEdiscoveryCaseNoncustodialDataSource', 
               'Update-MgComplianceEdiscoveryCaseNoncustodialDataSourceIndex', 
               'Update-MgComplianceEdiscoveryCaseOperation', 
               'Update-MgComplianceEdiscoveryCaseReviewSet', 
               'Update-MgComplianceEdiscoveryCaseReviewSetQuery', 
               'Update-MgComplianceEdiscoveryCaseSetting', 
               'Update-MgComplianceEdiscoveryCaseSourceCollection', 
               'Update-MgComplianceEdiscoveryCaseSourceCollectionAdditionalSource', 
               'Update-MgComplianceEdiscoveryCaseTag'

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
# VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = '*'

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    #Profiles of this module
    Profiles =  @('v1.0','v1.0-beta')

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = 'Microsoft','Office365','Graph','PowerShell','PSModule','PSIncludes_Cmdlet'

        # A URL to the license for this module.
        LicenseUri = 'https://aka.ms/devservicesagreement'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/microsoftgraph/msgraph-sdk-powershell'

        # A URL to an icon representing this module.
        IconUri = 'https://raw.githubusercontent.com/microsoftgraph/msgraph-sdk-powershell/master/documentation/images/graph_color256.png'

        # ReleaseNotes of this module
        ReleaseNotes = 'See https://aka.ms/GraphPowerShell-Release.'

        # Prerelease string of this module
        # Prerelease = ''

        # Flag to indicate whether the module requires explicit user acceptance for install/update/save
        # RequireLicenseAcceptance = $false

        # External dependent modules of this module
        # ExternalModuleDependencies = @()

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

