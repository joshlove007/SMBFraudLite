#
# Module manifest for module 'Microsoft.Graph.Calendar'
#
# Generated by: Microsoft Corporation
#
# Generated on: 9/28/2022
#

@{

# Script module or binary module file associated with this manifest.
RootModule = './Microsoft.Graph.Calendar.psm1'

# Version number of this module.
ModuleVersion = '1.12.2'

# Supported PSEditions
CompatiblePSEditions = 'Core', 'Desktop'

# ID used to uniquely identify this module
GUID = 'bf2ee476-ae5b-4a53-9fa8-943f3a49bf93'

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
RequiredAssemblies = './bin/Microsoft.Graph.Calendar.private.dll'

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = './Microsoft.Graph.Calendar.format.ps1xml'

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = 'Get-MgGroupCalendar', 
               'Get-MgGroupCalendarMultiValueExtendedProperty', 
               'Get-MgGroupCalendarPermission', 
               'Get-MgGroupCalendarSingleValueExtendedProperty', 
               'Get-MgGroupCalendarView', 'Get-MgGroupEvent', 
               'Get-MgGroupEventAttachment', 'Get-MgGroupEventCalendar', 
               'Get-MgGroupEventExceptionOccurrence', 
               'Get-MgGroupEventExceptionOccurrenceAttachment', 
               'Get-MgGroupEventExceptionOccurrenceCalendar', 
               'Get-MgGroupEventExceptionOccurrenceExtension', 
               'Get-MgGroupEventExceptionOccurrenceInstance', 
               'Get-MgGroupEventExceptionOccurrenceInstanceAttachment', 
               'Get-MgGroupEventExceptionOccurrenceInstanceCalendar', 
               'Get-MgGroupEventExceptionOccurrenceInstanceExtension', 
               'Get-MgGroupEventExceptionOccurrenceInstanceMultiValueExtendedProperty', 
               'Get-MgGroupEventExceptionOccurrenceInstanceSingleValueExtendedProperty', 
               'Get-MgGroupEventExceptionOccurrenceMultiValueExtendedProperty', 
               'Get-MgGroupEventExceptionOccurrenceSingleValueExtendedProperty', 
               'Get-MgGroupEventExtension', 'Get-MgGroupEventInstance', 
               'Get-MgGroupEventInstanceAttachment', 
               'Get-MgGroupEventInstanceCalendar', 
               'Get-MgGroupEventInstanceExceptionOccurrence', 
               'Get-MgGroupEventInstanceExceptionOccurrenceAttachment', 
               'Get-MgGroupEventInstanceExceptionOccurrenceCalendar', 
               'Get-MgGroupEventInstanceExceptionOccurrenceExtension', 
               'Get-MgGroupEventInstanceExceptionOccurrenceMultiValueExtendedProperty', 
               'Get-MgGroupEventInstanceExceptionOccurrenceSingleValueExtendedProperty', 
               'Get-MgGroupEventInstanceExtension', 
               'Get-MgGroupEventInstanceMultiValueExtendedProperty', 
               'Get-MgGroupEventInstanceSingleValueExtendedProperty', 
               'Get-MgGroupEventMultiValueExtendedProperty', 
               'Get-MgGroupEventSingleValueExtendedProperty', 'Get-MgPlace', 
               'Get-MgUserCalendar', 'Get-MgUserCalendarEvent', 
               'Get-MgUserCalendarGroup', 'Get-MgUserCalendarGroupCalendar', 
               'Get-MgUserCalendarMultiValueExtendedProperty', 
               'Get-MgUserCalendarPermission', 
               'Get-MgUserCalendarSingleValueExtendedProperty', 
               'Get-MgUserCalendarView', 'Get-MgUserDefaultCalendar', 
               'Get-MgUserEvent', 'Get-MgUserEventAttachment', 
               'Get-MgUserEventCalendar', 'Get-MgUserEventExceptionOccurrence', 
               'Get-MgUserEventExceptionOccurrenceAttachment', 
               'Get-MgUserEventExceptionOccurrenceCalendar', 
               'Get-MgUserEventExceptionOccurrenceExtension', 
               'Get-MgUserEventExceptionOccurrenceInstance', 
               'Get-MgUserEventExceptionOccurrenceInstanceAttachment', 
               'Get-MgUserEventExceptionOccurrenceInstanceCalendar', 
               'Get-MgUserEventExceptionOccurrenceInstanceExtension', 
               'Get-MgUserEventExceptionOccurrenceInstanceMultiValueExtendedProperty', 
               'Get-MgUserEventExceptionOccurrenceInstanceSingleValueExtendedProperty', 
               'Get-MgUserEventExceptionOccurrenceMultiValueExtendedProperty', 
               'Get-MgUserEventExceptionOccurrenceSingleValueExtendedProperty', 
               'Get-MgUserEventExtension', 'Get-MgUserEventInstance', 
               'Get-MgUserEventInstanceAttachment', 
               'Get-MgUserEventInstanceCalendar', 
               'Get-MgUserEventInstanceExceptionOccurrence', 
               'Get-MgUserEventInstanceExceptionOccurrenceAttachment', 
               'Get-MgUserEventInstanceExceptionOccurrenceCalendar', 
               'Get-MgUserEventInstanceExceptionOccurrenceExtension', 
               'Get-MgUserEventInstanceExceptionOccurrenceMultiValueExtendedProperty', 
               'Get-MgUserEventInstanceExceptionOccurrenceSingleValueExtendedProperty', 
               'Get-MgUserEventInstanceExtension', 
               'Get-MgUserEventInstanceMultiValueExtendedProperty', 
               'Get-MgUserEventInstanceSingleValueExtendedProperty', 
               'Get-MgUserEventMultiValueExtendedProperty', 
               'Get-MgUserEventSingleValueExtendedProperty', 
               'New-MgGroupCalendarMultiValueExtendedProperty', 
               'New-MgGroupCalendarPermission', 
               'New-MgGroupCalendarSingleValueExtendedProperty', 
               'New-MgGroupEvent', 'New-MgGroupEventAttachment', 
               'New-MgGroupEventExceptionOccurrence', 
               'New-MgGroupEventExceptionOccurrenceAttachment', 
               'New-MgGroupEventExceptionOccurrenceExtension', 
               'New-MgGroupEventExceptionOccurrenceInstance', 
               'New-MgGroupEventExceptionOccurrenceInstanceAttachment', 
               'New-MgGroupEventExceptionOccurrenceInstanceExtension', 
               'New-MgGroupEventExceptionOccurrenceInstanceMultiValueExtendedProperty', 
               'New-MgGroupEventExceptionOccurrenceInstanceSingleValueExtendedProperty', 
               'New-MgGroupEventExceptionOccurrenceMultiValueExtendedProperty', 
               'New-MgGroupEventExceptionOccurrenceSingleValueExtendedProperty', 
               'New-MgGroupEventExtension', 'New-MgGroupEventInstance', 
               'New-MgGroupEventInstanceAttachment', 
               'New-MgGroupEventInstanceExceptionOccurrence', 
               'New-MgGroupEventInstanceExceptionOccurrenceAttachment', 
               'New-MgGroupEventInstanceExceptionOccurrenceExtension', 
               'New-MgGroupEventInstanceExceptionOccurrenceMultiValueExtendedProperty', 
               'New-MgGroupEventInstanceExceptionOccurrenceSingleValueExtendedProperty', 
               'New-MgGroupEventInstanceExtension', 
               'New-MgGroupEventInstanceMultiValueExtendedProperty', 
               'New-MgGroupEventInstanceSingleValueExtendedProperty', 
               'New-MgGroupEventMultiValueExtendedProperty', 
               'New-MgGroupEventSingleValueExtendedProperty', 'New-MgPlace', 
               'New-MgUserCalendar', 'New-MgUserCalendarEvent', 
               'New-MgUserCalendarGroup', 'New-MgUserCalendarGroupCalendar', 
               'New-MgUserCalendarMultiValueExtendedProperty', 
               'New-MgUserCalendarPermission', 
               'New-MgUserCalendarSingleValueExtendedProperty', 'New-MgUserEvent', 
               'New-MgUserEventAttachment', 'New-MgUserEventExceptionOccurrence', 
               'New-MgUserEventExceptionOccurrenceAttachment', 
               'New-MgUserEventExceptionOccurrenceExtension', 
               'New-MgUserEventExceptionOccurrenceInstance', 
               'New-MgUserEventExceptionOccurrenceInstanceAttachment', 
               'New-MgUserEventExceptionOccurrenceInstanceExtension', 
               'New-MgUserEventExceptionOccurrenceInstanceMultiValueExtendedProperty', 
               'New-MgUserEventExceptionOccurrenceInstanceSingleValueExtendedProperty', 
               'New-MgUserEventExceptionOccurrenceMultiValueExtendedProperty', 
               'New-MgUserEventExceptionOccurrenceSingleValueExtendedProperty', 
               'New-MgUserEventExtension', 'New-MgUserEventInstance', 
               'New-MgUserEventInstanceAttachment', 
               'New-MgUserEventInstanceExceptionOccurrence', 
               'New-MgUserEventInstanceExceptionOccurrenceAttachment', 
               'New-MgUserEventInstanceExceptionOccurrenceExtension', 
               'New-MgUserEventInstanceExceptionOccurrenceMultiValueExtendedProperty', 
               'New-MgUserEventInstanceExceptionOccurrenceSingleValueExtendedProperty', 
               'New-MgUserEventInstanceExtension', 
               'New-MgUserEventInstanceMultiValueExtendedProperty', 
               'New-MgUserEventInstanceSingleValueExtendedProperty', 
               'New-MgUserEventMultiValueExtendedProperty', 
               'New-MgUserEventSingleValueExtendedProperty', 
               'Remove-MgGroupCalendarMultiValueExtendedProperty', 
               'Remove-MgGroupCalendarPermission', 
               'Remove-MgGroupCalendarSingleValueExtendedProperty', 
               'Remove-MgGroupEvent', 'Remove-MgGroupEventAttachment', 
               'Remove-MgGroupEventExceptionOccurrence', 
               'Remove-MgGroupEventExceptionOccurrenceAttachment', 
               'Remove-MgGroupEventExceptionOccurrenceExtension', 
               'Remove-MgGroupEventExceptionOccurrenceInstance', 
               'Remove-MgGroupEventExceptionOccurrenceInstanceAttachment', 
               'Remove-MgGroupEventExceptionOccurrenceInstanceExtension', 
               'Remove-MgGroupEventExceptionOccurrenceInstanceMultiValueExtendedProperty', 
               'Remove-MgGroupEventExceptionOccurrenceInstanceSingleValueExtendedProperty', 
               'Remove-MgGroupEventExceptionOccurrenceMultiValueExtendedProperty', 
               'Remove-MgGroupEventExceptionOccurrenceSingleValueExtendedProperty', 
               'Remove-MgGroupEventExtension', 'Remove-MgGroupEventInstance', 
               'Remove-MgGroupEventInstanceAttachment', 
               'Remove-MgGroupEventInstanceExceptionOccurrence', 
               'Remove-MgGroupEventInstanceExceptionOccurrenceAttachment', 
               'Remove-MgGroupEventInstanceExceptionOccurrenceExtension', 
               'Remove-MgGroupEventInstanceExceptionOccurrenceMultiValueExtendedProperty', 
               'Remove-MgGroupEventInstanceExceptionOccurrenceSingleValueExtendedProperty', 
               'Remove-MgGroupEventInstanceExtension', 
               'Remove-MgGroupEventInstanceMultiValueExtendedProperty', 
               'Remove-MgGroupEventInstanceSingleValueExtendedProperty', 
               'Remove-MgGroupEventMultiValueExtendedProperty', 
               'Remove-MgGroupEventSingleValueExtendedProperty', 'Remove-MgPlace', 
               'Remove-MgUserCalendar', 'Remove-MgUserCalendarGroup', 
               'Remove-MgUserCalendarMultiValueExtendedProperty', 
               'Remove-MgUserCalendarPermission', 
               'Remove-MgUserCalendarSingleValueExtendedProperty', 
               'Remove-MgUserEvent', 'Remove-MgUserEventAttachment', 
               'Remove-MgUserEventExceptionOccurrence', 
               'Remove-MgUserEventExceptionOccurrenceAttachment', 
               'Remove-MgUserEventExceptionOccurrenceExtension', 
               'Remove-MgUserEventExceptionOccurrenceInstance', 
               'Remove-MgUserEventExceptionOccurrenceInstanceAttachment', 
               'Remove-MgUserEventExceptionOccurrenceInstanceExtension', 
               'Remove-MgUserEventExceptionOccurrenceInstanceMultiValueExtendedProperty', 
               'Remove-MgUserEventExceptionOccurrenceInstanceSingleValueExtendedProperty', 
               'Remove-MgUserEventExceptionOccurrenceMultiValueExtendedProperty', 
               'Remove-MgUserEventExceptionOccurrenceSingleValueExtendedProperty', 
               'Remove-MgUserEventExtension', 'Remove-MgUserEventInstance', 
               'Remove-MgUserEventInstanceAttachment', 
               'Remove-MgUserEventInstanceExceptionOccurrence', 
               'Remove-MgUserEventInstanceExceptionOccurrenceAttachment', 
               'Remove-MgUserEventInstanceExceptionOccurrenceExtension', 
               'Remove-MgUserEventInstanceExceptionOccurrenceMultiValueExtendedProperty', 
               'Remove-MgUserEventInstanceExceptionOccurrenceSingleValueExtendedProperty', 
               'Remove-MgUserEventInstanceExtension', 
               'Remove-MgUserEventInstanceMultiValueExtendedProperty', 
               'Remove-MgUserEventInstanceSingleValueExtendedProperty', 
               'Remove-MgUserEventMultiValueExtendedProperty', 
               'Remove-MgUserEventSingleValueExtendedProperty', 
               'Update-MgGroupCalendarMultiValueExtendedProperty', 
               'Update-MgGroupCalendarPermission', 
               'Update-MgGroupCalendarSingleValueExtendedProperty', 
               'Update-MgGroupEvent', 'Update-MgGroupEventAttachment', 
               'Update-MgGroupEventExceptionOccurrence', 
               'Update-MgGroupEventExceptionOccurrenceAttachment', 
               'Update-MgGroupEventExceptionOccurrenceExtension', 
               'Update-MgGroupEventExceptionOccurrenceInstance', 
               'Update-MgGroupEventExceptionOccurrenceInstanceAttachment', 
               'Update-MgGroupEventExceptionOccurrenceInstanceExtension', 
               'Update-MgGroupEventExceptionOccurrenceInstanceMultiValueExtendedProperty', 
               'Update-MgGroupEventExceptionOccurrenceInstanceSingleValueExtendedProperty', 
               'Update-MgGroupEventExceptionOccurrenceMultiValueExtendedProperty', 
               'Update-MgGroupEventExceptionOccurrenceSingleValueExtendedProperty', 
               'Update-MgGroupEventExtension', 'Update-MgGroupEventInstance', 
               'Update-MgGroupEventInstanceAttachment', 
               'Update-MgGroupEventInstanceExceptionOccurrence', 
               'Update-MgGroupEventInstanceExceptionOccurrenceAttachment', 
               'Update-MgGroupEventInstanceExceptionOccurrenceExtension', 
               'Update-MgGroupEventInstanceExceptionOccurrenceMultiValueExtendedProperty', 
               'Update-MgGroupEventInstanceExceptionOccurrenceSingleValueExtendedProperty', 
               'Update-MgGroupEventInstanceExtension', 
               'Update-MgGroupEventInstanceMultiValueExtendedProperty', 
               'Update-MgGroupEventInstanceSingleValueExtendedProperty', 
               'Update-MgGroupEventMultiValueExtendedProperty', 
               'Update-MgGroupEventSingleValueExtendedProperty', 'Update-MgPlace', 
               'Update-MgUserCalendar', 'Update-MgUserCalendarGroup', 
               'Update-MgUserCalendarMultiValueExtendedProperty', 
               'Update-MgUserCalendarPermission', 
               'Update-MgUserCalendarSingleValueExtendedProperty', 
               'Update-MgUserEvent', 'Update-MgUserEventAttachment', 
               'Update-MgUserEventExceptionOccurrence', 
               'Update-MgUserEventExceptionOccurrenceAttachment', 
               'Update-MgUserEventExceptionOccurrenceExtension', 
               'Update-MgUserEventExceptionOccurrenceInstance', 
               'Update-MgUserEventExceptionOccurrenceInstanceAttachment', 
               'Update-MgUserEventExceptionOccurrenceInstanceExtension', 
               'Update-MgUserEventExceptionOccurrenceInstanceMultiValueExtendedProperty', 
               'Update-MgUserEventExceptionOccurrenceInstanceSingleValueExtendedProperty', 
               'Update-MgUserEventExceptionOccurrenceMultiValueExtendedProperty', 
               'Update-MgUserEventExceptionOccurrenceSingleValueExtendedProperty', 
               'Update-MgUserEventExtension', 'Update-MgUserEventInstance', 
               'Update-MgUserEventInstanceAttachment', 
               'Update-MgUserEventInstanceExceptionOccurrence', 
               'Update-MgUserEventInstanceExceptionOccurrenceAttachment', 
               'Update-MgUserEventInstanceExceptionOccurrenceExtension', 
               'Update-MgUserEventInstanceExceptionOccurrenceMultiValueExtendedProperty', 
               'Update-MgUserEventInstanceExceptionOccurrenceSingleValueExtendedProperty', 
               'Update-MgUserEventInstanceExtension', 
               'Update-MgUserEventInstanceMultiValueExtendedProperty', 
               'Update-MgUserEventInstanceSingleValueExtendedProperty', 
               'Update-MgUserEventMultiValueExtendedProperty', 
               'Update-MgUserEventSingleValueExtendedProperty'

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
