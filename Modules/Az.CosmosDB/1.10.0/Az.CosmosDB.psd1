#
# Module manifest for module 'Az.CosmosDB'
#
# Generated by: Microsoft Corporation
#
# Generated on: 3/30/2023
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'Az.CosmosDB.psm1'

# Version number of this module.
ModuleVersion = '1.10.0'

# Supported PSEditions
CompatiblePSEditions = 'Core', 'Desktop'

# ID used to uniquely identify this module
GUID = '91832aaa-dc11-4583-8239-bce5fd531604'

# Author of this module
Author = 'Microsoft Corporation'

# Company or vendor of this module
CompanyName = 'Microsoft Corporation'

# Copyright statement for this module
Copyright = 'Microsoft Corporation. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Microsoft Azure PowerShell - CosmosDB service cmdlets for Azure Resource Manager in Windows PowerShell and PowerShell Core.

For more information on CosmosDB, please visit the following: https://learn.microsoft.com/azure/cosmos-db/'

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
RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
RequiredAssemblies = 'Microsoft.Azure.Management.CosmosDB.dll', 
               'Azure.Security.KeyVault.Keys.dll'

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = 'CosmosDB.generated.format.ps1xml'

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @()

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = 'Get-AzCosmosDBSqlContainer', 
               'Get-AzCosmosDBSqlContainerThroughput', 'Get-AzCosmosDBSqlDatabase', 
               'Get-AzCosmosDBSqlDatabaseThroughput', 
               'Get-AzCosmosDBSqlStoredProcedure', 'Get-AzCosmosDBSqlTrigger', 
               'Get-AzCosmosDBSqlUserDefinedFunction', 
               'New-AzCosmosDBSqlStoredProcedure', 'New-AzCosmosDBSqlTrigger', 
               'New-AzCosmosDBSqlUserDefinedFunction', 
               'Update-AzCosmosDBSqlStoredProcedure', 
               'Update-AzCosmosDBSqlTrigger', 
               'Update-AzCosmosDBSqlUserDefinedFunction', 
               'Remove-AzCosmosDBSqlStoredProcedure', 
               'Remove-AzCosmosDBSqlTrigger', 
               'Remove-AzCosmosDBSqlUserDefinedFunction', 
               'New-AzCosmosDBSqlConflictResolutionPolicy', 
               'New-AzCosmosDBSqlIndexingPolicy', 'New-AzCosmosDBSqlUniqueKey', 
               'New-AzCosmosDBSqlUniqueKeyPolicy', 'Remove-AzCosmosDBSqlContainer', 
               'Remove-AzCosmosDBSqlDatabase', 'New-AzCosmosDBSqlContainer', 
               'New-AzCosmosDBSqlDatabase', 'Update-AzCosmosDBSqlContainer', 
               'Update-AzCosmosDBSqlDatabase', 'New-AzCosmosDBAccount', 
               'Remove-AzCosmosDBAccount', 'Get-AzCosmosDBAccount', 
               'Get-AzCosmosDBAccountKey', 'New-AzCosmosDBAccountKey', 
               'Update-AzCosmosDBAccount', 'Update-AzCosmosDBAccountRegion', 
               'Update-AzCosmosDBAccountFailoverPriority', 
               'New-AzCosmosDBVirtualNetworkRule', 'New-AzCosmosDBLocationObject', 
               'New-AzCosmosDBSqlSpatialSpec', 'New-AzCosmosDBSqlCompositePath', 
               'New-AzCosmosDBSqlIncludedPath', 
               'New-AzCosmosDBSqlIncludedPathIndex', 
               'Get-AzCosmosDBGremlinDatabase', 
               'Get-AzCosmosDBGremlinDatabaseThroughput', 
               'Get-AzCosmosDBGremlinGraph', 
               'Get-AzCosmosDBGremlinGraphThroughput', 
               'Remove-AzCosmosDBGremlinDatabase', 'Remove-AzCosmosDBGremlinGraph', 
               'New-AzCosmosDBGremlinDatabase', 'New-AzCosmosDBGremlinGraph', 
               'Update-AzCosmosDBGremlinDatabase', 'Update-AzCosmosDBGremlinGraph', 
               'New-AzCosmosDBGremlinIndexingPolicy', 
               'New-AzCosmosDBGremlinUniqueKey', 
               'New-AzCosmosDBGremlinUniqueKeyPolicy', 
               'New-AzCosmosDBGremlinSpatialSpec', 
               'New-AzCosmosDBGremlinCompositePath', 
               'New-AzCosmosDBGremlinConflictResolutionPolicy', 
               'New-AzCosmosDBGremlinIncludedPath', 
               'New-AzCosmosDBGremlinIncludedPathIndex', 'Get-AzCosmosDBTable', 
               'Get-AzCosmosDBTableThroughput', 'Remove-AzCosmosDBTable', 
               'New-AzCosmosDBTable', 'Update-AzCosmosDBTable', 
               'Get-AzCosmosDBCassandraKeyspace', 
               'Get-AzCosmosDBCassandraKeyspaceThroughput', 
               'Get-AzCosmosDBCassandraTable', 
               'Get-AzCosmosDBCassandraTableThroughput', 
               'New-AzCosmosDBCassandraClusterKey', 
               'New-AzCosmosDBCassandraColumn', 'New-AzCosmosDBCassandraSchema', 
               'Remove-AzCosmosDBCassandraKeyspace', 
               'Remove-AzCosmosDBCassandraTable', 
               'Update-AzCosmosDBCassandraKeyspace', 
               'Update-AzCosmosDBCassandraTable', 
               'New-AzCosmosDBCassandraKeyspace', 'New-AzCosmosDBCassandraTable', 
               'Get-AzCosmosDBMongoDBCollection', 
               'Get-AzCosmosDBMongoDBCollectionThroughput', 
               'Get-AzCosmosDBMongoDBDatabase', 
               'Get-AzCosmosDBMongoDBDatabaseThroughput', 
               'Remove-AzCosmosDBMongoDBCollection', 
               'Remove-AzCosmosDBMongoDBDatabase', 'New-AzCosmosDBMongoDBIndex', 
               'Update-AzCosmosDBSqlContainerThroughput', 
               'Update-AzCosmosDBSqlDatabaseThroughput', 
               'Update-AzCosmosDBMongoDBCollectionThroughput', 
               'Update-AzCosmosDBMongoDBDatabaseThroughput', 
               'Update-AzCosmosDBGremlinGraphThroughput', 
               'Update-AzCosmosDBGremlinDatabaseThroughput', 
               'Update-AzCosmosDBCassandraTableThroughput', 
               'Update-AzCosmosDBCassandraKeyspaceThroughput', 
               'Update-AzCosmosDBTableThroughput', 
               'Update-AzCosmosDBMongoDBCollection', 
               'Update-AzCosmosDBMongoDBDatabase', 
               'New-AzCosmosDBMongoDBCollection', 'New-AzCosmosDBMongoDBDatabase', 
               'Invoke-AzCosmosDBSqlContainerThroughputMigration', 
               'Invoke-AzCosmosDBSqlDatabaseThroughputMigration', 
               'Invoke-AzCosmosDBMongoDBCollectionThroughputMigration', 
               'Invoke-AzCosmosDBMongoDBDatabaseThroughputMigration', 
               'Invoke-AzCosmosDBGremlinGraphThroughputMigration', 
               'Invoke-AzCosmosDBGremlinDatabaseThroughputMigration', 
               'Invoke-AzCosmosDBCassandraTableThroughputMigration', 
               'Invoke-AzCosmosDBCassandraKeyspaceThroughputMigration', 
               'Invoke-AzCosmosDBTableThroughputMigration', 
               'New-AzCosmosDBSqlRoleDefinition', 
               'New-AzCosmosDBSqlRoleAssignment', 
               'Get-AzCosmosDBSqlRoleDefinition', 
               'Get-AzCosmosDBSqlRoleAssignment', 
               'Remove-AzCosmosDBSqlRoleDefinition', 
               'Remove-AzCosmosDBSqlRoleAssignment', 
               'Update-AzCosmosDBSqlRoleDefinition', 
               'Update-AzCosmosDBSqlRoleAssignment', 'New-AzCosmosDBPermission', 
               'New-AzCosmosDBDatabaseToRestore', 'Restore-AzCosmosDBAccount', 
               'Get-AzCosmosDBRestorableDatabaseAccount', 
               'Get-AzCosmosDBSqlRestorableDatabase', 
               'Get-AzCosmosDBSqlRestorableContainer', 
               'Get-AzCosmosDBSqlRestorableResource', 
               'Get-AzCosmosDBMongoDBRestorableDatabase', 
               'Get-AzCosmosDBMongoDBRestorableCollection', 
               'Get-AzCosmosDBMongoDBRestorableResource', 
               'Get-AzCosmosDBSqlContainerBackupInformation', 
               'Get-AzCosmosDBMongoDBCollectionBackupInformation', 
               'Get-AzCosmosDBLocation', 'New-AzManagedCassandraCluster', 
               'New-AzManagedCassandraDataCenter', 'Get-AzManagedCassandraCluster', 
               'Get-AzManagedCassandraDataCenter', 
               'Remove-AzManagedCassandraCluster', 
               'Remove-AzManagedCassandraDataCenter', 
               'Update-AzManagedCassandraCluster', 
               'Update-AzManagedCassandraDataCenter', 
               'Get-AzCosmosDbClientEncryptionKey', 
               'New-AzCosmosDbClientEncryptionKey', 
               'Update-AzCosmosDbClientEncryptionKey', 
               'New-AzCosmosDBMongoDBRoleDefinition', 
               'New-AzCosmosDBMongoDBPrivilegeResource', 
               'New-AzCosmosDBMongoDBPrivilege', 'New-AzCosmosDBMongoDBRole', 
               'Remove-AzCosmosDBMongoDBRoleDefinition', 
               'Update-AzCosmosDBMongoDBRoleDefinition', 
               'Get-AzCosmosDBMongoDBRoleDefinition', 
               'New-AzCosmosDBMongoDBUserDefinition', 
               'Update-AzCosmosDBMongoDBUserDefinition', 
               'Get-AzCosmosDBMongoDBUserDefinition', 
               'Remove-AzCosmosDBMongoDBUserDefinition', 'Get-AzCosmosDBService', 
               'New-AzCosmosDBService', 'Remove-AzCosmosDBService', 
               'Get-AzCosmosDBGremlinGraphBackupInformation', 
               'Get-AzCosmosDBGremlinRestorableDatabase', 
               'Get-AzCosmosDBGremlinRestorableGraph', 
               'Get-AzCosmosDBGremlinRestorableResource', 
               'Get-AzCosmosDBTableRestorableTable', 
               'Get-AzCosmosDBTableRestorableResource', 
               'Get-AzCosmosDBTableBackupInformation', 
               'New-AzCosmosDBGremlinDatabaseToRestore', 
               'New-AzCosmosDBTableToRestore'

# Variables to export from this module
# VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = @()

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = 'Azure','ResourceManager','ARM','CosmosDB'

        # A URL to the license for this module.
        LicenseUri = 'https://aka.ms/azps-license'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/Azure/azure-powershell'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = '* Introduced restorable apis support for Gremlin and Table, which includes:
    - Added the apis for RestorableGremlinDatabases, RestorableGremlinGraphs, RestorableGremlinResources,RestorableTables, RestorableResources.
    - Added RetrieveContinuousBackupInfo apis for Gremlin and Table which help in determining the restore point of time and the resources to restore.
    - Added GremlinDatabasesToRestore and TablesToRestore field to provision and restore database account api.
    - Added StartTime and EndTime support for listing restorable containers event feed.'

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


# SIG # Begin signature block
# MIInogYJKoZIhvcNAQcCoIInkzCCJ48CAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCC+DyIBPcV5su27
# oQa/ipsHkaPGYkmkrVw02buoa71lAqCCDYUwggYDMIID66ADAgECAhMzAAACzfNk
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
# cVZOSEXAQsmbdlsKgEhr/Xmfwb1tbWrJUnMTDXpQzTGCGXMwghlvAgEBMIGVMH4x
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01p
# Y3Jvc29mdCBDb2RlIFNpZ25pbmcgUENBIDIwMTECEzMAAALN82S/+NRMXVEAAAAA
# As0wDQYJYIZIAWUDBAIBBQCgga4wGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQw
# HAYKKwYBBAGCNwIBCzEOMAwGCisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIN3O
# rj4HisUkQzLkDtE+mnRmk2UN3V448itunxCZAxz5MEIGCisGAQQBgjcCAQwxNDAy
# oBSAEgBNAGkAYwByAG8AcwBvAGYAdKEagBhodHRwOi8vd3d3Lm1pY3Jvc29mdC5j
# b20wDQYJKoZIhvcNAQEBBQAEggEAP86bg1r1x5oUsDXeIAS82fJoq28UYSWpK/dg
# G4Yiy+8ke16XLrYHCTg9+are1BAjA6VyZO91k6cVypPAHjNYFPlG5q+5EKAbR2TX
# 7QIKraBLtZOzaUGK+qgpNVZYYuHHLXR/AfXJum9bwsVtqzFoe2fM9CKetSGQJRpZ
# PSPbuEBClnIeDr1sZ+g5Yv4JzK402vscmbQSKMCbgTpf2sYUlt1LlX1sbkKIL3hv
# QXA3zYb1/b0G8U+rJvyA5SLWIn2ZB93tmuCs5aN/XlSES0fZY5E0Btfu3/vkuyVQ
# EPN8RHYQ0FDUbPyY6qCl8Ayr2FZit45VJi1qf8FO3Yq46cK1QKGCFv0wghb5Bgor
# BgEEAYI3AwMBMYIW6TCCFuUGCSqGSIb3DQEHAqCCFtYwghbSAgEDMQ8wDQYJYIZI
# AWUDBAIBBQAwggFRBgsqhkiG9w0BCRABBKCCAUAEggE8MIIBOAIBAQYKKwYBBAGE
# WQoDATAxMA0GCWCGSAFlAwQCAQUABCDejZEKBLupe96X2kZQndzbNOrVfGclUt7b
# 1EDpLmliuQIGZBMfZH+7GBMyMDIzMDMzMDA2MzQyOS43NjdaMASAAgH0oIHQpIHN
# MIHKMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMH
# UmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSUwIwYDVQQL
# ExxNaWNyb3NvZnQgQW1lcmljYSBPcGVyYXRpb25zMSYwJAYDVQQLEx1UaGFsZXMg
# VFNTIEVTTjo3QkYxLUUzRUEtQjgwODElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUt
# U3RhbXAgU2VydmljZaCCEVQwggcMMIIE9KADAgECAhMzAAAByPmw7mft6mtGAAEA
# AAHIMA0GCSqGSIb3DQEBCwUAMHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNo
# aW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29y
# cG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEw
# MB4XDTIyMTEwNDE5MDEzN1oXDTI0MDIwMjE5MDEzN1owgcoxCzAJBgNVBAYTAlVT
# MRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQK
# ExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJTAjBgNVBAsTHE1pY3Jvc29mdCBBbWVy
# aWNhIE9wZXJhdGlvbnMxJjAkBgNVBAsTHVRoYWxlcyBUU1MgRVNOOjdCRjEtRTNF
# QS1CODA4MSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2aWNlMIIC
# IjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAucudfihPgyRWwnnIuJCqc3TC
# tFk0XOimFcKjU9bS6WFng2l+FrIid0mPZ7KWs6Ewj21X+ZkGkM6x+ozHlmNtnHSQ
# 48pjIFdlKXIoh7fSo41A4n0tQIlwhs8uIYIocp72xwDBHKSZxGaEa/0707iyOw+a
# XZXNcTxgNiREASb9thlLZM75mfJIgBVvUmdLZc+XOUYwz/8ul7IEztPNH4cn8Cn0
# tJhIFfp2netr8GYNoiyIqxueG7+sSt2xXl7/igc5cHPZnWhfl9PaB4+SutrA8zAh
# zVHTnj4RffxA4R3k4BRbPdGowQfOf95ZeYxLTHf5awB0nqZxOY+yuGWhf6hp5RGR
# ouc9beVZv98M1erYa55S1ahZgGDQJycVtEy82RlmKfTYY2uNmlPLWtnD7sDlpVkh
# YQGKuTWnuwQKq9ZTSE+0V2cH8JaWBYJQMIuWWM83vLPo3IT/S/5jT2oZOS9nsJgw
# wCwRUtYtwtq8/PJtvt1V6VoG4Wd2/MAifgEJOkHF7ARPqI9Xv28+riqJZ5mjLGz8
# 4dP2ryoe0lxYSz3PT5ErKoS0+zJpYNAcxbv2UXiTk3Wj/mZ3tulz6z4XnSl5gy0P
# Ler+EVjz4G96GcZgK2d9G+uYylHWwBneIv9YFQj6yMdW/4sEpkEbrpiJNemcxUCm
# BipZ7Sc35rv4utkJ4/UCAwEAAaOCATYwggEyMB0GA1UdDgQWBBS1XC9JgbrSwLDT
# iJJT4iK7NUvk9TAfBgNVHSMEGDAWgBSfpxVdAF5iXYP05dJlpxtTNRnpcjBfBgNV
# HR8EWDBWMFSgUqBQhk5odHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2Ny
# bC9NaWNyb3NvZnQlMjBUaW1lLVN0YW1wJTIwUENBJTIwMjAxMCgxKS5jcmwwbAYI
# KwYBBQUHAQEEYDBeMFwGCCsGAQUFBzAChlBodHRwOi8vd3d3Lm1pY3Jvc29mdC5j
# b20vcGtpb3BzL2NlcnRzL01pY3Jvc29mdCUyMFRpbWUtU3RhbXAlMjBQQ0ElMjAy
# MDEwKDEpLmNydDAMBgNVHRMBAf8EAjAAMBMGA1UdJQQMMAoGCCsGAQUFBwMIMA0G
# CSqGSIb3DQEBCwUAA4ICAQDD1nJSyEPDqSgnfkFifIbteJb7NkZCbRj5yBGiT1f9
# fTGvUb5CW7k3eSp3uxUqom9LWykcNfQa/Yfw0libEim9YRjUNcL42oIFqtp/7rl9
# gg61oiB8PB+6vLEmjXkYxUUR8WjKKC5Q5dx96B21faSco2MOmvjYxGUR7An+4529
# lQPPLqbEKRjcNQb+p+mkQH2XeMbsh5EQCkTuYAimFTgnui2ZPFLEuBpxBK5z2HnK
# neHUJ9i4pcKWdCqF1AOVN8gXIH0R0FflMcCg5TW8v90Vwx/mP3aE2Ige1uE8M9YN
# Bn5776PxmA16Z+c2s+hYI+9sJZhhRA8aSYacrlLz7aU/56OvEYRERQZttuAFkrV+
# M/J+tCeGNv0Gd75Y4lKLMp5/0xoOviPBdB2rD5C/U+B8qt1bBqQLVZ1wHRy0/6Hh
# JxbOi2IgGJaOCYLGX2zz0VAT6mZ2BTWrJmcK6SDv7rX7psgC+Cf1t0R1aWCkCHJt
# pYuyKjf7UodRazevOf6V01XkrARHKrI7bQoHFL+sun2liJCBjN51mDWoEgUCEvwB
# 3l+RFYAL0aIisc5cTaGX/T8F+iAbz+j2GGVum85gEQS9uLzSedoYPyEXxTblwewG
# dAxqIZaKozRBow49OnL+5CgooVMf3ZSqpxc2QC0E03l6c/vChkYyqMXq7Lwd4PnH
# qjCCB3EwggVZoAMCAQICEzMAAAAVxedrngKbSZkAAAAAABUwDQYJKoZIhvcNAQEL
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
# 0ZDxyKs6ijoIYn/ZcGNTTY3ugm2lBRDBcQZqELQdVTNYs6FwZvKhggLLMIICNAIB
# ATCB+KGB0KSBzTCByjELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24x
# EDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlv
# bjElMCMGA1UECxMcTWljcm9zb2Z0IEFtZXJpY2EgT3BlcmF0aW9uczEmMCQGA1UE
# CxMdVGhhbGVzIFRTUyBFU046N0JGMS1FM0VBLUI4MDgxJTAjBgNVBAMTHE1pY3Jv
# c29mdCBUaW1lLVN0YW1wIFNlcnZpY2WiIwoBATAHBgUrDgMCGgMVAN/OE1C7xjU0
# ClIDXQBiucAY7suyoIGDMIGApH4wfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldh
# c2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBD
# b3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIw
# MTAwDQYJKoZIhvcNAQEFBQACBQDnz2kUMCIYDzIwMjMwMzMwMDk0OTA4WhgPMjAy
# MzAzMzEwOTQ5MDhaMHQwOgYKKwYBBAGEWQoEATEsMCowCgIFAOfPaRQCAQAwBwIB
# AAICFDcwBwIBAAICEwMwCgIFAOfQupQCAQAwNgYKKwYBBAGEWQoEAjEoMCYwDAYK
# KwYBBAGEWQoDAqAKMAgCAQACAwehIKEKMAgCAQACAwGGoDANBgkqhkiG9w0BAQUF
# AAOBgQAXS0aGCjA4d45dOvbEiWDAN5KR+REKGx8dHhHAi+apDUdh2dcbPy/iojkO
# ICFJgi1oYRGT0u2OkIKY0Pm0bVHtSsBnKfqTwBPmvmiM1FRfG8/ewQS+4zrHkcnj
# ThB+eWroiFKt+0ROFWDN0HX9L3Z1jwOnjXR6OH/Poq3DH5qbfTGCBA0wggQJAgEB
# MIGTMHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQH
# EwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNV
# BAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwAhMzAAAByPmw7mft6mtG
# AAEAAAHIMA0GCWCGSAFlAwQCAQUAoIIBSjAaBgkqhkiG9w0BCQMxDQYLKoZIhvcN
# AQkQAQQwLwYJKoZIhvcNAQkEMSIEIHHKcidhkCLEQz5SwjRTeWYOkqi4aRf3X63o
# EpQ2LFR8MIH6BgsqhkiG9w0BCRACLzGB6jCB5zCB5DCBvQQgYgCYz80/baMvxw6j
# cqSvL0FW4TdvA09nxHfsPhuEA2YwgZgwgYCkfjB8MQswCQYDVQQGEwJVUzETMBEG
# A1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWlj
# cm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFt
# cCBQQ0EgMjAxMAITMwAAAcj5sO5n7eprRgABAAAByDAiBCBzX4/d2cOlIs8waAFL
# j8nCXAOQ/kdE8HIe9X1FZUUeEDANBgkqhkiG9w0BAQsFAASCAgA2jqBkri6AN9f5
# eHY32KaHKZkdcbjMFtc9A3vzvZy+x3SMz7O0L4R6jjw4tOs9sbV3KEY68tbaRbER
# Ny3k5edr/pkQRpFRAgJyX+nfCzwkt9PZ9fHyeb/KL1QU35j4zMEuVgIDK0cpcihn
# am6544vZwNbG064ZkIoguwSHXAyHoMROWSWVhDzRXZ7lxLYdmuyJ0eVe7dJc3QN8
# BBw569OkGYUgL9ftE+pppuxF+fAYqxvgjZP98AejgqJOCxdvGZybADDKuOgZkzcW
# BVyjnAaBsDx64Xmj2UXgRqtManHMj66AnnWp2MZFXb1+EcPAPrXyO6u+iJIIBR6U
# mhXueVVoaXl94YZ9lRciPr0LsYzHyzomd+xOMXl/nlOb5HPYcK8zXWCRACKNtJo3
# 8b24CshUmMc++4nFBcJ5XVelPUU6NFdEEeCz/8omvrvK3au/ky9YzuHdLCF0rf72
# SCXZ2RB1JU0zikF3T1wOhxx8HDWvXNJX/ESjIl34KEk7F/rV1IVNUhBdUE4LBhCo
# yoBQNZK3Kf35paYzjJeDxFmwLI1MImeuEScGF+Jr2FjiECHkhAf3vDuFVz3hMmtF
# sMPqrqbrzdIcz/+u6UZtfRsFwi9F/ho5Yxk/JTwYMYC85jhj6tAKMbpGRkF52ha2
# 9nlSnhUfJmcDPlBHZ1D9PFk8JfQdgw==
# SIG # End signature block
