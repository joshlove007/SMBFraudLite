using namespace System.Net
param(
    $Request,

    $TriggerMetadata
)
try {
    #Region Functions
        #Region Function ConvertFrom-JWTtoken
            function ConvertFrom-JWTtoken {
                [cmdletbinding()]
                param(
                    [Parameter(Mandatory=$true,ValueFromPipeline=$true)]
                    [string]
                    $token
                )
            
                #Validate as per https://tools.ietf.org/html/rfc7519
                #Access and ID tokens are fine, Refresh tokens will not work
                if (!$token.Contains(".") -or !$token.StartsWith("eyJ")) { 
                    Write-Error "Invalid token" -ErrorAction Stop 
                }
            
                #Header
                $tokenheader = $token.Split(".")[0].Replace('-', '+').Replace('_', '/')

                #Fix padding as needed, keep adding "=" until string length modulus 4 reaches 0
                while ($tokenheader.Length % 4) { 
                    Write-Verbose "Invalid length for a Base-64 char array or string, adding =" 
                    $tokenheader += "=" 
                }

                Write-Verbose "Base64 encoded (padded) header:"
                Write-Verbose $tokenheader

                #Convert from Base64 encoded string to PSObject all at once
                Write-Verbose "Decoded header:"
                #[System.Text.Encoding]::ASCII.GetString([system.convert]::FromBase64String($tokenheader)) | ConvertFrom-Json | Format-List | Out-Default
            
                #Payload
                $tokenPayload = $token.Split(".")[1].Replace('-', '+').Replace('_', '/')

                #Fix padding as needed, keep adding "=" until string length modulus 4 reaches 0
                while ($tokenPayload.Length % 4) { 
                    Write-Verbose "Invalid length for a Base-64 char array or string, adding ="
                    $tokenPayload += "=" 
                }
                Write-Verbose "Base64 encoded (padded) payoad:"
                Write-Verbose $tokenPayload

                #Convert to Byte array
                $tokenByteArray = [System.Convert]::FromBase64String($tokenPayload)

                #Convert to string array
                $tokenArray = [System.Text.Encoding]::ASCII.GetString($tokenByteArray)

                Write-Verbose "Decoded array in JSON format:"
                Write-Verbose $tokenArray
                
                #Convert from JSON to PSObject
                $tokobj = $tokenArray | ConvertFrom-Json
                Write-Verbose "Decoded Payload:"
                
                return $tokobj
            }
        #EndRegion

        #Region Function Invoke-VertexAuthProxy
            function Invoke-VertexAuthProxy{
                [cmdletbinding()]
                param(
                    [Parameter(Mandatory)]
                    [ValidateNotNullOrEmpty()] 
                    [string]
                    $tenantId,

                    [Parameter(Mandatory)]
                    [ValidateNotNullOrEmpty()]
                    [string]
                    $region,

                    [Parameter(Mandatory)]
                    [ValidateNotNullOrEmpty()]
                    [ValidateSet('Azure','MsGraph')]
                    [string]
                    $Resource,

                    [Parameter(Mandatory)]
                    [ValidateNotNullOrEmpty()]
                    [ValidateSet('post','get','put','patch','delete')]
                    [string]
                    $RequestMethod,

                    [Parameter()]
                    [ValidateNotNullOrEmpty()]
                    [string]
                    $RequestBody,

                    [Parameter(Mandatory)]
                    [ValidateNotNullOrEmpty()]
                    [string]
                    $RequestUrl,
                    
                    [Parameter(Mandatory)]
                    [ValidateNotNullOrEmpty()]
                    [string]
                    $vertexEndpoint,

                    [Parameter(Mandatory)]
                    [ValidateNotNullOrEmpty()]
                    [string]
                    $vertexApiKey,

                    [Parameter(Mandatory)]
                    [ValidateNotNullOrEmpty()]
                    [string]
                    $vertexApiUser,

                    [Parameter()]
                    [ValidateNotNullOrEmpty()]
                    [string]
                    $ResourceURL = 'https://management.azure.com'
                    )

                $headers = @{
                    ApiUser = $vertexApiUser
                    ApiKey  =  $vertexApiKey
                }

                $body = Switch ($Resource){
                    "Azure"    {
                        @{
                            id          = $tenantId
                            httpMethod  = $RequestMethod
                            region      = $region
                            provider    = 'Microsoft'
                            resourceURL = $ResourceURL
                            url         = $RequestUrl
                        }
                    }
                    "MsGraph"  {
                        @{
                            id          = $tenantId
                            httpMethod  = $RequestMethod
                            region      = $region
                            resource    = 'microsoft_graph'
                            url         = $RequestUrl
                        }
                    }
                }

                if($RequestBody){$body.body = $RequestBody}

                $bodyJson = $body | ConvertTo-Json

                $url = "$vertexEndpoint/gc-api-admin/authproxy/execute"

                $response = Invoke-RestMethod -Method POST -Uri $url -Headers $headers -Body $bodyJson -ContentType application/json

                return $response
            }
        #EndRegion

        #Region Function Get-PartnerMsToken
            function Get-PartnerMsToken{
                param (
                    $Resource = "https://management.azure.com",
                    $tenantId,
                    $Region,
                    $ApiUser,
                    $Apikey,
                    $ApiToken,
                    $VertexEndpoint = 'https://api-ck-dev.tdmarketplace.net'
                )
                $GetTokenParams= @{
                    Method      = 'POST'
                    Uri         = "$VertexEndpoint/gc-api-microsoft/partner/$Region/GetToken"
                    ContentType = 'application/json'
                    Headers = @{
                        ApiUser = $ApiUser
                        ApiKey  = $ApiKey
                        token   = $ApiToken
                    }
                    Body = @{
                        resource = $Resource
                        customerId = $tenantId
                    } | ConvertTo-Json
                }

                Return (Invoke-RestMethod @GetTokenParams).Token
            }
        #EndRegion
    #EndRegion

    #Region Variables
        $tenantId       = $Request.Body.tenantId  
        $Region         = $Request.Body.region        
        $VertexEndpoint = $Request.Body.VertexEndpoint
        $VertexApiUser  = $Request.Body.VertexApiUser 
        $VertexApiKey   = $Request.Body.VertexApiKey
        $VertexApiToken = $Request.Body.VertexApiToken
        $PSCommand      = $Request.Body.Command
        $ConnectAz      = $Request.Body.ConnectAz
    #EndRegion

    #Region Get Tokens and Connect Modules
        if($ConnectAz){
            #Region Get Tokens
                $AzureTokenParams = @{
                    tenantId       = $tenantId
                    region         = $Region
                    Resource       = "https://management.azure.com"
                    VertexEndpoint = $VertexEndpoint
                    ApiKey         = $VertexApiKey
                    ApiUser        = $VertexApiUser
                    ApiToken       = $VertexApiToken
                }
                $AzureToken = Get-PartnerMsToken @AzureTokenParams

                $GraphTokenParams = @{
                    tenantId       = $tenantId
                    region         = $Region
                    Resource       = "https://graph.microsoft.com"
                    VertexEndpoint = $VertexEndpoint
                    ApiKey         = $VertexApiKey
                    ApiUser        = $VertexApiUser
                    ApiToken       = $VertexApiToken
                }
                $MSGraphToken = Get-PartnerMsToken @GraphTokenParams

                $AzureId = ($AzureToken | ConvertFrom-JWTtoken).appid
            #EndRegion

            #Region Connect Azure and Graph Modules
                Connect-AzAccount -Tenant $tenantId -AccountId $AzureId -AccessToken $AzureToken -MicrosoftGraphAccessToken $MSGraphToken

                Connect-MgGraph  -AccessToken $MSGraphToken
            #EndRegion
        }
    #EndRegion

    #Region Run Command
        #Capture Host Console Output
        $Path = "C:\home\site\wwwroot\Transcript_$(New-guid).txt"
        Start-Transcript -Path $Path -UseMinimalHeader

        #Run Command
        $Result = Invoke-Expression $PSCommand

        #Stop Capturing
        Stop-Transcript

        #Retrieve Caputured Output
        $HostOutput = Get-Content -Path $Path
        Remove-Item -Path $Path
    #EndRegion
}
catch {
    $E = $_
}

#Region Http Output
    $body = @{
        Result     = $Result
        HostOutput = $HostOutput
        Error      = $E
    } | ConvertTo-Json -EscapeHandling EscapeHtml -Depth 3 

    Write-Host $body

    Push-OutputBinding -Name Response -Value ([HttpResponseContext]@{
        StatusCode = [HttpStatusCode]::OK
        Body = $body
    })
    Write-Host "Pushed Output Function Finished"
#EndRegion