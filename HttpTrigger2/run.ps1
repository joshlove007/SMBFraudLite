using namespace System.Net

# Input bindings are passed in via param block.
param($Request, $TriggerMetadata)

$AzContext = (Connect-AzAccount -Identity).Context

$body = @{
    Subscription              = $AzContext.Subscription.Id
    AccountId                 = $AzContext.Account.Id
    Tenant                    = $AzContext.Tenant.Id
    AccessToken               = (Get-AzAccessToken).Token
    MicrosoftGraphAccessToken = (Get-AzAccessToken -ResourceTypeName MSGraph).Token
} | ConvertTo-Json

# Associate values to output bindings by calling 'Push-OutputBinding'.
Push-OutputBinding -Name Response -Value ([HttpResponseContext]@{
    StatusCode = [HttpStatusCode]::OK
    Body = $body
})
