#
# Module manifest for module 'Microsoft.Graph.Identity.SignIns'
#
# Generated by: Microsoft Corporation
#
# Generated on: 9/28/2022
#

@{

# Script module or binary module file associated with this manifest.
RootModule = './Microsoft.Graph.Identity.SignIns.psm1'

# Version number of this module.
ModuleVersion = '1.12.2'

# Supported PSEditions
CompatiblePSEditions = 'Core', 'Desktop'

# ID used to uniquely identify this module
GUID = '60f889fa-f873-43ad-b7d3-b7fc1273a44f'

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
RequiredAssemblies = './bin/Microsoft.Graph.Identity.SignIns.private.dll'

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = './Microsoft.Graph.Identity.SignIns.format.ps1xml'

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = 'Confirm-MgInformationProtectionSignature', 
               'Confirm-MgRiskyServicePrincipalCompromised', 
               'Confirm-MgRiskyUserCompromised', 
               'Find-MgIdentityConditionalAccessAuthenticationStrengthPolicyByMethodMode', 
               'Find-MgPolicyAuthenticationStrengthPolicyByMethodMode', 
               'Get-MgDataPolicyOperation', 'Get-MgIdentityApiConnector', 
               'Get-MgIdentityAuthenticationEventListener', 
               'Get-MgIdentityB2CUserFlow', 
               'Get-MgIdentityB2CUserFlowIdentityProvider', 
               'Get-MgIdentityB2CUserFlowIdentityProviderByRef', 
               'Get-MgIdentityB2CUserFlowLanguage', 
               'Get-MgIdentityB2CUserFlowLanguageDefaultPage', 
               'Get-MgIdentityB2CUserFlowLanguageDefaultPageContent', 
               'Get-MgIdentityB2CUserFlowLanguageOverridePage', 
               'Get-MgIdentityB2CUserFlowLanguageOverridePageContent', 
               'Get-MgIdentityB2CUserFlowUserAttributeAssignment', 
               'Get-MgIdentityB2CUserFlowUserAttributeAssignmentOrder', 
               'Get-MgIdentityB2CUserFlowUserAttributeAssignmentUserAttribute', 
               'Get-MgIdentityB2XUserFlow', 
               'Get-MgIdentityB2XUserFlowIdentityProvider', 
               'Get-MgIdentityB2XUserFlowIdentityProviderByRef', 
               'Get-MgIdentityB2XUserFlowLanguage', 
               'Get-MgIdentityB2XUserFlowLanguageDefaultPage', 
               'Get-MgIdentityB2XUserFlowLanguageDefaultPageContent', 
               'Get-MgIdentityB2XUserFlowLanguageOverridePage', 
               'Get-MgIdentityB2XUserFlowLanguageOverridePageContent', 
               'Get-MgIdentityB2XUserFlowUserAttributeAssignment', 
               'Get-MgIdentityB2XUserFlowUserAttributeAssignmentOrder', 
               'Get-MgIdentityB2XUserFlowUserAttributeAssignmentUserAttribute', 
               'Get-MgIdentityConditionalAccessAuthenticationContextClassReference', 
               'Get-MgIdentityConditionalAccessAuthenticationStrength', 
               'Get-MgIdentityConditionalAccessAuthenticationStrengthAuthenticationMethodMode', 
               'Get-MgIdentityConditionalAccessAuthenticationStrengthPolicy', 
               'Get-MgIdentityConditionalAccessAuthenticationStrengthPolicyCombinationConfiguration', 
               'Get-MgIdentityConditionalAccessNamedLocation', 
               'Get-MgIdentityConditionalAccessPolicy', 
               'Get-MgIdentityConditionalAccessTemplate', 
               'Get-MgIdentityContinuouAccessEvaluationPolicy', 
               'Get-MgIdentityCustomAuthenticationExtension', 
               'Get-MgIdentityProvider', 'Get-MgIdentityUserFlow', 
               'Get-MgIdentityUserFlowAttribute', 'Get-MgInformationProtection', 
               'Get-MgInformationProtectionBitlocker', 
               'Get-MgInformationProtectionBitlockerRecoveryKey', 
               'Get-MgInformationProtectionDataLossPreventionPolicy', 
               'Get-MgInformationProtectionPolicy', 
               'Get-MgInformationProtectionPolicyLabel', 
               'Get-MgInformationProtectionSensitivityPolicySetting', 
               'Get-MgInformationProtectionThreatAssessmentRequest', 
               'Get-MgInformationProtectionThreatAssessmentRequestResult', 
               'Get-MgOauth2PermissionGrant', 'Get-MgOauth2PermissionGrantDelta', 
               'Get-MgOrganizationCertificateBasedAuthConfiguration', 
               'Get-MgPolicyAccessReviewPolicy', 
               'Get-MgPolicyActivityBasedTimeoutPolicy', 
               'Get-MgPolicyAdminConsentRequestPolicy', 
               'Get-MgPolicyAppManagementPolicy', 
               'Get-MgPolicyAppManagementPolicyApplyTo', 
               'Get-MgPolicyAuthenticationFlowPolicy', 
               'Get-MgPolicyAuthenticationMethodPolicy', 
               'Get-MgPolicyAuthenticationMethodPolicyAuthenticationMethodConfiguration', 
               'Get-MgPolicyAuthenticationStrengthPolicy', 
               'Get-MgPolicyAuthenticationStrengthPolicyCombinationConfiguration', 
               'Get-MgPolicyAuthorizationPolicy', 
               'Get-MgPolicyAuthorizationPolicyDefaultUserRoleOverride', 
               'Get-MgPolicyB2CAuthenticationMethodPolicy', 
               'Get-MgPolicyClaimMappingPolicy', 
               'Get-MgPolicyCrossTenantAccessPolicy', 
               'Get-MgPolicyCrossTenantAccessPolicyDefault', 
               'Get-MgPolicyCrossTenantAccessPolicyPartner', 
               'Get-MgPolicyDefaultAppManagementPolicy', 
               'Get-MgPolicyDeviceRegistrationPolicy', 
               'Get-MgPolicyDirectoryRoleAccessReviewPolicy', 
               'Get-MgPolicyExternalIdentityPolicy', 
               'Get-MgPolicyFeatureRolloutPolicy', 
               'Get-MgPolicyFeatureRolloutPolicyApplyTo', 
               'Get-MgPolicyFeatureRolloutPolicyApplyToAvailableExtensionProperty', 
               'Get-MgPolicyFeatureRolloutPolicyApplyToById', 
               'Get-MgPolicyFeatureRolloutPolicyApplyToByRef', 
               'Get-MgPolicyFeatureRolloutPolicyApplyToUserOwnedObject', 
               'Get-MgPolicyHomeRealmDiscoveryPolicy', 
               'Get-MgPolicyIdentitySecurityDefaultEnforcementPolicy', 
               'Get-MgPolicyMobileAppManagementPolicy', 
               'Get-MgPolicyMobileAppManagementPolicyIncludedGroup', 
               'Get-MgPolicyMobileAppManagementPolicyIncludedGroupByRef', 
               'Get-MgPolicyMobileDeviceManagementPolicy', 
               'Get-MgPolicyMobileDeviceManagementPolicyIncludedGroup', 
               'Get-MgPolicyMobileDeviceManagementPolicyIncludedGroupByRef', 
               'Get-MgPolicyPermissionGrantPolicy', 
               'Get-MgPolicyPermissionGrantPolicyExclude', 
               'Get-MgPolicyPermissionGrantPolicyInclude', 
               'Get-MgPolicyRoleManagementPolicy', 
               'Get-MgPolicyRoleManagementPolicyAssignment', 
               'Get-MgPolicyRoleManagementPolicyAssignmentPolicy', 
               'Get-MgPolicyRoleManagementPolicyEffectiveRule', 
               'Get-MgPolicyRoleManagementPolicyRule', 
               'Get-MgPolicyServicePrincipalCreationPolicy', 
               'Get-MgPolicyServicePrincipalCreationPolicyExclude', 
               'Get-MgPolicyServicePrincipalCreationPolicyInclude', 
               'Get-MgPolicyTokenIssuancePolicy', 
               'Get-MgPolicyTokenLifetimePolicy', 'Get-MgRiskDetection', 
               'Get-MgRiskyServicePrincipal', 'Get-MgRiskyServicePrincipalHistory', 
               'Get-MgRiskyUser', 'Get-MgRiskyUserHistory', 
               'Get-MgServicePrincipalRiskDetection', 'Get-MgTrustFramework', 
               'Get-MgTrustFrameworkKeySet', 'Get-MgTrustFrameworkKeySetActiveKey', 
               'Get-MgTrustFrameworkPolicy', 'Get-MgTrustFrameworkPolicyContent', 
               'Get-MgUserAuthenticationEmailMethod', 
               'Get-MgUserAuthenticationFido2Method', 
               'Get-MgUserAuthenticationMethod', 
               'Get-MgUserAuthenticationMicrosoftAuthenticatorMethod', 
               'Get-MgUserAuthenticationMicrosoftAuthenticatorMethodDevice', 
               'Get-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceCommand', 
               'Get-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceCommandResponsepayload', 
               'Get-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceExtension', 
               'Get-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceMemberOf', 
               'Get-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceRegisteredOwner', 
               'Get-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceRegisteredOwnerByRef', 
               'Get-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceRegisteredUser', 
               'Get-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceTransitiveMemberOf', 
               'Get-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceUsageRights', 
               'Get-MgUserAuthenticationOperation', 
               'Get-MgUserAuthenticationPasswordlessMicrosoftAuthenticatorMethod', 
               'Get-MgUserAuthenticationPasswordlessMicrosoftAuthenticatorMethodDevice', 
               'Get-MgUserAuthenticationPasswordlessMicrosoftAuthenticatorMethodDeviceCommand', 
               'Get-MgUserAuthenticationPasswordlessMicrosoftAuthenticatorMethodDeviceCommandResponsepayload', 
               'Get-MgUserAuthenticationPasswordlessMicrosoftAuthenticatorMethodDeviceExtension', 
               'Get-MgUserAuthenticationPasswordlessMicrosoftAuthenticatorMethodDeviceMemberOf', 
               'Get-MgUserAuthenticationPasswordlessMicrosoftAuthenticatorMethodDeviceRegisteredOwner', 
               'Get-MgUserAuthenticationPasswordlessMicrosoftAuthenticatorMethodDeviceRegisteredOwnerByRef', 
               'Get-MgUserAuthenticationPasswordlessMicrosoftAuthenticatorMethodDeviceRegisteredUser', 
               'Get-MgUserAuthenticationPasswordlessMicrosoftAuthenticatorMethodDeviceTransitiveMemberOf', 
               'Get-MgUserAuthenticationPasswordlessMicrosoftAuthenticatorMethodDeviceUsageRights', 
               'Get-MgUserAuthenticationPasswordMethod', 
               'Get-MgUserAuthenticationPhoneMethod', 
               'Get-MgUserAuthenticationSoftwareOathMethod', 
               'Get-MgUserAuthenticationTemporaryAccessPassMethod', 
               'Get-MgUserAuthenticationWindowHelloForBusinessMethod', 
               'Get-MgUserAuthenticationWindowHelloForBusinessMethodDevice', 
               'Get-MgUserAuthenticationWindowHelloForBusinessMethodDeviceCommand', 
               'Get-MgUserAuthenticationWindowHelloForBusinessMethodDeviceCommandResponsepayload', 
               'Get-MgUserAuthenticationWindowHelloForBusinessMethodDeviceExtension', 
               'Get-MgUserAuthenticationWindowHelloForBusinessMethodDeviceMemberOf', 
               'Get-MgUserAuthenticationWindowHelloForBusinessMethodDeviceRegisteredOwner', 
               'Get-MgUserAuthenticationWindowHelloForBusinessMethodDeviceRegisteredOwnerByRef', 
               'Get-MgUserAuthenticationWindowHelloForBusinessMethodDeviceRegisteredUser', 
               'Get-MgUserAuthenticationWindowHelloForBusinessMethodDeviceTransitiveMemberOf', 
               'Get-MgUserAuthenticationWindowHelloForBusinessMethodDeviceUsageRights', 
               'Get-MgUserInformationProtection', 
               'Get-MgUserInformationProtectionBitlocker', 
               'Get-MgUserInformationProtectionBitlockerRecoveryKey', 
               'Get-MgUserInformationProtectionDataLossPreventionPolicy', 
               'Get-MgUserInformationProtectionPolicy', 
               'Get-MgUserInformationProtectionPolicyLabel', 
               'Get-MgUserInformationProtectionSensitivityLabel', 
               'Get-MgUserInformationProtectionSensitivityLabelSublabel', 
               'Get-MgUserInformationProtectionSensitivityPolicySetting', 
               'Get-MgUserInformationProtectionThreatAssessmentRequest', 
               'Get-MgUserInformationProtectionThreatAssessmentRequestResult', 
               'Invoke-MgAvailableIdentityProviderType', 
               'Invoke-MgBufferInformationProtectionDecrypt', 
               'Invoke-MgBufferInformationProtectionEncrypt', 
               'Invoke-MgDismissRiskyServicePrincipal', 
               'Invoke-MgDismissRiskyUser', 
               'Invoke-MgExtractInformationProtectionPolicyLabel', 
               'Invoke-MgSignInformationProtectionDigest', 
               'Invoke-MgUploadIdentityApiConnectorClientCertificate', 
               'Invoke-MgUploadTrustFrameworkKeySetCertificate', 
               'Invoke-MgUploadTrustFrameworkKeySetPkcs12', 
               'Invoke-MgUploadTrustFrameworkKeySetSecret', 
               'Invoke-MgUsageIdentityConditionalAccessAuthenticationStrengthPolicy', 
               'Invoke-MgUsagePolicyAuthenticationStrengthPolicy', 
               'New-MgDataPolicyOperation', 'New-MgIdentityApiConnector', 
               'New-MgIdentityAuthenticationEventListener', 
               'New-MgIdentityB2CUserFlow', 
               'New-MgIdentityB2CUserFlowIdentityProviderByRef', 
               'New-MgIdentityB2CUserFlowLanguage', 
               'New-MgIdentityB2CUserFlowLanguageDefaultPage', 
               'New-MgIdentityB2CUserFlowLanguageOverridePage', 
               'New-MgIdentityB2CUserFlowUserAttributeAssignment', 
               'New-MgIdentityB2XUserFlow', 
               'New-MgIdentityB2XUserFlowIdentityProviderByRef', 
               'New-MgIdentityB2XUserFlowLanguage', 
               'New-MgIdentityB2XUserFlowLanguageDefaultPage', 
               'New-MgIdentityB2XUserFlowLanguageOverridePage', 
               'New-MgIdentityB2XUserFlowUserAttributeAssignment', 
               'New-MgIdentityConditionalAccessAuthenticationContextClassReference', 
               'New-MgIdentityConditionalAccessAuthenticationStrengthAuthenticationMethodMode', 
               'New-MgIdentityConditionalAccessAuthenticationStrengthPolicy', 
               'New-MgIdentityConditionalAccessAuthenticationStrengthPolicyCombinationConfiguration', 
               'New-MgIdentityConditionalAccessNamedLocation', 
               'New-MgIdentityConditionalAccessPolicy', 
               'New-MgIdentityConditionalAccessTemplate', 
               'New-MgIdentityCustomAuthenticationExtension', 
               'New-MgIdentityProvider', 'New-MgIdentityUserFlow', 
               'New-MgIdentityUserFlowAttribute', 
               'New-MgInformationProtectionBitlockerRecoveryKey', 
               'New-MgInformationProtectionDataLossPreventionPolicy', 
               'New-MgInformationProtectionPolicyLabel', 
               'New-MgInformationProtectionThreatAssessmentRequest', 
               'New-MgInformationProtectionThreatAssessmentRequestResult', 
               'New-MgInvitation', 'New-MgOauth2PermissionGrant', 
               'New-MgPolicyActivityBasedTimeoutPolicy', 
               'New-MgPolicyAppManagementPolicy', 
               'New-MgPolicyAuthenticationMethodPolicyAuthenticationMethodConfiguration', 
               'New-MgPolicyAuthenticationStrengthPolicy', 
               'New-MgPolicyAuthenticationStrengthPolicyCombinationConfiguration', 
               'New-MgPolicyAuthorizationPolicy', 
               'New-MgPolicyAuthorizationPolicyDefaultUserRoleOverride', 
               'New-MgPolicyClaimMappingPolicy', 
               'New-MgPolicyCrossTenantAccessPolicyPartner', 
               'New-MgPolicyFeatureRolloutPolicy', 
               'New-MgPolicyFeatureRolloutPolicyApplyTo', 
               'New-MgPolicyFeatureRolloutPolicyApplyToByRef', 
               'New-MgPolicyHomeRealmDiscoveryPolicy', 
               'New-MgPolicyMobileAppManagementPolicy', 
               'New-MgPolicyMobileAppManagementPolicyIncludedGroupByRef', 
               'New-MgPolicyMobileDeviceManagementPolicy', 
               'New-MgPolicyMobileDeviceManagementPolicyIncludedGroupByRef', 
               'New-MgPolicyPermissionGrantPolicy', 
               'New-MgPolicyPermissionGrantPolicyExclude', 
               'New-MgPolicyPermissionGrantPolicyInclude', 
               'New-MgPolicyRoleManagementPolicy', 
               'New-MgPolicyRoleManagementPolicyAssignment', 
               'New-MgPolicyRoleManagementPolicyEffectiveRule', 
               'New-MgPolicyRoleManagementPolicyRule', 
               'New-MgPolicyServicePrincipalCreationPolicy', 
               'New-MgPolicyServicePrincipalCreationPolicyExclude', 
               'New-MgPolicyServicePrincipalCreationPolicyInclude', 
               'New-MgPolicyTokenIssuancePolicy', 
               'New-MgPolicyTokenLifetimePolicy', 'New-MgRiskDetection', 
               'New-MgRiskyServicePrincipal', 'New-MgRiskyServicePrincipalHistory', 
               'New-MgRiskyUser', 'New-MgRiskyUserHistory', 
               'New-MgServicePrincipalRiskDetection', 'New-MgTrustFrameworkKeySet', 
               'New-MgTrustFrameworkKeySetKey', 'New-MgTrustFrameworkPolicy', 
               'New-MgUserAuthenticationEmailMethod', 
               'New-MgUserAuthenticationFido2Method', 
               'New-MgUserAuthenticationMicrosoftAuthenticatorMethod', 
               'New-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceCommand', 
               'New-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceExtension', 
               'New-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceRegisteredOwnerByRef', 
               'New-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceUsageRights', 
               'New-MgUserAuthenticationOperation', 
               'New-MgUserAuthenticationPasswordlessMicrosoftAuthenticatorMethod', 
               'New-MgUserAuthenticationPasswordlessMicrosoftAuthenticatorMethodDeviceCommand', 
               'New-MgUserAuthenticationPasswordlessMicrosoftAuthenticatorMethodDeviceExtension', 
               'New-MgUserAuthenticationPasswordlessMicrosoftAuthenticatorMethodDeviceRegisteredOwnerByRef', 
               'New-MgUserAuthenticationPasswordlessMicrosoftAuthenticatorMethodDeviceUsageRights', 
               'New-MgUserAuthenticationPhoneMethod', 
               'New-MgUserAuthenticationSoftwareOathMethod', 
               'New-MgUserAuthenticationTemporaryAccessPassMethod', 
               'New-MgUserAuthenticationWindowHelloForBusinessMethod', 
               'New-MgUserAuthenticationWindowHelloForBusinessMethodDeviceCommand', 
               'New-MgUserAuthenticationWindowHelloForBusinessMethodDeviceExtension', 
               'New-MgUserAuthenticationWindowHelloForBusinessMethodDeviceRegisteredOwnerByRef', 
               'New-MgUserAuthenticationWindowHelloForBusinessMethodDeviceUsageRights', 
               'New-MgUserInformationProtectionBitlockerRecoveryKey', 
               'New-MgUserInformationProtectionDataLossPreventionPolicy', 
               'New-MgUserInformationProtectionPolicyLabel', 
               'New-MgUserInformationProtectionSensitivityLabel', 
               'New-MgUserInformationProtectionSensitivityLabelSublabel', 
               'New-MgUserInformationProtectionThreatAssessmentRequest', 
               'New-MgUserInformationProtectionThreatAssessmentRequestResult', 
               'Remove-MgDataPolicyOperation', 'Remove-MgIdentityApiConnector', 
               'Remove-MgIdentityAuthenticationEventListener', 
               'Remove-MgIdentityB2CUserFlow', 
               'Remove-MgIdentityB2CUserFlowIdentityProviderByRef', 
               'Remove-MgIdentityB2CUserFlowLanguage', 
               'Remove-MgIdentityB2CUserFlowLanguageDefaultPage', 
               'Remove-MgIdentityB2CUserFlowLanguageOverridePage', 
               'Remove-MgIdentityB2CUserFlowUserAttributeAssignment', 
               'Remove-MgIdentityB2XUserFlow', 
               'Remove-MgIdentityB2XUserFlowIdentityProviderByRef', 
               'Remove-MgIdentityB2XUserFlowLanguage', 
               'Remove-MgIdentityB2XUserFlowLanguageDefaultPage', 
               'Remove-MgIdentityB2XUserFlowLanguageOverridePage', 
               'Remove-MgIdentityB2XUserFlowUserAttributeAssignment', 
               'Remove-MgIdentityConditionalAccessAuthenticationContextClassReference', 
               'Remove-MgIdentityConditionalAccessAuthenticationStrength', 
               'Remove-MgIdentityConditionalAccessAuthenticationStrengthAuthenticationMethodMode', 
               'Remove-MgIdentityConditionalAccessAuthenticationStrengthPolicy', 
               'Remove-MgIdentityConditionalAccessAuthenticationStrengthPolicyCombinationConfiguration', 
               'Remove-MgIdentityConditionalAccessNamedLocation', 
               'Remove-MgIdentityConditionalAccessPolicy', 
               'Remove-MgIdentityConditionalAccessTemplate', 
               'Remove-MgIdentityContinuouAccessEvaluationPolicy', 
               'Remove-MgIdentityCustomAuthenticationExtension', 
               'Remove-MgIdentityProvider', 'Remove-MgIdentityUserFlow', 
               'Remove-MgIdentityUserFlowAttribute', 
               'Remove-MgInformationProtectionDataLossPreventionPolicy', 
               'Remove-MgInformationProtectionPolicy', 
               'Remove-MgInformationProtectionPolicyLabel', 
               'Remove-MgInformationProtectionSensitivityPolicySetting', 
               'Remove-MgInformationProtectionThreatAssessmentRequest', 
               'Remove-MgInformationProtectionThreatAssessmentRequestResult', 
               'Remove-MgOauth2PermissionGrant', 
               'Remove-MgPolicyAccessReviewPolicy', 
               'Remove-MgPolicyActivityBasedTimeoutPolicy', 
               'Remove-MgPolicyAdminConsentRequestPolicy', 
               'Remove-MgPolicyAppManagementPolicy', 
               'Remove-MgPolicyAuthenticationFlowPolicy', 
               'Remove-MgPolicyAuthenticationMethodPolicy', 
               'Remove-MgPolicyAuthenticationMethodPolicyAuthenticationMethodConfiguration', 
               'Remove-MgPolicyAuthenticationStrengthPolicy', 
               'Remove-MgPolicyAuthenticationStrengthPolicyCombinationConfiguration', 
               'Remove-MgPolicyAuthorizationPolicy', 
               'Remove-MgPolicyAuthorizationPolicyDefaultUserRoleOverride', 
               'Remove-MgPolicyB2CAuthenticationMethodPolicy', 
               'Remove-MgPolicyClaimMappingPolicy', 
               'Remove-MgPolicyCrossTenantAccessPolicy', 
               'Remove-MgPolicyCrossTenantAccessPolicyDefault', 
               'Remove-MgPolicyCrossTenantAccessPolicyPartner', 
               'Remove-MgPolicyDefaultAppManagementPolicy', 
               'Remove-MgPolicyDirectoryRoleAccessReviewPolicy', 
               'Remove-MgPolicyExternalIdentityPolicy', 
               'Remove-MgPolicyFeatureRolloutPolicy', 
               'Remove-MgPolicyFeatureRolloutPolicyApplyToByRef', 
               'Remove-MgPolicyHomeRealmDiscoveryPolicy', 
               'Remove-MgPolicyIdentitySecurityDefaultEnforcementPolicy', 
               'Remove-MgPolicyMobileAppManagementPolicy', 
               'Remove-MgPolicyMobileAppManagementPolicyIncludedGroupByRef', 
               'Remove-MgPolicyMobileDeviceManagementPolicy', 
               'Remove-MgPolicyMobileDeviceManagementPolicyIncludedGroupByRef', 
               'Remove-MgPolicyPermissionGrantPolicy', 
               'Remove-MgPolicyPermissionGrantPolicyExclude', 
               'Remove-MgPolicyPermissionGrantPolicyInclude', 
               'Remove-MgPolicyRoleManagementPolicy', 
               'Remove-MgPolicyRoleManagementPolicyAssignment', 
               'Remove-MgPolicyRoleManagementPolicyEffectiveRule', 
               'Remove-MgPolicyRoleManagementPolicyRule', 
               'Remove-MgPolicyServicePrincipalCreationPolicy', 
               'Remove-MgPolicyServicePrincipalCreationPolicyExclude', 
               'Remove-MgPolicyServicePrincipalCreationPolicyInclude', 
               'Remove-MgPolicyTokenIssuancePolicy', 
               'Remove-MgPolicyTokenLifetimePolicy', 'Remove-MgRiskDetection', 
               'Remove-MgRiskyServicePrincipal', 
               'Remove-MgRiskyServicePrincipalHistory', 'Remove-MgRiskyUser', 
               'Remove-MgRiskyUserHistory', 
               'Remove-MgServicePrincipalRiskDetection', 
               'Remove-MgTrustFrameworkKeySet', 'Remove-MgTrustFrameworkPolicy', 
               'Remove-MgUserAuthenticationEmailMethod', 
               'Remove-MgUserAuthenticationFido2Method', 
               'Remove-MgUserAuthenticationMicrosoftAuthenticatorMethod', 
               'Remove-MgUserAuthenticationMicrosoftAuthenticatorMethodDevice', 
               'Remove-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceCommand', 
               'Remove-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceExtension', 
               'Remove-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceRegisteredOwnerByRef', 
               'Remove-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceUsageRights', 
               'Remove-MgUserAuthenticationOperation', 
               'Remove-MgUserAuthenticationPasswordlessMicrosoftAuthenticatorMethod', 
               'Remove-MgUserAuthenticationPasswordlessMicrosoftAuthenticatorMethodDevice', 
               'Remove-MgUserAuthenticationPasswordlessMicrosoftAuthenticatorMethodDeviceCommand', 
               'Remove-MgUserAuthenticationPasswordlessMicrosoftAuthenticatorMethodDeviceExtension', 
               'Remove-MgUserAuthenticationPasswordlessMicrosoftAuthenticatorMethodDeviceRegisteredOwnerByRef', 
               'Remove-MgUserAuthenticationPasswordlessMicrosoftAuthenticatorMethodDeviceUsageRights', 
               'Remove-MgUserAuthenticationPasswordMethod', 
               'Remove-MgUserAuthenticationPhoneMethod', 
               'Remove-MgUserAuthenticationSoftwareOathMethod', 
               'Remove-MgUserAuthenticationTemporaryAccessPassMethod', 
               'Remove-MgUserAuthenticationWindowHelloForBusinessMethod', 
               'Remove-MgUserAuthenticationWindowHelloForBusinessMethodDevice', 
               'Remove-MgUserAuthenticationWindowHelloForBusinessMethodDeviceCommand', 
               'Remove-MgUserAuthenticationWindowHelloForBusinessMethodDeviceExtension', 
               'Remove-MgUserAuthenticationWindowHelloForBusinessMethodDeviceRegisteredOwnerByRef', 
               'Remove-MgUserAuthenticationWindowHelloForBusinessMethodDeviceUsageRights', 
               'Remove-MgUserInformationProtection', 
               'Remove-MgUserInformationProtectionDataLossPreventionPolicy', 
               'Remove-MgUserInformationProtectionPolicy', 
               'Remove-MgUserInformationProtectionPolicyLabel', 
               'Remove-MgUserInformationProtectionSensitivityLabel', 
               'Remove-MgUserInformationProtectionSensitivityLabelSublabel', 
               'Remove-MgUserInformationProtectionSensitivityPolicySetting', 
               'Remove-MgUserInformationProtectionThreatAssessmentRequest', 
               'Remove-MgUserInformationProtectionThreatAssessmentRequestResult', 
               'Reset-MgPolicyCrossTenantAccessPolicyDefaultToSystemDefault', 
               'Set-MgIdentityB2CUserFlowLanguageDefaultPageContent', 
               'Set-MgIdentityB2CUserFlowLanguageOverridePageContent', 
               'Set-MgIdentityB2CUserFlowUserAttributeAssignmentOrder', 
               'Set-MgIdentityB2XUserFlowLanguageDefaultPageContent', 
               'Set-MgIdentityB2XUserFlowLanguageOverridePageContent', 
               'Set-MgIdentityB2XUserFlowUserAttributeAssignmentOrder', 
               'Set-MgTrustFrameworkPolicyContent', 
               'Test-MgIdentityCustomAuthenticationExtensionAuthenticationConfiguration', 
               'Test-MgInformationProtectionDataLossPreventionPolicy', 
               'Test-MgInformationProtectionPolicyLabelApplication', 
               'Test-MgInformationProtectionPolicyLabelClassificationResult', 
               'Test-MgInformationProtectionPolicyLabelRemoval', 
               'Test-MgPolicyFeatureRolloutPolicyApplyToProperty', 
               'Update-MgDataPolicyOperation', 'Update-MgIdentityApiConnector', 
               'Update-MgIdentityAuthenticationEventListener', 
               'Update-MgIdentityB2CUserFlow', 
               'Update-MgIdentityB2CUserFlowLanguage', 
               'Update-MgIdentityB2CUserFlowLanguageDefaultPage', 
               'Update-MgIdentityB2CUserFlowLanguageOverridePage', 
               'Update-MgIdentityB2CUserFlowUserAttributeAssignment', 
               'Update-MgIdentityB2XUserFlow', 
               'Update-MgIdentityB2XUserFlowLanguage', 
               'Update-MgIdentityB2XUserFlowLanguageDefaultPage', 
               'Update-MgIdentityB2XUserFlowLanguageOverridePage', 
               'Update-MgIdentityB2XUserFlowUserAttributeAssignment', 
               'Update-MgIdentityConditionalAccessAuthenticationContextClassReference', 
               'Update-MgIdentityConditionalAccessAuthenticationStrength', 
               'Update-MgIdentityConditionalAccessAuthenticationStrengthAuthenticationMethodMode', 
               'Update-MgIdentityConditionalAccessAuthenticationStrengthPolicy', 
               'Update-MgIdentityConditionalAccessAuthenticationStrengthPolicyAllowedCombination', 
               'Update-MgIdentityConditionalAccessAuthenticationStrengthPolicyCombinationConfiguration', 
               'Update-MgIdentityConditionalAccessNamedLocation', 
               'Update-MgIdentityConditionalAccessPolicy', 
               'Update-MgIdentityConditionalAccessTemplate', 
               'Update-MgIdentityContinuouAccessEvaluationPolicy', 
               'Update-MgIdentityCustomAuthenticationExtension', 
               'Update-MgIdentityProvider', 'Update-MgIdentityUserFlow', 
               'Update-MgIdentityUserFlowAttribute', 
               'Update-MgInformationProtection', 
               'Update-MgInformationProtectionBitlocker', 
               'Update-MgInformationProtectionDataLossPreventionPolicy', 
               'Update-MgInformationProtectionPolicy', 
               'Update-MgInformationProtectionPolicyLabel', 
               'Update-MgInformationProtectionSensitivityPolicySetting', 
               'Update-MgInformationProtectionThreatAssessmentRequest', 
               'Update-MgInformationProtectionThreatAssessmentRequestResult', 
               'Update-MgOauth2PermissionGrant', 
               'Update-MgPolicyAccessReviewPolicy', 
               'Update-MgPolicyActivityBasedTimeoutPolicy', 
               'Update-MgPolicyAdminConsentRequestPolicy', 
               'Update-MgPolicyAppManagementPolicy', 
               'Update-MgPolicyAuthenticationFlowPolicy', 
               'Update-MgPolicyAuthenticationMethodPolicy', 
               'Update-MgPolicyAuthenticationMethodPolicyAuthenticationMethodConfiguration', 
               'Update-MgPolicyAuthenticationStrengthPolicy', 
               'Update-MgPolicyAuthenticationStrengthPolicyAllowedCombination', 
               'Update-MgPolicyAuthenticationStrengthPolicyCombinationConfiguration', 
               'Update-MgPolicyAuthorizationPolicy', 
               'Update-MgPolicyAuthorizationPolicyDefaultUserRoleOverride', 
               'Update-MgPolicyB2CAuthenticationMethodPolicy', 
               'Update-MgPolicyClaimMappingPolicy', 
               'Update-MgPolicyCrossTenantAccessPolicy', 
               'Update-MgPolicyCrossTenantAccessPolicyDefault', 
               'Update-MgPolicyCrossTenantAccessPolicyPartner', 
               'Update-MgPolicyDefaultAppManagementPolicy', 
               'Update-MgPolicyDeviceRegistrationPolicy', 
               'Update-MgPolicyDirectoryRoleAccessReviewPolicy', 
               'Update-MgPolicyExternalIdentityPolicy', 
               'Update-MgPolicyFeatureRolloutPolicy', 
               'Update-MgPolicyHomeRealmDiscoveryPolicy', 
               'Update-MgPolicyIdentitySecurityDefaultEnforcementPolicy', 
               'Update-MgPolicyMobileAppManagementPolicy', 
               'Update-MgPolicyMobileDeviceManagementPolicy', 
               'Update-MgPolicyPermissionGrantPolicy', 
               'Update-MgPolicyPermissionGrantPolicyExclude', 
               'Update-MgPolicyPermissionGrantPolicyInclude', 
               'Update-MgPolicyRoleManagementPolicy', 
               'Update-MgPolicyRoleManagementPolicyAssignment', 
               'Update-MgPolicyRoleManagementPolicyEffectiveRule', 
               'Update-MgPolicyRoleManagementPolicyRule', 
               'Update-MgPolicyServicePrincipalCreationPolicy', 
               'Update-MgPolicyServicePrincipalCreationPolicyExclude', 
               'Update-MgPolicyServicePrincipalCreationPolicyInclude', 
               'Update-MgPolicyTokenIssuancePolicy', 
               'Update-MgPolicyTokenLifetimePolicy', 'Update-MgRiskDetection', 
               'Update-MgRiskyServicePrincipal', 
               'Update-MgRiskyServicePrincipalHistory', 'Update-MgRiskyUser', 
               'Update-MgRiskyUserHistory', 
               'Update-MgServicePrincipalRiskDetection', 'Update-MgTrustFramework', 
               'Update-MgTrustFrameworkKeySet', 'Update-MgTrustFrameworkPolicy', 
               'Update-MgUserAuthenticationEmailMethod', 
               'Update-MgUserAuthenticationFido2Method', 
               'Update-MgUserAuthenticationMicrosoftAuthenticatorMethod', 
               'Update-MgUserAuthenticationMicrosoftAuthenticatorMethodDevice', 
               'Update-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceCommand', 
               'Update-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceExtension', 
               'Update-MgUserAuthenticationMicrosoftAuthenticatorMethodDeviceUsageRights', 
               'Update-MgUserAuthenticationOperation', 
               'Update-MgUserAuthenticationPasswordlessMicrosoftAuthenticatorMethod', 
               'Update-MgUserAuthenticationPasswordlessMicrosoftAuthenticatorMethodDevice', 
               'Update-MgUserAuthenticationPasswordlessMicrosoftAuthenticatorMethodDeviceCommand', 
               'Update-MgUserAuthenticationPasswordlessMicrosoftAuthenticatorMethodDeviceExtension', 
               'Update-MgUserAuthenticationPasswordlessMicrosoftAuthenticatorMethodDeviceUsageRights', 
               'Update-MgUserAuthenticationPhoneMethod', 
               'Update-MgUserAuthenticationSoftwareOathMethod', 
               'Update-MgUserAuthenticationTemporaryAccessPassMethod', 
               'Update-MgUserAuthenticationWindowHelloForBusinessMethod', 
               'Update-MgUserAuthenticationWindowHelloForBusinessMethodDevice', 
               'Update-MgUserAuthenticationWindowHelloForBusinessMethodDeviceCommand', 
               'Update-MgUserAuthenticationWindowHelloForBusinessMethodDeviceExtension', 
               'Update-MgUserAuthenticationWindowHelloForBusinessMethodDeviceUsageRights', 
               'Update-MgUserInformationProtection', 
               'Update-MgUserInformationProtectionBitlocker', 
               'Update-MgUserInformationProtectionDataLossPreventionPolicy', 
               'Update-MgUserInformationProtectionPolicy', 
               'Update-MgUserInformationProtectionPolicyLabel', 
               'Update-MgUserInformationProtectionSensitivityLabel', 
               'Update-MgUserInformationProtectionSensitivityLabelSublabel', 
               'Update-MgUserInformationProtectionSensitivityPolicySetting', 
               'Update-MgUserInformationProtectionThreatAssessmentRequest', 
               'Update-MgUserInformationProtectionThreatAssessmentRequestResult'

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
