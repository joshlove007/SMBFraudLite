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
                    [Parameter(Mandatory,ValueFromPipeline)]
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
            $ConvertFrom_JWTtoken = "function ConvertFrom-JWTtoken {${Function:ConvertFrom-JWTtoken}}"
        #EndRegion

        #Region Function Invoke-VertexAuthProxy
            function Invoke-VertexAuthProxy{
                [cmdletbinding()]
                param(
                    [Parameter(Mandatory)]
                    [ValidateNotNullOrEmpty()] 
                    [string]
                    $TenantId,

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
                            id          = $TenantId
                            httpMethod  = $RequestMethod
                            region      = $region
                            provider    = 'Microsoft'
                            resourceURL = $ResourceURL
                            url         = $RequestUrl
                        }
                    }
                    "MsGraph"  {
                        @{
                            id          = $TenantId
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
            $Invoke_VertexAuthProxy = "function Invoke-VertexAuthProxy {${Function:Invoke-VertexAuthProxy}}"
        #EndRegion

        #Region Function Get-PartnerMsToken
            function Get-PartnerMsToken{
                [cmdletbinding()]
                param (
                    $Resource = "https://management.azure.com",
                    $TenantId,
                    $Region,
                    $ApiUser,
                    $Apikey,
                    $ApiToken,
                    $VertexEndpoint = 'https://api-ck-dev.tdmarketplace.net',
                    $Timeout = 10
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
                        customerId = $TenantId
                    } | ConvertTo-Json
                }

                try {
                    $Token = (Invoke-RestMethod @GetTokenParams -TimeoutSec $Timeout).Token
                    Return $Token
                }
                catch {
                    Write-Error -Message "[Get-PartnerMsToken] An Error occured retrieving [$Resource] Token for [$TenantId]: $($_.Exception.Message)"
                }
            }
            $Get_PartnerMsToken = "function Get-PartnerMsToken {${Function:Get-PartnerMsToken}}"
        #EndRegion

        #Region Function Wait-ForTest
            function Wait-ForTest {
                [cmdletbinding(DefaultParameterSetName="default")]
                [Alias("wft","W-FT","WFC","W-FC","Wait-ForCommand")]
                param (
                    [Parameter(ParameterSetName='Bool')]
                    [Parameter(ParameterSetName='Result')]
                    [Parameter(ParameterSetName='default')]
                    [Parameter(Mandatory,ValueFromPipeline,Position=0,
                    HelpMessage='Scriptblock to run whose result is either null or false until test is successful')]
                    [Alias("C","Cmd","T","Test")]
                    [ValidateNotNullOrEmpty()]
                    [scriptblock]
                    $Command,

                    [Parameter(Position=1,
                    HelpMessage='Where-Object Filter Statement Scriptblock')]
                    [Alias("W","Wh","?O","?Obj","WObj","WhObj","F","FS","Filter","FilterScript","WhereObj","WhereObject")]
                    [ValidateNotNullOrEmpty()]
                    [scriptblock]
                    $Where,
                    
                    [Parameter(Position=2,
                    HelpMessage='Maximum amount of time (in seconds) to wait for command to be true or not null before timing out')]
                    [Alias("M","MW","Max","MaxSec")]
                    [ValidateNotNullOrEmpty()]
                    [int]
                    $MaxWait = 120,
                
                    [Parameter(Position=3,
                    HelpMessage='Interval of time (in seconds) to sleep between each test of the command')]
                    [Alias("I","In")]
                    [ValidateNotNullOrEmpty()]
                    [int]
                    $Interval = 5,

                    [Parameter(HelpMessage='Return Output of command',
                    ParameterSetName='Result')]
                    [Alias("RO","ReturnResult",'ROutput',"OutR","OutputResult","OutResult","Results")]
                    [ValidateNotNullOrEmpty()]
                    [switch]
                    $ReturnOutput,

                    [Parameter(HelpMessage='Return Boolean (True/False) Value of Test Result. Will convert non-null values to True and null to False.',
                    ParameterSetName='Bool')]
                    [Alias("RB","RBool","RtBool","ReturnBool","OutB","OutBool","OutputBoolean","Bool")]
                    [ValidateNotNullOrEmpty()]
                    [switch]
                    $ReturnBoolean,

                    [Parameter()]
                    [Alias("Ig","IgE","IgEr","IgError","IgErrors","IgnoreErrors","NoErrors","NoError")]
                    [ValidateNotNullOrEmpty()]
                    [switch]
                    $IgnoreError

                )
                $Test_StartTime = Get-Date
                $E = $null

                Write-Verbose "[Wait-ForTest] Starting Test Command Loop"

                $DebugLoopInt = 1

                do{
                    Try{
                        if($Where){
                            $Test = Invoke-Command $Command -NoNewScope | Where-Object $Where
                        }
                        else{
                            $Test = Invoke-Command $Command -NoNewScope
                        }
                    }
                    Catch{
                        $E = $_
                        if($IgnoreError -or $ErrorActionPreference -in ('SilentlyContinue','Ignore')){
                            Write-Debug "[Wait-ForTest][Test $DebugLoopInt] An Error occured while running Command: $($E | Out-String)"
                        }
                    }

                    $DebugLoopTimeSpan = New-TimeSpan -St $Test_StartTime -E (Get-Date)
                    $DebugResult = If($E){"Error"}elseif($null -eq $Test){"null"}else{$Test}
                    Write-Debug "[Wait-ForTest][Test $DebugLoopInt] Result: $DebugResult"
                    Write-Debug "[Wait-ForTest][Test $DebugLoopInt] Elapsed Time: $DebugLoopTimeSpan"
                    $DebugLoopInt++

                    if(!$Test -and (!$E -or $IgnoreError)){Start-Sleep -Seconds $Interval}
                }
                while(!$Test -and (!$E -or $IgnoreError) -and $Test_StartTime.AddSeconds($MaxWait) -gt (Get-Date))
                
                $Test_EndTime = Get-Date
                $TotalTime = New-TimeSpan -St $Test_StartTime -E $Test_EndTime
                Write-Verbose "[Wait-ForTest] Total Test Time: $TotalTime"

                if($Test){
                    Write-Verbose "[Wait-ForTest] Test '$Command' is true"
                    Write-Verbose "[Wait-ForTest] Test Result: $Test"
                    
                }
                elseif ($E -and !$IgnoreError) {
                    $ErrorMessage = if($E.ErrorDetails.Message){$E.ErrorDetails.Message}
                    elseif($E.Exception.Message){$E.Exception.Message}
                    else{$E | Out-String}
                    Write-Error -Message "[Wait-ForTest] An Error occured while running Command: $ErrorMessage"
                }
                else{
                    Write-Verbose "[Wait-ForTest] Max Wait Reached and Test '$Command' Still Null or False"
                }
            
                if($ReturnOutput){
                    return $Test
                }elseif($ReturnBoolean){
                    return $(if($Test){$true}else{$false})
                }
            }
            $Wait_ForTest = "function Wait-ForTest {${Function:Wait-ForTest}}"
        #EndRegion

        #Region Function ValidateGuid
            function Test-Guid 
            {
                [Cmdletbinding()]
                [OutputType([bool])]
                param (
                    [Parameter(Mandatory = $true, Position = 0, ValueFromPipeline = $True)]
                    [AllowEmptyString()]
                        [string]$InputObject
                )

                process {
                    return [guid]::TryParse($InputObject, $([ref][guid]::Empty))
                }
            }
            $Test_Guid = "function Test-Guid {${Function:Test-Guid}}"
        #EndRegion
        
        #Region Function Get-PacAzRegions
            function Get-PacAzRegions {
                [cmdletbinding(DefaultParameterSetName='ReturnEverything')]
                param (
                    [Parameter(Mandatory,ParameterSetName='ReturnEverything')]
                    [Parameter(Mandatory,ParameterSetName='ReturnClosestRegion')]
                    [Parameter(Mandatory,ParameterSetName='ReturnAllRegions')]
                    [Parameter(Mandatory,ParameterSetName='ReturnGeographyGroup')]
                    [ValidateNotNullOrEmpty()]
                    [ValidateSet('AT','ATSND','ATSSND','AU','AUSND','AUSSND','BE','BESND','BESSND','CA','CASND','CASSND','CH','CHSND','CHSSND','CZ','CZSND','CZSSND','DE','DEFAULT','DESND','DK','DKSND','DKSSND','ES','ESSND','ESSSND','FI','FISND','FISSND','FR','FRSND','FRSSND','GB','GBSND','HKSSND','HR','HRSND','HU','HUSND','ID','IDSND','IN','INSND','IT','ITSND','ITSSND','LA','LASND','MX','MXSND','MYSSND','NL','NLSND','NLSSND','NO','NOSND','NOSSND','PL','PLSND','PLSSND','PT','PTSND','PTSSND','RO','ROSND','RS','RSSND','SE','SESAT','SESAU','SESBE','SESCA','SESCH','SESCZ','SESDE','SESDK','SESES','SESFI','SESFR','SESHK','SESID','SESIN','SESIT','SESMY','SESND','SESNL','SESNO','SESPL','SESPT','SESSE','SESSG','SESSND','SESUK','SESUS','SESVN','SF','SFSND','SG','SGSND','SGSSND','SI','SISND','SK','SKSND','US','USMSND','USSND','USSSND','VN','VNSND','VNSSND')]
                    [string]
                    $PacRegion,

                    [Parameter(ParameterSetName='ReturnClosestRegion')]
                    [switch]
                    $ClosestOnly,

                    [Parameter(ParameterSetName='ReturnAllRegions')]
                    [switch]
                    $RegionsOnly,

                    [Parameter(ParameterSetName='ReturnGeographyGroup')]
                    [switch]
                    $GeoGroupOnly
                )
                #https://api-ck-dev.tdmarketplace.net/gc-api-admin/admin/regions?environment=ALL

                #Region Pac Region to Az Region hashtable
                    $PacRegionHash = [PSCustomObject]@{
                        DEFAULT = [PSCustomObject]@{GeographyGroup='US'          ;ClosestRegion='eastus'            ;AzRegions=@('eastus','switzerlandnorth','southeastasia')}     
                        AT      = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='switzerlandnorth'  ;AzRegions=@('switzerlandnorth','germanywestcentral','westeurope')} 
                        ATSND   = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='switzerlandnorth'  ;AzRegions=@('switzerlandnorth','germanywestcentral','westeurope')}     
                        ATSSND  = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='switzerlandnorth'  ;AzRegions=@('switzerlandnorth','germanywestcentral','westeurope')}     
                        AU      = [PSCustomObject]@{GeographyGroup='Asia Pacific';ClosestRegion='australiacentral'  ;AzRegions=@('australiacentral','australiaeast','australiasoutheast')} 
                        AUSND   = [PSCustomObject]@{GeographyGroup='Asia Pacific';ClosestRegion='australiacentral'  ;AzRegions=@('australiacentral','australiaeast','australiasoutheast')}     
                        AUSSND  = [PSCustomObject]@{GeographyGroup='Asia Pacific';ClosestRegion='australiacentral'  ;AzRegions=@('australiacentral','australiaeast','australiasoutheast')}     
                        BE      = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='francecentral'     ;AzRegions=@('francecentral','uksouth','germanywestcentral')} 
                        BESND   = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='francecentral'     ;AzRegions=@('francecentral','uksouth','germanywestcentral')}     
                        BESSND  = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='francecentral'     ;AzRegions=@('francecentral','uksouth','germanywestcentral')}     
                        CA      = [PSCustomObject]@{GeographyGroup='Canada'      ;ClosestRegion='canadacentral'     ;AzRegions=@('canadacentral','canadaeast','westus2')} 
                        CASND   = [PSCustomObject]@{GeographyGroup='Canada'      ;ClosestRegion='canadacentral'     ;AzRegions=@('canadacentral','canadaeast','westus2')}     
                        CASSND  = [PSCustomObject]@{GeographyGroup='Canada'      ;ClosestRegion='canadacentral'     ;AzRegions=@('canadacentral','canadaeast','westus2')}     
                        CH      = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='switzerlandnorth'  ;AzRegions=@('switzerlandnorth','germanywestcentral','francecentral')} 
                        CHSND   = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='switzerlandnorth'  ;AzRegions=@('switzerlandnorth','germanywestcentral','francecentral')}     
                        CHSSND  = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='switzerlandnorth'  ;AzRegions=@('switzerlandnorth','germanywestcentral','francecentral')}     
                        CZ      = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='switzerlandnorth'  ;AzRegions=@('switzerlandnorth','germanywestcentral','westeurope')} 
                        CZSND   = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='switzerlandnorth'  ;AzRegions=@('switzerlandnorth','germanywestcentral','westeurope')}     
                        CZSSND  = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='switzerlandnorth'  ;AzRegions=@('switzerlandnorth','germanywestcentral','westeurope')}     
                        DE      = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='germanywestcentral';AzRegions=@('germanywestcentral','westeurope','switzerlandnorth')} 
                        DESND   = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='germanywestcentral';AzRegions=@('germanywestcentral','westeurope','switzerlandnorth')}     
                        DK      = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='westeurope'        ;AzRegions=@('westeurope','norwayeast','swedencentral')} 
                        DKSND   = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='westeurope'        ;AzRegions=@('westeurope','norwayeast','swedencentral')}     
                        DKSSND  = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='westeurope'        ;AzRegions=@('westeurope','norwayeast','swedencentral')}     
                        ES      = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='francecentral'     ;AzRegions=@('francecentral','switzerlandnorth','ukwest')} 
                        ESSND   = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='francecentral'     ;AzRegions=@('francecentral','switzerlandnorth','ukwest')}     
                        ESSSND  = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='francecentral'     ;AzRegions=@('francecentral','switzerlandnorth','ukwest')}     
                        FI      = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='swedencentral'     ;AzRegions=@('swedencentral','norwayeast','westeurope')} 
                        FISND   = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='swedencentral'     ;AzRegions=@('swedencentral','norwayeast','westeurope')}     
                        FISSND  = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='swedencentral'     ;AzRegions=@('swedencentral','norwayeast','westeurope')}     
                        FR      = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='francecentral'     ;AzRegions=@('francecentral','uksouth','switzerlandnorth')} 
                        FRSND   = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='francecentral'     ;AzRegions=@('francecentral','uksouth','switzerlandnorth')}     
                        FRSSND  = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='francecentral'     ;AzRegions=@('francecentral','uksouth','switzerlandnorth')}     
                        GB      = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='uksouth'           ;AzRegions=@('uksouth','ukwest','northeurope')} 
                        GBSND   = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='uksouth'           ;AzRegions=@('uksouth','ukwest','northeurope')}     
                        HKSSND  = [PSCustomObject]@{GeographyGroup='Asia Pacific';ClosestRegion='eastasia'          ;AzRegions=@('eastasia','southeastasia','koreacentral')}     
                        HR      = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='switzerlandnorth'  ;AzRegions=@('switzerlandnorth','germanywestcentral','westeurope')} 
                        HRSND   = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='switzerlandnorth'  ;AzRegions=@('switzerlandnorth','germanywestcentral','westeurope')}     
                        HU      = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='switzerlandnorth'  ;AzRegions=@('switzerlandnorth','germanywestcentral','westeurope')} 
                        HUSND   = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='switzerlandnorth'  ;AzRegions=@('switzerlandnorth','germanywestcentral','westeurope')}     
                        ID      = [PSCustomObject]@{GeographyGroup='Asia Pacific';ClosestRegion='southeastasia'     ;AzRegions=@('southeastasia','eastasia','australiaeast')} 
                        IDSND   = [PSCustomObject]@{GeographyGroup='Asia Pacific';ClosestRegion='southeastasia'     ;AzRegions=@('southeastasia','eastasia','australiaeast')}     
                        IN      = [PSCustomObject]@{GeographyGroup='Asia Pacific';ClosestRegion='centralindia'      ;AzRegions=@('centralindia','southindia','uaenorth')} 
                        INSND   = [PSCustomObject]@{GeographyGroup='Asia Pacific';ClosestRegion='centralindia'      ;AzRegions=@('centralindia','southindia','uaenorth')}     
                        IT      = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='switzerlandnorth'  ;AzRegions=@('switzerlandnorth','germanywestcentral','francecentral')} 
                        ITSND   = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='switzerlandnorth'  ;AzRegions=@('switzerlandnorth','germanywestcentral','francecentral')}     
                        ITSSND  = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='switzerlandnorth'  ;AzRegions=@('switzerlandnorth','germanywestcentral','francecentral')}     
                        LA      = [PSCustomObject]@{GeographyGroup='Asia Pacific';ClosestRegion='eastasia'          ;AzRegions=@('eastasia','southeastasia','southindia')} 
                        LASND   = [PSCustomObject]@{GeographyGroup='Asia Pacific';ClosestRegion='eastasia'          ;AzRegions=@('eastasia','southeastasia','southindia')}     
                        MX      = [PSCustomObject]@{GeographyGroup='US'          ;ClosestRegion='southcentralus'    ;AzRegions=@('southcentralus','westus3','westus')} 
                        MXSND   = [PSCustomObject]@{GeographyGroup='US'          ;ClosestRegion='southcentralus'    ;AzRegions=@('southcentralus','westus3','westus')}     
                        MYSSND  = [PSCustomObject]@{GeographyGroup='Asia Pacific';ClosestRegion='southeastasia'     ;AzRegions=@('southeastasia','eastasia','southindia')}     
                        NL      = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='westeurope'        ;AzRegions=@('westeurope','germanywestcentral','francecentral')} 
                        NLSND   = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='westeurope'        ;AzRegions=@('westeurope','germanywestcentral','francecentral')}     
                        NLSSND  = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='westeurope'        ;AzRegions=@('westeurope','germanywestcentral','francecentral')}     
                        NO      = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='norwayeast'        ;AzRegions=@('norwayeast','swedencentral','westeurope')} 
                        NOSND   = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='norwayeast'        ;AzRegions=@('norwayeast','swedencentral','westeurope')}     
                        NOSSND  = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='norwayeast'        ;AzRegions=@('norwayeast','swedencentral','westeurope')}     
                        PL      = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='germanywestcentral';AzRegions=@('germanywestcentral','swedencentral','westeurope')} 
                        PLSND   = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='germanywestcentral';AzRegions=@('germanywestcentral','swedencentral','westeurope')}     
                        PLSSND  = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='germanywestcentral';AzRegions=@('germanywestcentral','swedencentral','westeurope')}     
                        PT      = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='francecentral'     ;AzRegions=@('francecentral','switzerlandnorth','ukwest')} 
                        PTSND   = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='francecentral'     ;AzRegions=@('francecentral','switzerlandnorth','ukwest')}     
                        PTSSND  = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='francecentral'     ;AzRegions=@('francecentral','switzerlandnorth','ukwest')}     
                        RO      = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='switzerlandnorth'  ;AzRegions=@('switzerlandnorth','germanywestcentral','swedencentral')} 
                        ROSND   = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='switzerlandnorth'  ;AzRegions=@('switzerlandnorth','germanywestcentral','swedencentral')}     
                        RS      = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='switzerlandnorth'  ;AzRegions=@('switzerlandnorth','germanywestcentral','westeurope')} 
                        RSSND   = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='switzerlandnorth'  ;AzRegions=@('switzerlandnorth','germanywestcentral','westeurope')}     
                        SE      = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='swedencentral'     ;AzRegions=@('swedencentral','norwayeast','westeurope')} 
                        SESND   = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='swedencentral'     ;AzRegions=@('swedencentral','norwayeast','westeurope')}     
                        SESSND  = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='swedencentral'     ;AzRegions=@('swedencentral','norwayeast','westeurope')}     
                        SESAT   = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='switzerlandnorth'  ;AzRegions=@('switzerlandnorth','germanywestcentral','westeurope')}     
                        SESAU   = [PSCustomObject]@{GeographyGroup='Asia Pacific';ClosestRegion='australiacentral'  ;AzRegions=@('australiacentral','australiaeast','australiasoutheast')}     
                        SESBE   = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='francecentral'     ;AzRegions=@('francecentral','uksouth','germanywestcentral')}     
                        SESCA   = [PSCustomObject]@{GeographyGroup='Canada'      ;ClosestRegion='canadacentral'     ;AzRegions=@('canadacentral','canadaeast','westus2')}     
                        SESCH   = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='switzerlandnorth'  ;AzRegions=@('switzerlandnorth','germanywestcentral','francecentral')}     
                        SESCZ   = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='switzerlandnorth'  ;AzRegions=@('switzerlandnorth','germanywestcentral','westeurope')}     
                        SESDE   = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='germanywestcentral';AzRegions=@('germanywestcentral','westeurope','switzerlandnorth')}     
                        SESDK   = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='westeurope'        ;AzRegions=@('westeurope','norwayeast','swedencentral')}     
                        SESES   = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='francecentral'     ;AzRegions=@('francecentral','switzerlandnorth','ukwest')}     
                        SESFI   = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='swedencentral'     ;AzRegions=@('swedencentral','norwayeast','westeurope')}     
                        SESFR   = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='francecentral'     ;AzRegions=@('francecentral','uksouth','switzerlandnorth')}     
                        SESHK   = [PSCustomObject]@{GeographyGroup='Asia Pacific';ClosestRegion='eastasia'          ;AzRegions=@('eastasia','southeastasia','koreacentral')}     
                        SESID   = [PSCustomObject]@{GeographyGroup='Asia Pacific';ClosestRegion='southeastasia'     ;AzRegions=@('southeastasia','eastasia','australiaeast')}     
                        SESIN   = [PSCustomObject]@{GeographyGroup='Asia Pacific';ClosestRegion='centralindia'      ;AzRegions=@('centralindia','southindia','uaenorth')}     
                        SESIT   = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='switzerlandnorth'  ;AzRegions=@('switzerlandnorth','germanywestcentral','francecentral')}     
                        SESMY   = [PSCustomObject]@{GeographyGroup='Asia Pacific';ClosestRegion='southeastasia'     ;AzRegions=@('southeastasia','eastasia','southindia')}     
                        SESNL   = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='westeurope'        ;AzRegions=@('westeurope','germanywestcentral','francecentral')}     
                        SESNO   = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='norwayeast'        ;AzRegions=@('norwayeast','swedencentral','westeurope')}     
                        SESPL   = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='germanywestcentral';AzRegions=@('germanywestcentral','swedencentral','westeurope')}     
                        SESPT   = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='francecentral'     ;AzRegions=@('francecentral','switzerlandnorth','ukwest')}     
                        SESSE   = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='swedencentral'     ;AzRegions=@('swedencentral','norwayeast','westeurope')}     
                        SESSG   = [PSCustomObject]@{GeographyGroup='Asia Pacific';ClosestRegion='southeastasia'     ;AzRegions=@('southeastasia','eastasia','southindia')}     
                        SESUK   = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='uksouth'           ;AzRegions=@('uksouth','ukwest','northeurope')}     
                        SESUS   = [PSCustomObject]@{GeographyGroup='US'          ;ClosestRegion='centralus'         ;AzRegions=@('centralus','eastus2','westus3')}     
                        SESVN   = [PSCustomObject]@{GeographyGroup='Asia Pacific';ClosestRegion='eastasia'          ;AzRegions=@('eastasia','southeastasia','southindia')}     
                        SF      = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='swedencentral'     ;AzRegions=@('swedencentral','norwayeast','westeurope')} 
                        SFSND   = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='swedencentral'     ;AzRegions=@('swedencentral','norwayeast','westeurope')}     
                        SG      = [PSCustomObject]@{GeographyGroup='Asia Pacific';ClosestRegion='southeastasia'     ;AzRegions=@('southeastasia','eastasia','southindia')} 
                        SGSND   = [PSCustomObject]@{GeographyGroup='Asia Pacific';ClosestRegion='southeastasia'     ;AzRegions=@('southeastasia','eastasia','southindia')}     
                        SGSSND  = [PSCustomObject]@{GeographyGroup='Asia Pacific';ClosestRegion='southeastasia'     ;AzRegions=@('southeastasia','eastasia','southindia')}     
                        SI      = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='switzerlandnorth'  ;AzRegions=@('switzerlandnorth','germanywestcentral','francecentral')} 
                        SISND   = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='switzerlandnorth'  ;AzRegions=@('switzerlandnorth','germanywestcentral','francecentral')}     
                        SK      = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='switzerlandnorth'  ;AzRegions=@('switzerlandnorth','germanywestcentral','westeurope')} 
                        SKSND   = [PSCustomObject]@{GeographyGroup='Europe'      ;ClosestRegion='switzerlandnorth'  ;AzRegions=@('switzerlandnorth','germanywestcentral','westeurope')}     
                        US      = [PSCustomObject]@{GeographyGroup='US'          ;ClosestRegion='centralus'         ;AzRegions=@('centralus','eastus2','westus3')} 
                        USMSND  = [PSCustomObject]@{GeographyGroup='US'          ;ClosestRegion='centralus'         ;AzRegions=@('centralus','eastus2','westus3')}     
                        USSND   = [PSCustomObject]@{GeographyGroup='US'          ;ClosestRegion='centralus'         ;AzRegions=@('centralus','eastus2','westus3')}     
                        USSSND  = [PSCustomObject]@{GeographyGroup='US'          ;ClosestRegion='centralus'         ;AzRegions=@('centralus','eastus2','westus3')}     
                        VN      = [PSCustomObject]@{GeographyGroup='Asia Pacific';ClosestRegion='eastasia'          ;AzRegions=@('eastasia','southeastasia','southindia')} 
                        VNSND   = [PSCustomObject]@{GeographyGroup='Asia Pacific';ClosestRegion='eastasia'          ;AzRegions=@('eastasia','southeastasia','southindia')}     
                        VNSSND  = [PSCustomObject]@{GeographyGroup='Asia Pacific';ClosestRegion='eastasia'          ;AzRegions=@('eastasia','southeastasia','southindia')}
                    }
                #EndRegion

                #Region Set Return Variable
                    #Return only the 'ClosestRegion' Parameter as [string]
                    $Return = if ($ClosestOnly){
                        $PacRegionHash.$PacRegion.ClosestRegion
                    }
                    #Return only the 'AzRegions' Parameter as [array]
                    elseif ($RegionsOnly) {
                        $PacRegionHash.$PacRegion.AzRegions
                    }
                    #Return only the 'GeographyGroup' Parameter as [string]
                    elseif ($GeoGroupOnly) {
                        $PacRegionHash.$PacRegion.GeographyGroup
                    }
                    #Return all Parameters as [PSCustomObject]
                    else{
                        $PacRegionHash.$PacRegion
                    }
                #EndRegion

                #Output Return Variable
                return $Return
            }
            $Get_PacAzRegions = "function Get-PacAzRegions {${Function:Get-PacAzRegions}}"
        #EndRegion

        #Region Function Get-AzRegions
            function Get-AzRegions {
                [cmdletbinding()]
                #Region Parameters
                    param (
                        [Parameter(Mandatory)]
                        [ValidateNotNullOrEmpty()]
                        [string]
                        $SubscriptionId,

                        [Parameter(Mandatory)]
                        [ValidateNotNullOrEmpty()]
                        [string]
                        $AzureToken,

                        [Parameter()]
                        [ValidateNotNullOrEmpty()]
                        [ValidateSet('US','Asia Pacific','Europe','Africa','Canada','Middle East','South America')]
                        [string]
                        $GeographyGroup,
                    
                        [Parameter()]
                        [ValidateNotNullOrEmpty()]
                        [ValidateSet('Microsoft.AAD','Microsoft.Network','Microsoft.Compute','Microsoft.Automation','Microsoft.Web','Microsoft.Storage','Microsoft.ResourceHealth','Microsoft.DevTestLab','Microsoft.Security','Microsoft.PolicyInsights','Microsoft.Advisor','Microsoft.DesktopVirtualization','Microsoft.Sql','Microsoft.OperationalInsights','Microsoft.OperationsManagement','Microsoft.Logic','Microsoft.KeyVault','Microsoft.Portal','Microsoft.SecurityInsights','microsoft.insights','Microsoft.AlertsManagement','Microsoft.Devices','Microsoft.BotService','Microsoft.RecoveryServices','Microsoft.CognitiveServices','Microsoft.AppPlatform','Microsoft.TimeSeriesInsights','Microsoft.Maps','Microsoft.StreamAnalytics','Microsoft.ContainerInstance','Microsoft.Media','Microsoft.DBforPostgreSQL','Microsoft.PowerBIDedicated','Microsoft.Authorization','Microsoft.CostManagement','Microsoft.Databricks','Microsoft.ServiceFabric','Microsoft.DataLakeAnalytics','Microsoft.MachineLearningServices','Microsoft.Search','Microsoft.DBforMariaDB','Microsoft.EventHub','Microsoft.MixedReality','Microsoft.CustomProviders','Microsoft.HDInsight','Microsoft.DBforMySQL','Microsoft.Management','Microsoft.Maintenance','Microsoft.EventGrid','Microsoft.StorageCache','Microsoft.DocumentDB','Microsoft.ContainerRegistry','Microsoft.Relay','Microsoft.ContainerService','Microsoft.NotificationHubs','Microsoft.DataMigration','Microsoft.ApiManagement','Microsoft.ManagedIdentity','Microsoft.ServiceBus','Microsoft.Cdn','Microsoft.DataLakeStore','Microsoft.Kusto','Microsoft.Cache','Microsoft.Migrate','Microsoft.DataFactory','Microsoft.ManagedServices','Microsoft.ServiceFabricMesh','Microsoft.Blueprint','Microsoft.HealthcareApis','Microsoft.AVS','Microsoft.MarketplaceNotifications','Microsoft.DeviceUpdate','Microsoft.CloudShell','Microsoft.GuestConfiguration','Microsoft.Diagnostics','Microsoft.SaaS','Microsoft.ChangeAnalysis','Microsoft.IoTCentral','Microsoft.App','Microsoft.ServiceLinker','Microsoft.Communication','Microsoft.AnalysisServices','Microsoft.IoTFirmwareDefense','Microsoft.StorageSync','Microsoft.RedHatOpenShift','Microsoft.Monitor','Microsoft.SqlVirtualMachine','Microsoft.Notebooks','Microsoft.Consumption','Microsoft.Solutions','Microsoft.DomainRegistration','Microsoft.Capacity','Microsoft.DataProtection','Dynatrace.Observability','GitHub.Network','microsoft.aadiam','Microsoft.ADHybridHealthService','Microsoft.AgFoodPlatform','Microsoft.AnyBuild','Microsoft.ApiSecurity','Microsoft.AppAssessment','Microsoft.AppComplianceAutomation','Microsoft.AppConfiguration','Microsoft.Attestation','Microsoft.Automanage','Microsoft.AutonomousDevelopmentPlatform','Microsoft.AutonomousSystems','Microsoft.AzureActiveDirectory','Microsoft.AzureArcData','Microsoft.AzureCIS','Microsoft.AzureData','Microsoft.AzurePercept','Microsoft.AzureScan','Microsoft.AzureSphere','Microsoft.AzureStack','Microsoft.AzureStackHCI','Microsoft.BackupSolutions','Microsoft.BareMetalInfrastructure','Microsoft.Batch','Microsoft.Billing','Microsoft.BillingBenefits','Microsoft.Bing','Microsoft.CertificateRegistration','Microsoft.Chaos','Microsoft.ClassicInfrastructureMigrate','Microsoft.ClassicStorage','Microsoft.CleanRoom','Microsoft.CloudTest','Microsoft.CodeSigning','Microsoft.Codespaces','Microsoft.Commerce','Microsoft.ConfidentialLedger','Microsoft.Confluent','Microsoft.ConnectedCache','microsoft.connectedopenstack','Microsoft.ConnectedVehicle','Microsoft.ConnectedVMwarevSphere','Microsoft.CostManagementExports','Microsoft.CustomerLockbox','Microsoft.D365CustomerInsights','Microsoft.Dashboard','Microsoft.DataBox','Microsoft.DataBoxEdge','Microsoft.DataCatalog','Microsoft.DataCollaboration','Microsoft.Datadog','Microsoft.DataReplication','Microsoft.DataShare','Microsoft.DelegatedNetwork','Microsoft.DeploymentManager','Microsoft.DevAI','Microsoft.DevCenter','Microsoft.DevHub','Microsoft.DevOps','Microsoft.DigitalTwins','Microsoft.Easm','Microsoft.EdgeOrder','Microsoft.EdgeZones','Microsoft.Elastic','Microsoft.ElasticSan','Microsoft.EntitlementManagement','Microsoft.ExtendedLocation','Microsoft.Falcon','Microsoft.Features','Microsoft.FluidRelay','Microsoft.GraphServices','Microsoft.HanaOnAzure','Microsoft.HardwareSecurityModules','Microsoft.HealthBot','Microsoft.Help','Microsoft.HpcWorkbench','Microsoft.HybridCompute','Microsoft.HybridConnectivity','Microsoft.HybridContainerService','Microsoft.HybridNetwork','Microsoft.Impact','Microsoft.IntelligentITDigitalTwin','Microsoft.IoTSecurity','Microsoft.Kubernetes','Microsoft.KubernetesConfiguration','Microsoft.LabServices','Microsoft.LoadTestService','Microsoft.Logz','Microsoft.MachineLearning','Microsoft.ManagedNetworkFabric','Microsoft.ManagedStorageClass','Microsoft.Marketplace','Microsoft.MarketplaceOrdering','Microsoft.Metaverse','Microsoft.Mission','Microsoft.MobileNetwork','Microsoft.ModSimWorkbench','Microsoft.NetApp','Microsoft.NetworkAnalytics','Microsoft.NetworkCloud','Microsoft.NetworkFunction','Microsoft.ObjectStore','Microsoft.OffAzure','Microsoft.OffAzureSpringBoot','Microsoft.OpenEnergyPlatform','Microsoft.OpenLogisticsPlatform','Microsoft.OperatorVoicemail','Microsoft.OracleDiscovery','Microsoft.Orbital','Microsoft.Peering','Microsoft.Pki','Microsoft.PlayFab','Microsoft.PowerBI','Microsoft.PowerPlatform','Microsoft.ProfessionalService','Microsoft.ProviderHub','Microsoft.Purview','Microsoft.Quantum','Microsoft.Quota','Microsoft.RecommendationsService','Microsoft.ResourceConnector','Microsoft.ResourceGraph','Microsoft.Resources','Microsoft.SaaSHub','Microsoft.Scom','Microsoft.ScVmm','Microsoft.SecurityDetonation','Microsoft.SecurityDevOps','Microsoft.SerialConsole','Microsoft.ServiceNetworking','Microsoft.ServicesHub','Microsoft.SignalRService','Microsoft.SoftwarePlan','Microsoft.StorageMover','Microsoft.Subscription','microsoft.support','Microsoft.Synapse','Microsoft.Syntex','Microsoft.TestBase','Microsoft.UsageBilling','Microsoft.VideoIndexer','Microsoft.VirtualMachineImages','microsoft.visualstudio','Microsoft.VMware','Microsoft.VoiceServices','Microsoft.VSOnline','Microsoft.WindowsESU','Microsoft.WindowsIoT','Microsoft.WindowsPushNotificationServices','Microsoft.WorkloadBuilder','Microsoft.Workloads','NewRelic.Observability','NGINX.NGINXPLUS','PaloAltoNetworks.Cloudngfw','Qumulo.Storage','SolarWinds.Observability','Wandisco.Fusio')]
                        [string]
                        $ProviderNamespace,

                        [Parameter()]
                        [ValidateNotNullOrEmpty()]
                        [ValidateSet('DomainServices','DomainServices/oucontainer','locations','locations/operationresults','operations','virtualNetworks','virtualNetworks/taggedTrafficConsumers','natGateways','publicIPAddresses','internalPublicIpAddresses','customIpPrefixes','networkInterfaces','dscpConfigurations','privateEndpoints','privateEndpoints/privateLinkServiceProxies','privateEndpointRedirectMaps','loadBalancers','networkSecurityGroups','applicationSecurityGroups','serviceEndpointPolicies','networkIntentPolicies','routeTables','publicIPPrefixes','networkWatchers','networkWatchers/connectionMonitors','networkWatchers/flowLogs','networkWatchers/pingMeshes','virtualNetworkGateways','localNetworkGateways','connections','applicationGateways','applicationGatewayWebApplicationFirewallPolicies','locations/operations','locations/operationResults','locations/CheckDnsNameAvailability','locations/setLoadBalancerFrontendPublicIpAddresses','cloudServiceSlots','locations/usages','locations/virtualNetworkAvailableEndpointServices','locations/availableDelegations','locations/ApplicationGatewayWafDynamicManifests','locations/serviceTags','locations/availablePrivateEndpointTypes','locations/availableServiceAliases','locations/checkPrivateLinkServiceVisibility','locations/autoApprovedPrivateLinkServices','locations/batchValidatePrivateEndpointsForResourceMove','locations/batchNotifyPrivateEndpointsForResourceMove','locations/supportedVirtualMachineSizes','locations/setAzureNetworkManagerConfiguration','locations/publishResources','locations/getAzureNetworkManagerConfiguration','locations/checkAcceleratedNetworkingSupport','locations/validateResourceOwnership','locations/setResourceOwnership','locations/effectiveResourceOwnership','dnszones','dnsOperationResults','dnsOperationStatuses','getDnsResourceReference','internalNotify','dnszones/A','dnszones/AAAA','dnszones/CNAME','dnszones/PTR','dnszones/MX','dnszones/TXT','dnszones/SRV','dnszones/SOA','dnszones/NS','dnszones/CAA','dnszones/recordsets','dnszones/all','privateDnsZones','privateDnsZones/virtualNetworkLinks','privateDnsOperationResults','privateDnsOperationStatuses','privateDnsZonesInternal','privateDnsZones/A','privateDnsZones/AAAA','privateDnsZones/CNAME','privateDnsZones/PTR','privateDnsZones/MX','privateDnsZones/TXT','privateDnsZones/SRV','privateDnsZones/SOA','privateDnsZones/all','virtualNetworks/privateDnsZoneLinks','dnsResolvers','dnsResolvers/inboundEndpoints','dnsResolvers/outboundEndpoints','dnsForwardingRulesets','dnsForwardingRulesets/forwardingRules','dnsForwardingRulesets/virtualNetworkLinks','virtualNetworks/listDnsResolvers','virtualNetworks/listDnsForwardingRulesets','locations/dnsResolverOperationResults','locations/dnsResolverOperationStatuses','trafficmanagerprofiles','trafficmanagerprofiles/heatMaps','trafficmanagerprofiles/azureendpoints','trafficmanagerprofiles/externalendpoints','trafficmanagerprofiles/nestedendpoints','checkTrafficManagerNameAvailability','trafficManagerUserMetricsKeys','trafficManagerGeographicHierarchies','expressRouteCircuits','expressRouteServiceProviders','applicationGatewayAvailableWafRuleSets','applicationGatewayAvailableSslOptions','applicationGatewayAvailableServerVariables','applicationGatewayAvailableRequestHeaders','applicationGatewayAvailableResponseHeaders','routeFilters','bgpServiceCommunities','virtualWans','vpnSites','vpnServerConfigurations','virtualHubs','vpnGateways','p2sVpnGateways','expressRouteGateways','locations/hybridEdgeZone','expressRoutePortsLocations','expressRoutePorts','firewallPolicies','ipGroups','azureWebCategories','locations/nfvOperations','locations/nfvOperationResults','securityPartnerProviders','azureFirewalls','azureFirewallFqdnTags','virtualNetworkTaps','privateLinkServices','locations/privateLinkServices','ddosProtectionPlans','networkProfiles','frontdoorOperationResults','checkFrontdoorNameAvailability','frontdoors','frontdoors/frontendEndpoints','frontdoors/frontendEndpoints/customHttpsConfiguration','frontdoorWebApplicationFirewallPolicies','frontdoorWebApplicationFirewallManagedRuleSets','networkExperimentProfiles','locations/bareMetalTenants','bastionHosts','virtualRouters','networkVirtualAppliances','ipAllocations','networkManagers','networkManagerConnections','locations/queryNetworkSecurityPerimeter','virtualNetworks/listNetworkManagerEffectiveConnectivityConfigurations','virtualNetworks/listNetworkManagerEffectiveSecurityAdminRules','networkGroupMemberships','locations/commitInternalAzureNetworkManagerConfiguration','locations/internalAzureVirtualNetworkManagerOperation','networkVirtualApplianceSkus','locations/serviceTagDetails','locations/dataTasks','availabilitySets','virtualMachines','virtualMachines/extensions','virtualMachineScaleSets','virtualMachineScaleSets/extensions','virtualMachineScaleSets/virtualMachines','virtualMachineScaleSets/virtualMachines/extensions','virtualMachineScaleSets/networkInterfaces','virtualMachineScaleSets/virtualMachines/networkInterfaces','virtualMachineScaleSets/publicIPAddresses','locations/vmSizes','locations/runCommands','locations/virtualMachines','locations/virtualMachineScaleSets','locations/publishers','virtualMachines/runCommands','virtualMachineScaleSets/applications','virtualMachines/applications','locations/edgeZones','locations/edgeZones/vmimages','locations/edgeZones/publishers','restorePointCollections','restorePointCollections/restorePoints','proximityPlacementGroups','sshPublicKeys','capacityReservationGroups','capacityReservationGroups/capacityReservations','virtualMachines/metricDefinitions','locations/spotEvictionRates','locations/spotPriceHistory','locations/recommendations','locations/sharedGalleries','locations/communityGalleries','sharedVMImages','sharedVMImages/versions','locations/artifactPublishers','locations/capsoperations','galleries','galleries/images','galleries/images/versions','locations/galleries','galleries/applications','galleries/applications/versions','disks','snapshots','locations/diskoperations','diskEncryptionSets','diskAccesses','restorePointCollections/restorePoints/diskRestorePoints','cloudServices','cloudServices/roles','cloudServices/roleInstances','locations/csoperations','locations/cloudServiceOsVersions','locations/cloudServiceOsFamilies','cloudServices/networkInterfaces','cloudServices/roleInstances/networkInterfaces','cloudServices/publicIPAddresses','images','locations/diagnostics','locations/diagnosticOperations','locations/logAnalytics','hostGroups','hostGroups/hosts','automationAccounts','deletedAutomationAccounts','automationAccounts/runbooks','automationAccounts/configurations','automationAccounts/webhooks','automationAccounts/softwareUpdateConfigurations','automationAccounts/softwareUpdateConfigurationRuns','automationAccounts/softwareUpdateConfigurationMachineRuns','automationAccounts/jobs','automationAccounts/privateLinkResources','automationAccounts/privateEndpointConnections','automationAccounts/privateEndpointConnectionProxies','automationAccounts/hybridRunbookWorkerGroups','automationAccounts/hybridRunbookWorkerGroups/hybridRunbookWorkers','automationAccounts/agentRegistrationInformation','publishingUsers','ishostnameavailable','validate','isusernameavailable','generateGithubAccessTokenForAppserviceCLI','sourceControls','availableStacks','webAppStacks','locations/webAppStacks','functionAppStacks','locations/functionAppStacks','staticSites','locations/previewStaticSiteWorkflowFile','staticSites/userProvidedFunctionApps','staticSites/linkedBackends','staticSites/builds/linkedBackends','staticSites/databaseConnections','staticSites/builds/databaseConnections','staticSites/builds','staticSites/builds/userProvidedFunctionApps','listSitesAssignedToHostName','locations/getNetworkPolicies','sites/networkConfig','sites/slots/networkConfig','sites/hostNameBindings','sites/slots/hostNameBindings','certificates','serverFarms','sites','sites/slots','runtimes','recommendations','resourceHealthMetadata','georegions','sites/premieraddons','hostingEnvironments','hostingEnvironments/multiRolePools','hostingEnvironments/workerPools','kubeEnvironments','deploymentLocations','deletedSites','locations/deletedSites','ishostingenvironmentnameavailable','locations/deleteVirtualNetworkOrSubnets','locations/validateDeleteVirtualNetworkOrSubnets','customApis','locations/listWsdlInterfaces','locations/extractApiDefinitionFromWsdl','locations/managedApis','locations/runtimes','locations/apiOperations','connectionGateways','locations/connectionGatewayInstallations','checkNameAvailability','billingMeters','verifyHostingEnvironmentVnet','serverFarms/eventGridFilters','sites/eventGridFilters','sites/slots/eventGridFilters','hostingEnvironments/eventGridFilters','serverFarms/firstPartyApps','serverFarms/firstPartyApps/keyVaultSettings','workerApps','containerApps','customhostnameSites','storageAccounts/storageTaskAssignments','storageAccounts/encryptionScopes','deletedAccounts','locations/deletedAccounts','storageAccounts','storageTasks','locations/asyncoperations','storageAccounts/listAccountSas','storageAccounts/listServiceSas','storageAccounts/blobServices','storageAccounts/tableServices','storageAccounts/queueServices','storageAccounts/fileServices','usages','locations/checkNameAvailability','storageAccounts/services','storageAccounts/services/metricDefinitions','locations/notifyNetworkSecurityPerimeterUpdatesAvailable','availabilityStatuses','childAvailabilityStatuses','childResources','events','metadata','emergingissues','labs/environments','labs','schedules','labs/virtualMachines','labs/serviceRunners','securityStatuses','tasks','secureScores','secureScores/secureScoreControls','secureScoreControls','secureScoreControlDefinitions','connectors','regulatoryComplianceStandards','regulatoryComplianceStandards/regulatoryComplianceControls','regulatoryComplianceStandards/regulatoryComplianceControls/regulatoryComplianceAssessments','alerts','alertsSuppressionRules','autoDismissAlertsRules','dataCollectionAgents','pricings','pricings/securityOperators','AutoProvisioningSettings','MdeOnboardings','vmScanners','Compliances','securityContacts','workspaceSettings','complianceResults','policies','assessments','governanceRules','assessments/governanceAssignments','assessmentMetadata','subAssessments','securitySolutions','locations/securitySolutions','discoveredSecuritySolutions','locations/discoveredSecuritySolutions','allowedConnections','locations/allowedConnections','topologies','locations/topologies','securitySolutionsReferenceData','locations/securitySolutionsReferenceData','jitPolicies','jitNetworkAccessPolicies','locations/jitNetworkAccessPolicies','securityStatusesSummaries','applicationWhitelistings','locations/applicationWhitelistings','locations/alerts','locations/tasks','externalSecuritySolutions','locations/externalSecuritySolutions','InformationProtectionPolicies','advancedThreatProtectionSettings','sqlVulnerabilityAssessments','deviceSecurityGroups','iotSecuritySolutions','iotSecuritySolutions/analyticsModels','iotSecuritySolutions/iotAlertTypes','iotSecuritySolutions/iotAlerts','iotSecuritySolutions/iotRecommendationTypes','iotSecuritySolutions/iotRecommendations','iotSecuritySolutions/analyticsModels/aggregatedAlerts','iotSecuritySolutions/analyticsModels/aggregatedRecommendations','settings','serverVulnerabilityAssessments','serverVulnerabilityAssessmentsSettings','adaptiveNetworkHardenings','automations','ingestionSettings','defenderForStorageSettings','dataScanners','securityConnectors','customAssessmentAutomations','customEntityStoreAssignments','standards','assignments','sensitivitySettings','query','applications','apiCollections','healthReports','policyEvents','policyStates','asyncOperationResults','remediations','eventGridFilters','checkPolicyRestrictions','policyTrackedResources','policyMetadata','suppressions','configurations','generateRecommendations','workspaces','applicationgroups','applicationgroups/applications','applicationgroups/desktops','applicationgroups/startmenuitems','hostpools','hostpools/msixpackages','hostpools/sessionhosts','hostpools/sessionhosts/usersessions','hostpools/usersessions','scalingplans','locations/capabilities','locations/databaseAzureAsyncOperation','locations/databaseOperationResults','locations/databaseEncryptionProtectorRevalidateAzureAsyncOperation','locations/databaseEncryptionProtectorRevalidateOperationResults','locations/databaseEncryptionProtectorRevertAzureAsyncOperation','locations/databaseEncryptionProtectorRevertOperationResults','locations/serverKeyAzureAsyncOperation','locations/serverKeyOperationResults','servers/keys','servers/encryptionProtector','locations/encryptionProtectorOperationResults','locations/encryptionProtectorAzureAsyncOperation','locations/externalPolicyBasedAuthorizationsAzureAsycOperation','locations/externalPolicyBasedAuthorizationsOperationResults','locations/refreshExternalGovernanceStatusOperationResults','locations/refreshExternalGovernanceStatusAzureAsyncOperation','locations/managedInstanceKeyAzureAsyncOperation','locations/managedInstanceKeyOperationResults','locations/managedInstanceEncryptionProtectorOperationResults','locations/managedInstanceEncryptionProtectorAzureAsyncOperation','locations/transparentDataEncryptionAzureAsyncOperation','locations/transparentDataEncryptionOperationResults','locations/managedtransparentDataEncryptionAzureAsyncOperation','locations/managedtransparentDataEncryptionOperationResults','servers/tdeCertificates','locations/tdeCertAzureAsyncOperation','locations/tdeCertOperationResults','locations/serverAzureAsyncOperation','locations/serverOperationResults','servers','servers/databases','servers/serviceObjectives','servers/communicationLinks','servers/administrators','servers/administratorOperationResults','locations/serverAdministratorAzureAsyncOperation','locations/serverAdministratorOperationResults','servers/restorableDroppedDatabases','servers/recoverableDatabases','servers/databases/geoBackupPolicies','servers/import','servers/importExportOperationResults','servers/operationResults','servers/databases/backupLongTermRetentionPolicies','servers/databases/backupShortTermRetentionPolicies','servers/databaseSecurityPolicies','servers/automaticTuning','servers/databases/automaticTuning','servers/databases/transparentDataEncryption','servers/databases/ledgerDigestUploads','locations/ledgerDigestUploadsAzureAsyncOperation','locations/ledgerDigestUploadsOperationResults','servers/recommendedElasticPools','servers/databases/dataMaskingPolicies','servers/databases/dataMaskingPolicies/rules','servers/databases/securityAlertPolicies','servers/securityAlertPolicies','servers/databases/advancedThreatProtectionSettings','servers/advancedThreatProtectionSettings','managedInstances/databases/advancedThreatProtectionSettings','managedInstances/advancedThreatProtectionSettings','servers/databases/auditingSettings','servers/auditingSettings','servers/extendedAuditingSettings','servers/devOpsAuditingSettings','locations/auditingSettingsAzureAsyncOperation','locations/auditingSettingsOperationResults','locations/extendedAuditingSettingsAzureAsyncOperation','locations/extendedAuditingSettingsOperationResults','locations/devOpsAuditingSettingsOperationResults','locations/devOpsAuditingSettingsAzureAsyncOperation','locations/elasticPoolAzureAsyncOperation','locations/elasticPoolOperationResults','servers/elasticpools','servers/jobAccounts','servers/jobAgents','locations/jobAgentOperationResults','locations/jobAgentAzureAsyncOperation','servers/jobAgents/jobs','servers/jobAgents/jobs/steps','servers/jobAgents/jobs/executions','servers/disasterRecoveryConfiguration','servers/dnsAliases','locations/dnsAliasAsyncOperation','locations/dnsAliasOperationResults','servers/failoverGroups','locations/failoverGroupAzureAsyncOperation','locations/failoverGroupOperationResults','locations/firewallRulesOperationResults','locations/firewallRulesAzureAsyncOperation','servers/virtualNetworkRules','locations/virtualNetworkRulesOperationResults','locations/virtualNetworkRulesAzureAsyncOperation','locations/deleteVirtualNetworkOrSubnetsOperationResults','locations/deleteVirtualNetworkOrSubnetsAzureAsyncOperation','locations/databaseRestoreAzureAsyncOperation','servers/usages','servers/databases/metricDefinitions','servers/databases/metrics','servers/aggregatedDatabaseMetrics','servers/elasticpools/metrics','servers/elasticpools/metricdefinitions','servers/databases/topQueries','servers/databases/topQueries/queryText','servers/advisors','servers/elasticPools/advisors','servers/databases/advisors','servers/databases/extensions','servers/elasticPoolEstimates','servers/databases/auditRecords','servers/databases/VulnerabilityAssessmentScans','servers/databases/workloadGroups','servers/databases/vulnerabilityAssessments','servers/vulnerabilityAssessments','managedInstances/databases/vulnerabilityAssessments','managedInstances/vulnerabilityAssessments','servers/databases/VulnerabilityAssessmentSettings','servers/databases/VulnerabilityAssessment','locations/vulnerabilityAssessmentScanAzureAsyncOperation','locations/vulnerabilityAssessmentScanOperationResults','servers/databases/sqlvulnerabilityassessments','servers/sqlvulnerabilityassessments','locations/sqlVulnerabilityAssessmentAzureAsyncOperation','locations/sqlVulnerabilityAssessmentOperationResults','servers/databases/recommendedSensitivityLabels','servers/databases/syncGroups','servers/databases/syncGroups/syncMembers','servers/syncAgents','instancePools','locations/importExportOperationResults','locations/importExportAzureAsyncOperation','locations/instancePoolOperationResults','locations/instancePoolAzureAsyncOperation','managedInstances','managedInstances/administrators','managedInstances/databases','managedInstances/recoverableDatabases','managedInstances/metrics','managedInstances/metricDefinitions','managedInstances/databases/backupLongTermRetentionPolicies','managedInstances/sqlAgent','managedInstances/startStopSchedules','locations/managedInstancePrivateEndpointConnectionProxyOperationResults','locations/managedInstancePrivateEndpointConnectionProxyAzureAsyncOperation','locations/managedInstancePrivateEndpointConnectionOperationResults','locations/managedInstancePrivateEndpointConnectionAzureAsyncOperation','locations/longTermRetentionManagedInstances','locations/longTermRetentionManagedInstanceBackups','locations/managedInstanceLongTermRetentionPolicyOperationResults','locations/managedInstanceLongTermRetentionPolicyAzureAsyncOperation','locations/longTermRetentionManagedInstanceBackupOperationResults','locations/longTermRetentionManagedInstanceBackupAzureAsyncOperation','locations/managedDatabaseAzureAsyncOperation','locations/managedDatabaseOperationResults','locations/managedDatabaseRestoreAzureAsyncOperation','locations/managedDatabaseRestoreOperationResults','locations/managedDatabaseCompleteRestoreAzureAsyncOperation','locations/managedDatabaseCompleteRestoreOperationResults','locations/managedServerSecurityAlertPoliciesAzureAsyncOperation','locations/stopManagedInstanceAzureAsyncOperation','locations/stopManagedInstanceOperationResults','locations/startManagedInstanceAzureAsyncOperation','locations/startManagedInstanceOperationResults','managedInstances/tdeCertificates','locations/managedInstanceTdeCertAzureAsyncOperation','locations/managedInstanceTdeCertOperationResults','locations/managedServerSecurityAlertPoliciesOperationResults','locations/securityAlertPoliciesAzureAsyncOperation','locations/securityAlertPoliciesOperationResults','locations/advancedThreatProtectionAzureAsyncOperation','locations/advancedThreatProtectionOperationResults','locations/managedInstanceAdvancedThreatProtectionAzureAsyncOperation','locations/managedInstanceAdvancedThreatProtectionOperationResults','managedInstances/dnsAliases','locations/managedDnsAliasAsyncOperation','locations/managedDnsAliasOperationResults','virtualClusters','locations/virtualClusterAzureAsyncOperation','locations/virtualClusterOperationResults','locations/updateManagedInstanceDnsServersAzureAsyncOperation','locations/updateManagedInstanceDnsServersOperationResults','locations/managedInstanceAzureAsyncOperation','locations/managedInstanceOperationResults','locations/distributedAvailabilityGroupsOperationResults','locations/distributedAvailabilityGroupsAzureAsyncOperation','locations/serverTrustCertificatesOperationResults','locations/serverTrustCertificatesAzureAsyncOperation','locations/administratorAzureAsyncOperation','locations/administratorOperationResults','locations/syncGroupOperationResults','locations/syncGroupAzureAsyncOperation','locations/syncMemberOperationResults','locations/syncAgentOperationResults','locations/syncDatabaseIds','locations/longTermRetentionServers','locations/longTermRetentionBackups','locations/longTermRetentionPolicyOperationResults','locations/longTermRetentionPolicyAzureAsyncOperation','locations/longTermRetentionBackupOperationResults','locations/longTermRetentionBackupAzureAsyncOperation','locations/shortTermRetentionPolicyOperationResults','locations/shortTermRetentionPolicyAzureAsyncOperation','locations/managedShortTermRetentionPolicyOperationResults','locations/managedShortTermRetentionPolicyAzureAsyncOperation','locations/instanceFailoverGroups','locations/instanceFailoverGroupAzureAsyncOperation','locations/instanceFailoverGroupOperationResults','locations/privateEndpointConnectionProxyOperationResults','locations/privateEndpointConnectionProxyAzureAsyncOperation','locations/privateEndpointConnectionOperationResults','locations/outboundFirewallRulesAzureAsyncOperation','locations/outboundFirewallRulesOperationResults','locations/privateEndpointConnectionAzureAsyncOperation','locations/notifyAzureAsyncOperation','locations/serverTrustGroups','locations/serverTrustGroupOperationResults','locations/serverTrustGroupAzureAsyncOperation','locations/managedDatabaseMoveOperationResults','locations/managedDatabaseMoveAzureAsyncOperation','servers/connectionPolicies','locations/connectionPoliciesAzureAsyncOperation','locations/connectionPoliciesOperationResults','locations/replicationLinksAzureAsyncOperation','locations/replicationLinksOperationResults','locations/managedInstanceDtcAzureAsyncOperation','managedInstances/databases/ledgerDigestUploads','locations/managedLedgerDigestUploadsOperationResults','locations/managedLedgerDigestUploadsAzureAsyncOperation','locations/serverConfigurationOptionAzureAsyncOperation','querypacks','locations/operationStatuses','workspaces/scopedPrivateLinkProxies','workspaces/query','workspaces/metadata','workspaces/dataSources','workspaces/linkedStorageAccounts','workspaces/tables','workspaces/storageInsightConfigs','storageInsightConfigs','workspaces/linkedServices','linkTargets','deletedWorkspaces','clusters','workspaces/dataExports','solutions','managementassociations','views','workflows','locations/workflows','locations/validateWorkflowExport','locations/workflowExport','integrationAccounts','integrationServiceEnvironments','integrationServiceEnvironments/managedApis','vaults','vaults/secrets','vaults/accessPolicies','deletedVaults','locations/deletedVaults','vaults/eventGridFilters','managedHSMs','deletedManagedHSMs','locations/deletedManagedHSMs','locations/managedHsmOperationResults','managedHSMs/keys','managedHSMs/keys/versions','checkMhsmNameAvailability','vaults/keys','vaults/keys/versions','dashboards','tenantconfigurations','listTenantConfigurationViolations','consoles','locations/consoles','userSettings','locations/userSettings','alertRules','alertRuleTemplates','triggeredAnalyticsRuleRuns','cases','bookmarks','dataConnectors','dataConnectorDefinitions','dataConnectorsCheckRequirements','enrichment','fileImports','entities','incidents','officeConsents','aggregations','entityQueries','entityQueryTemplates','threatIntelligence','automationRules','exportConnections','listrepositories','watchlists','confidentialWatchlists','huntsessions','dynamicSummaries','hunts','onboardingStates','contentPackages','contentTemplates','contentProductPackages','contentProductTemplates','MitreCoverageRecords','overview','workspaceManagerConfigurations','workspaceManagerMembers','workspaceManagerGroups','workspaceManagerAssignments','securityMLAnalyticsSettings','components','components/query','components/metadata','components/metrics','components/events','components/syntheticmonitorlocations','components/analyticsItems','components/webtests','components/workItemConfigs','components/myFavorites','components/operations','components/exportConfiguration','components/purge','components/api','components/aggregate','components/metricDefinitions','components/extendQueries','components/apiKeys','components/myAnalyticsItems','components/favorites','components/defaultWorkItemConfig','components/annotations','components/proactiveDetectionConfigs','components/move','components/currentBillingFeatures','components/quotaStatus','components/featureCapabilities','components/getAvailableBillingFeatures','webtests','webtests/getTestResultFile','scheduledqueryrules','components/pricingPlans','migrateToNewPricingModel','rollbackToLegacyPricingModel','listMigrationdate','logprofiles','migratealertrules','metricalerts','alertrules','autoscalesettings','eventtypes','vmInsightsOnboardingStatuses','diagnosticSettings','diagnosticSettingsCategories','extendedDiagnosticSettings','metricDefinitions','logDefinitions','eventCategories','metrics','metricbatch','metricNamespaces','notificationstatus','createnotifications','tenantactiongroups','actiongroups','activityLogAlerts','metricbaselines','workbooks','workbooktemplates','myWorkbooks','logs','transactions','topology','generateLiveToken','monitoredObjects','dataCollectionRules','dataCollectionRuleAssociations','dataCollectionEndpoints','dataCollectionEndpoints/scopedPrivateLinkProxies','privateLinkScopes','privateLinkScopes/privateEndpointConnections','privateLinkScopes/privateEndpointConnectionProxies','privateLinkScopes/scopedResources','components/linkedstorageaccounts','privateLinkScopeOperationStatuses','alertsSummary','smartGroups','smartDetectorAlertRules','migrateFromSmartDetection','actionRules','alertsMetaData','prometheusRuleGroups','alertRuleRecommendations','checkProvisioningServiceNameAvailability','operationResults','provisioningServiceOperationResults','locations/provisioningServiceOperationResults','IotHubs','IotHubs/eventGridFilters','IotHubs/failover','ProvisioningServices','IotHubs/securitySettings','botServices','botServices/channels','botServices/connections','listAuthServiceProviders','listQnAMakerEndpointKeys','hostSettings','botServices/privateEndpointConnectionProxies','botServices/privateEndpointConnections','botServices/privateLinkResources','locations/backupStatus','locations/allocatedStamp','locations/allocateStamp','locations/backupValidateFeatures','locations/backupPreValidateProtection','locations/backupCrrJobs','locations/backupCrrJob','locations/backupAadProperties','locations/backupCrossRegionRestore','locations/backupCrrOperationResults','locations/backupCrrOperationsStatus','backupProtectedItems','replicationEligibilityResults','accounts','locations/checkSkuAvailability','checkDomainAvailability','accounts/privateLinkResources','accounts/privateEndpointConnections','accounts/privateEndpointConnectionProxies','locations/resourceGroups','locations/resourceGroups/deletedAccounts','locations/commitmentTiers','accounts/networkSecurityPerimeterAssociationProxies','commitmentPlans','Spring','Spring/apps','Spring/apps/deployments','runtimeVersions','locations/operationStatus','environments','environments/eventsources','environments/referenceDataSets','environments/accessPolicies','environments/privateLinkResources','environments/privateEndpointConnectionProxies','environments/privateEndpointConnections','accounts/creators','accounts/eventGridFilters','streamingjobs','clusters/privateEndpoints','locations/quotas','locations/testQuery','locations/compileQuery','locations/sampleInput','locations/testInput','locations/testOutput','containerGroups','serviceAssociationLinks','locations/cachedImages','mediaservices','videoAnalyzers','mediaservices/assets','mediaservices/assets/tracks','mediaservices/contentKeyPolicies','mediaservices/streamingLocators','mediaservices/streamingPolicies','mediaservices/eventGridFilters','mediaservices/transforms','mediaservices/transforms/jobs','mediaservices/streamingEndpoints','mediaservices/liveEvents','mediaservices/liveEvents/liveOutputs','mediaservices/streamingEndpointOperations','mediaservices/liveEventOperations','mediaservices/liveOutputOperations','mediaservices/privateEndpointConnectionProxies','mediaservices/privateEndpointConnections','mediaservices/privateEndpointConnectionOperations','locations/mediaServicesOperationStatuses','locations/mediaServicesOperationResults','mediaservices/assets/assetFilters','mediaservices/accountFilters','videoAnalyzers/accessPolicies','videoAnalyzers/edgeModules','videoAnalyzers/pipelineTopologies','videoAnalyzers/livePipelines','videoAnalyzers/pipelineJobs','videoAnalyzers/videos','checknameavailability','locations/videoAnalyzerOperationStatuses','locations/videoAnalyzerOperationResults','serverGroupsv2','flexibleServers','servers/recoverableServers','availableEngineVersions','getPrivateDnsZoneSuffix','locations/azureAsyncOperation','locations/checkVirtualNetworkSubnetUsage','locations/performanceTiers','locations/recommendedActionSessionsAzureAsyncOperation','locations/recommendedActionSessionsOperationResults','servers/topQueryStatistics','servers/queryTexts','servers/waitStatistics','servers/resetQueryPerformanceInsightData','servers/privateLinkResources','servers/privateEndpointConnections','servers/privateEndpointConnectionProxies','locations/getCachedServerName','capacities','autoScaleVCores','locations/operationstatuses','roleAssignments','roleDefinitions','classicAdministrators','permissions','denyAssignments','locks','policyDefinitions','policySetDefinitions','policyAssignments','policyExemptions','dataAliases','providerOperations','elevateAccess','checkAccess','findOrphanRoleAssignments','roleAssignmentsUsageMetrics','accessReviewScheduleDefinitions','accessReviewScheduleSettings','privateLinkAssociations','resourceManagementPrivateLinks','operationStatus','Connectors','CloudConnectors','CheckConnectorEligibility','ExternalBillingAccounts','ExternalBillingAccounts/Dimensions','ExternalBillingAccounts/Query','ExternalSubscriptions/Dimensions','ExternalSubscriptions/Query','ExternalSubscriptions','Forecast','ExternalSubscriptions/Forecast','ExternalBillingAccounts/Forecast','Settings','register','Query','Dimensions','Budgets','ExternalSubscriptions/Alerts','ExternalBillingAccounts/Alerts','Alerts','showbackRules','costAllocationRules','Exports','Reports','Reportconfigs','BillingAccounts','Departments','EnrollmentAccounts','Views','ScheduledActions','CheckNameAvailability','Insights','fetchPrices','GenerateReservationDetailsReport','ReservationDetailsOperationResults','GenerateDetailedCostReport','OperationStatus','OperationResults','accessConnectors','workspaces/virtualNetworkPeerings','workspaces/dbWorkspaces','clusters/applications','clusters/applicationTypes','clusters/applicationTypes/versions','clusters/applications/services','locations/clusterVersions','locations/environments','locations/unsupportedVMSizes','managedclusters','managedclusters/nodetypes','managedclusters/applicationTypes','managedclusters/applicationTypes/versions','managedclusters/applications','managedclusters/applications/services','locations/managedClusterOperations','locations/managedClusterOperationResults','locations/managedClusterVersions','locations/environments/managedClusterVersions','locations/managedUnsupportedVMSizes','accounts/dataLakeStoreAccounts','accounts/storageAccounts','accounts/storageAccounts/containers','accounts/storageAccounts/containers/listSasTokens','locations/capability','workspaces/batchEndpoints','workspaces/batchEndpoints/deployments','registries','locations/registryOperationsStatus','workspaces/onlineEndpoints','workspaces/onlineEndpoints/deployments','workspaces/onlineEndpoints/deployments/skus','workspaces/computes','workspaces/jobs','workspaces/codes','workspaces/codes/versions','workspaces/components','workspaces/components/versions','workspaces/environments','workspaces/environments/versions','workspaces/data','workspaces/data/versions','workspaces/datasets','workspaces/services','workspaces/datastores','workspaces/eventGridFilters','workspaces/models','workspaces/models/versions','locations/computeOperationsStatus','locations/mfeOperationResults','locations/mfeOperationsStatus','locations/workspaceOperationsStatus','locations/vmsizes','locations/updatequotas','workspaces/labelingJobs','workspaces/schedules','workspaces/featuresets','workspaces/featuresets/versions','workspaces/featurestoreEntities','workspaces/featurestoreEntities/versions','registries/codes','registries/codes/versions','registries/components','registries/components/versions','registries/data','registries/data/versions','registries/environments','registries/environments/versions','registries/models','registries/models/versions','searchServices','checkServiceNameAvailability','servers/start','servers/stop','namespaces','namespaces/authorizationrules','namespaces/networkrulesets','namespaces/privateEndpointConnections','namespaces/eventhubs','namespaces/eventhubs/authorizationrules','namespaces/eventhubs/consumergroups','namespaces/applicationGroups','checkNamespaceAvailability','sku','namespaces/disasterrecoveryconfigs','namespaces/disasterrecoveryconfigs/checkNameAvailability','locations/clusterOperationResults','availableClusterRegions','spatialAnchorsAccounts','remoteRenderingAccounts','objectAnchorsAccounts','resourceProviders','associations','clusters/operationresults','locations/billingSpecs','locations/azureasyncoperations','locations/validateCreateRequest','assessForMigration','servers/upgrade','resources','managementGroups','getEntities','managementGroups/settings','operationResults/asyncOperation','tenantBackfillStatus','startTenantBackfill','maintenanceConfigurations','updates','configurationAssignments','applyUpdates','publicMaintenanceConfigurations','locations/eventSubscriptions','eventSubscriptions','topics','domains','domains/topics','topicTypes','locations/operationsStatus','locations/topicTypes','extensionTopics','operationsStatus','systemTopics','systemTopics/eventSubscriptions','partnerRegistrations','partnerConfigurations','verifiedPartners','partnerNamespaces','partnerTopics','partnerTopics/eventSubscriptions','partnerNamespaces/eventChannels','partnerNamespaces/channels','partnerDestinations','caches','caches/storageTargets','usageModels','locations/ascoperations','databaseAccounts','databaseAccountNames','locations/restorableDatabaseAccounts','restorableDatabaseAccounts','cassandraClusters','databaseAccounts/encryptionScopes','mongoClusters','locations/mongoClusterOperationResults','locations/mongoClusterAzureAsyncOperation','locations/checkMongoClusterNameAvailability','registries/cacheRules','registries/credentialSets','registries/connectedRegistries','registries/connectedRegistries/deactivate','registries/scopeMaps','registries/tokens','registries/generateCredentials','registries/privateEndpointConnections','registries/privateEndpointConnectionProxies','registries/privateEndpointConnectionProxies/validate','registries/privateLinkResources','registries/importImage','registries/exportPipelines','registries/importPipelines','registries/pipelineRuns','registries/listBuildSourceUploadUrl','registries/scheduleRun','registries/runs','registries/taskRuns','registries/taskRuns/listDetails','registries/agentPools','registries/agentPoolsOperationResults','registries/agentPools/listQueueStatus','registries/runs/listLogSasUrl','registries/runs/cancel','registries/tasks','registries/tasks/listDetails','registries/getBuildSourceUploadUrl','registries/queueBuild','registries/builds','registries/builds/getLogLink','registries/builds/cancel','registries/buildTasks','registries/buildTasks/listSourceRepositoryProperties','registries/buildTasks/steps','registries/buildTasks/steps/listBuildArguments','registries/replications','registries/webhooks','registries/webhooks/ping','registries/webhooks/getCallbackConfig','registries/webhooks/listEvents','locations/setupAuth','locations/authorize','registries/GetCredentials','registries/listCredentials','registries/regenerateCredential','registries/listUsages','registries/listPolicies','registries/updatePolicies','registries/regenerateCredentials','registries/eventGridFilters','namespaces/hybridconnections','namespaces/hybridconnections/authorizationrules','namespaces/wcfrelays','namespaces/wcfrelays/authorizationrules','ManagedClusters/eventGridFilters','containerServices','fleetMemberships','fleets','fleets/members','locations/orchestrators','locations/osOptions','managedClusters','managedclustersnapshots','namespaces/notificationHubs','services','services/projects','SqlMigrationServices','DatabaseMigrations','Locations/OperationTypes','Locations/sqlMigrationServiceOperationResults','service','deletedServices','locations/deletedServices','validateServiceName','reportFeedback','checkFeedbackRequired','getDomainOwnershipIdentifier','service/eventGridFilters','Identities','userAssignedIdentities','userAssignedIdentities/federatedIdentityCredentials','namespaces/queues','namespaces/queues/authorizationrules','namespaces/topics','namespaces/topics/authorizationrules','namespaces/topics/subscriptions','namespaces/topics/subscriptions/rules','premiumMessagingRegions','namespaces/eventgridfilters','profiles','profiles/endpoints','profiles/endpoints/origins','profiles/endpoints/origingroups','profiles/endpoints/customdomains','operationresults','operationresults/profileresults','operationresults/profileresults/endpointresults','operationresults/profileresults/endpointresults/originresults','operationresults/profileresults/endpointresults/origingroupresults','operationresults/profileresults/endpointresults/customdomainresults','checkEndpointNameAvailability','checkResourceUsage','validateProbe','canMigrate','migrate','edgenodes','CdnWebApplicationFirewallPolicies','CdnWebApplicationFirewallManagedRuleSets','profiles/afdendpoints','profiles/afdendpoints/routes','profiles/customdomains','profiles/origingroups','profiles/origingroups/origins','profiles/rulesets','profiles/rulesets/rules','profiles/secrets','validateSecret','profiles/securitypolicies','operationresults/profileresults/afdendpointresults','operationresults/profileresults/afdendpointresults/routeresults','operationresults/profileresults/customdomainresults','operationresults/profileresults/origingroupresults','operationresults/profileresults/origingroupresults/originresults','operationresults/profileresults/rulesetresults','operationresults/profileresults/rulesetresults/ruleresults','operationresults/profileresults/secretresults','operationresults/profileresults/securitypoliciesresults','accounts/firewallRules','clusters/databases','clusters/attacheddatabaseconfigurations','clusters/principalassignments','clusters/databases/eventhubconnections','clusters/databases/dataconnections','clusters/databases/principalassignments','locations/skus','clusters/databases/scripts','Redis','Redis/privateEndpointConnectionProxies','Redis/privateEndpointConnectionProxies/validate','Redis/privateEndpointConnections','Redis/privateLinkResources','locations/asyncOperations','redisEnterprise','RedisEnterprise/privateEndpointConnectionProxies','RedisEnterprise/privateEndpointConnectionProxies/validate','RedisEnterprise/privateEndpointConnectionProxies/operationresults','RedisEnterprise/privateEndpointConnections','RedisEnterprise/privateEndpointConnections/operationresults','RedisEnterprise/privateLinkResources','redisEnterprise/databases','Redis/EventGridFilters','projects','migrateprojects','assessmentProjects','moveCollections','locations/assessmentOptions','locations/rmsOperationResults','modernizeProjects','dataFactories','factories','factories/integrationRuntimes','dataFactories/diagnosticSettings','dataFactories/metricDefinitions','checkDataFactoryNameAvailability','checkAzureDataFactoryNameAvailability','dataFactorySchema','locations/configureFactoryRepo','locations/getFeatureValue','registrationDefinitions','registrationAssignments','marketplaceRegistrationDefinitions','operationStatuses','networks','volumes','secrets','gateways','locations/applicationOperations','locations/networkOperations','locations/volumeOperations','locations/gatewayOperations','locations/secretOperations','blueprints','blueprints/artifacts','blueprints/versions','blueprints/versions/artifacts','blueprintAssignments','blueprintAssignments/operations','blueprintAssignments/assignmentOperations','services/privateEndpointConnectionProxies','services/privateEndpointConnections','services/privateLinkResources','services/iomtconnectors','services/iomtconnectors/connections','services/iomtconnectors/mappings','workspaces/privateEndpointConnectionProxies','workspaces/privateEndpointConnections','workspaces/privateLinkResources','workspaces/dicomservices','workspaces/iotconnectors','workspaces/iotconnectors/fhirdestinations','workspaces/fhirservices','validateMedtechMappings','locations/checkTrialAvailability','locations/checkQuotaAvailability','privateClouds','privateClouds/clusters','privateClouds/authorizations','privateClouds/hcxEnterpriseSites','privateClouds/globalReachConnections','privateClouds/addons','privateClouds/workloadNetworks','privateClouds/workloadNetworks/dhcpConfigurations','privateClouds/workloadNetworks/portMirroringProfiles','privateClouds/workloadNetworks/segments','privateClouds/workloadNetworks/vmGroups','privateClouds/workloadNetworks/gateways','privateClouds/workloadNetworks/virtualMachines','privateClouds/workloadNetworks/dnsServices','privateClouds/workloadNetworks/dnsZones','privateClouds/workloadNetworks/publicIPs','privateClouds/clusters/datastores','privateClouds/cloudLinks','privateClouds/scriptExecutions','privateClouds/scriptPackages','privateClouds/scriptPackages/scriptCmdlets','privateClouds/clusters/placementPolicies','privateClouds/clusters/virtualMachines','reviewsnotifications','accounts/instances','registeredSubscriptions','guestConfigurationAssignments','azureKB','insights','apollo','saasresources','resourceChanges','changes','changeSnapshots','computeChanges','IoTApps','checkSubdomainAvailability','appTemplates','managedEnvironments','managedEnvironments/certificates','managedEnvironments/managedCertificates','jobs','locations/managedEnvironmentOperationResults','locations/managedEnvironmentOperationStatuses','locations/containerappOperationResults','locations/containerappOperationStatuses','connectedEnvironments','connectedEnvironments/certificates','locations/connectedEnvironmentOperationResults','locations/connectedEnvironmentOperationStatuses','locations/billingMeters','locations/availableManagedEnvironmentsWorkloadProfileTypes','linkers','dryruns','locations/connectors','locations/dryruns','configurationNames','Locations','CommunicationServices','CommunicationServices/eventGridFilters','EmailServices','EmailServices/Domains','storageSyncServices','storageSyncServices/syncGroups','storageSyncServices/syncGroups/cloudEndpoints','storageSyncServices/syncGroups/serverEndpoints','storageSyncServices/registeredServers','storageSyncServices/workflows','locations/operationsstatus','OpenShiftClusters','locations/openshiftversions','SqlVirtualMachineGroups','SqlVirtualMachines','SqlVirtualMachineGroups/AvailabilityGroupListeners','Locations/sqlVirtualMachineOperationResults','Locations/sqlVirtualMachineGroupOperationResults','Locations/availabilityGroupListenerOperationResults','Locations/registerSqlVmCandidate','NotebookProxies','Forecasts','AggregatedCost','tenants','ReservationRecommendations','ReservationRecommendationDetails','ReservationSummaries','ReservationTransactions','Balances','Marketplaces','Pricesheets','ReservationDetails','CostTags','Tags','Terms','UsageDetails','Charges','credits','lots','products','Operations','applicationDefinitions','jitRequests','domains/domainOwnershipIdentifiers','topLevelDomains','listDomainRecommendations','validateDomainRegistrationInformation','generateSsoRequest','reservationOrders','reservationOrders/reservations','listbenefits','reservations','reservationOrders/reservations/revisions','catalogs','appliedReservations','checkOffers','checkScopes','calculatePrice','calculateExchange','exchange','reservationOrders/calculateRefund','reservationOrders/return','reservationOrders/split','reservationOrders/merge','reservationOrders/swap','validateReservationOrder','reservationOrders/availableScopes','reservationOrders/reservations/availableScopes','commercialReservationOrders','calculatePurchasePrice','placePurchaseOrder','checkPurchaseStatus','ownReservations','listSkus','checkBenefitScopes','resourceProviders/locations','resourceProviders/locations/serviceLimits','resourceProviders/locations/serviceLimitsRequests','BackupVaults','ResourceGuards','locations/checkFeatureSupport','backupInstances','monitors','monitors/tagRules','monitors/singleSignOnConfigurations','getMarketplaceSaaSResourceDetails','networkSettings','azureADMetrics','privateLinkForAzureAD','addsservices','configuration','agents','aadsupportcases','reports','servicehealthmetrics','anonymousapiusers','farmBeatsExtensionDefinitions','farmBeatsSolutionDefinitions','Locations/OperationStatuses','apiCollections/apiCollectionDetails','apiCollectionsMeta','apiCollectionsMeta/apiCollectionMetaDetails','Locations/osVersions','reports/snapshots','onboard','triggerEvaluation','reports/webhooks','configurationStores','configurationStores/keyValues','configurationStores/eventGridFilters','deletedConfigurationStores','locations/deletedConfigurationStores','configurationStores/replicas','attestationProviders','defaultProviders','locations/defaultProvider','configurationProfileAssignments','configurationProfileAssignmentIntents','configurationProfilePreferences','configurationProfiles','configurationProfiles/versions','bestPractices','bestPractices/versions','servicePrincipals','workspaces/eventgridfilters','workspaces/validateCreateRequest','workspaces/operationresults','guestUsages','b2cDirectories','b2ctenants','DataControllers','SqlManagedInstances','PostgresInstances','SqlServerInstances','DataControllers/ActiveDirectoryConnectors','SqlServerInstances/Databases','SqlManagedInstances/FailoverGroups','autopilotEnvironments','dstsServiceAccounts','dstsServiceClientIdentities','plannedQuotas','sqlServerRegistrations','sqlServerRegistrations/sqlServers','scanningAccounts','locations/OperationStatuses','registrations','registrations/products','registrations/customerSubscriptions','cloudManifestFiles','linkedSubscriptions','generateDeploymentLicense','galleryImages','virtualHardDisks','clusters/arcSettings','clusters/arcSettings/extensions','virtualmachines/extensions','virtualmachines/hybrididentitymetadata','clusters/publishers','clusters/offers','clusters/publishers/offers','clusters/publishers/offers/skus','marketplaceGalleryImages','storageContainers','VMwareApplications','bareMetalInstances','batchAccounts','batchAccounts/pools','batchAccounts/detectors','batchAccounts/certificates','locations/accountOperationResults','locations/virtualMachineSkus','locations/cloudServiceSkus','billingPeriods','invoices','enrollmentAccounts','permissionRequests','billingAccounts/permissionRequests','billingAccounts/associatedTenants','billingRoleDefinitions','billingRoleAssignments','createBillingRoleAssignment','billingAccounts/createBillingRoleAssignment','billingAccounts/billingProfiles/createBillingRoleAssignment','billingAccounts/billingProfiles/invoiceSections/createBillingRoleAssignment','billingAccounts/customers/createBillingRoleAssignment','billingPermissions','billingAccounts/billingRoleDefinitions','billingAccounts/billingRoleAssignments','billingAccounts/billingPermissions','billingAccounts','billingAccounts/policies','billingAccounts/operationResults','billingAccounts/billingProfiles/billingRoleDefinitions','billingAccounts/billingProfiles/billingRoleAssignments','billingAccounts/billingProfiles/billingPermissions','billingAccounts/customers','billingAccounts/billingProfiles/customers','billingAccounts/billingProfiles/instructions','billingAccounts/customers/billingSubscriptions','billingAccounts/customers/products','billingAccounts/customers/transactions','billingAccounts/invoiceSections','billingAccounts/billingProfiles/invoiceSections','billingAccounts/billingProfiles/invoiceSections/billingRoleDefinitions','billingAccounts/billingProfiles/invoiceSections/billingRoleAssignments','billingAccounts/billingProfiles/invoiceSections/billingPermissions','billingAccounts/customers/billingRoleDefinitions','billingAccounts/customers/billingRoleAssignments','billingAccounts/customers/billingPermissions','billingAccounts/invoiceSections/elevate','billingAccounts/createInvoiceSectionOperations','billingAccounts/patchOperations','billingAccounts/invoiceSections/patchOperations','billingAccounts/invoiceSections/productMoveOperations','billingAccounts/invoiceSections/billingSubscriptionMoveOperations','billingAccounts/listInvoiceSectionsWithCreateSubscriptionPermission','billingAccounts/billingProfiles','billingAccounts/BillingProfiles/patchOperations','departments','billingAccounts/departments','billingAccounts/billingProfiles/departments','billingAccounts/notificationContacts','billingAccounts/billingProfiles/notificationContacts','billingAccounts/departments/billingRoleDefinitions','billingAccounts/billingProfiles/departments/billingRoleDefinitions','billingAccounts/departments/billingRoleAssignments','billingAccounts/billingProfiles/departments/billingRoleAssignments','billingAccounts/departments/billingPermissions','billingAccounts/billingProfiles/departments/billingPermissions','billingAccounts/enrollmentAccounts','billingAccounts/departments/enrollmentAccounts','billingAccounts/billingProfiles/enrollmentAccounts','billingAccounts/billingProfiles/departments/enrollmentAccounts','billingAccounts/enrollmentAccounts/billingRoleDefinitions','billingAccounts/enrollmentAccounts/billingRoleAssignments','billingAccounts/enrollmentAccounts/billingPermissions','billingAccounts/billingProfiles/enrollmentAccounts/billingPermissions','billingAccounts/enrollmentAccounts/billingSubscriptions','billingAccounts/departments/billingSubscriptions','billingAccounts/billingProfiles/paymentMethods','billingAccounts/availableBalance','billingAccounts/billingProfiles/availableBalance','billingAccounts/invoices','billingAccounts/billingProfiles/invoices','billingAccounts/transactions','billingAccounts/billingProfiles/transactions','billingAccounts/invoiceSections/transactions','billingAccounts/billingProfiles/invoiceSections/transactions','billingAccounts/billingProfiles/invoices/transactions','billingAccounts/invoices/transactions','billingAccounts/invoices/summary','billingAccounts/billingProfiles/validateDeleteBillingProfileEligibility','billingAccounts/billingProfiles/invoiceSections/validateDeleteInvoiceSectionEligibility','billingAccounts/invoices/transactionSummary','billingAccounts/billingSubscriptions','billingAccounts/billingSubscriptionAliases','billingAccounts/billingSubscriptions/invoices','billingAccounts/billingProfiles/billingSubscriptions','billingAccounts/billingProfiles/departments/billingSubscriptions','billingAccounts/billingProfiles/enrollmentAccounts/billingSubscriptions','billingAccounts/invoiceSections/billingSubscriptions','billingAccounts/billingProfiles/invoiceSections/billingSubscriptions','billingAccounts/invoiceSections/products','billingAccounts/billingProfiles/invoiceSections/products','billingAccounts/invoiceSections/products/updateAutoRenew','billingAccounts/billingProfiles/invoiceSections/products/updateAutoRenew','billingAccounts/billingProfiles/products','billingAccounts/products','billingAccounts/invoiceSections/initiateTransfer','billingAccounts/billingProfiles/invoiceSections/initiateTransfer','billingAccounts/invoiceSections/transfers','billingAccounts/billingProfiles/invoiceSections/transfers','transfers/acceptTransfer','transfers','transfers/declineTransfer','transfers/validateTransfer','billingAccounts/customers/initiateTransfer','billingAccounts/customers/transfers','billingAccounts/customers/transferSupportedAccounts','billingProperty','billingAccounts/billingProfiles/policies','billingAccounts/customers/policies','billingAccounts/billingProfiles/invoices/pricesheet','billingAccounts/billingProfiles/pricesheet','billingAccounts/billingProfiles/pricesheetDownloadOperations','billingAccounts/invoiceSections/billingSubscriptions/transfer','billingAccounts/invoiceSections/products/transfer','billingAccounts/billingProfiles/invoiceSections/products/transfer','billingAccounts/invoiceSections/productTransfersResults','transfers/operationStatus','billingAccounts/agreements','billingAccounts/lineOfCredit','billingAccounts/paymentMethods','paymentMethods','billingAccounts/billingProfiles/paymentMethodLinks','billingAccounts/payableOverage','billingAccounts/payNow','billingAccounts/reservationOrders','billingAccounts/reservationOrders/reservations','billingAccounts/reservations','billingAccounts/billingProfiles/reservations','billingAccounts/billingProfiles/validateDetachPaymentMethodEligibility','validateAddress','promotions','promotions/checkeligibility','billingAccounts/billingSubscriptions/elevateRole','billingAccounts/appliedReservationOrders','promotionalCredits','billingAccounts/promotionalCredits','billingAccounts/savingsPlanOrders/savingsPlans','billingAccounts/savingsPlanOrders','billingAccounts/savingsPlans','savingsPlanOrders','savingsPlanOrders/savingsPlans','calculateMigrationCost','savingsPlanOrderAliases','reservationOrderAliases','savingsPlans','accounts/skus','accounts/usages','certificateOrders','certificateOrders/certificates','validateCertificateRegistrationInformation','targets','locations/targetTypes','experiments','classicInfrastructureResources','quotas','checkStorageAccountAvailability','storageAccounts/services/diagnosticSettings','storageAccounts/services/metrics','storageAccounts/metricDefinitions','storageAccounts/metrics','capabilities','vmImages','storageAccounts/vmImages','publicImages','osImages','osPlatformImages','pools','hostedpools','plans','UsageAggregates','RateCard','Ledgers','Locations/operations','Locations/operationstatuses','organizations','agreements','validations','organizations/access','CacheNodes','enterpriseCustomers','ispCustomers','ispCustomers/ispCacheNodes','VCenters','resourcepools','virtualnetworks','virtualmachinetemplates','virtualmachines','vcenters/inventoryitems','VirtualMachines/HybridIdentityMetadata','virtualmachines/guestagents','datastores','hosts','TenantOptedIn','EnableLockbox','DisableLockbox','requests','instances','grafana','grafana/privateEndpointConnections','grafana/privateLinkResources','locations/validateAddress','locations/availableSkus','locations/validateInputs','locations/regionConfiguration','jobs/eventGridFilters','DataBoxEdgeDevices','DataBoxEdgeDevices/checkNameAvailability','availableSkus','locations/jobs','listinvitations','locations/consumerInvitations/reject','locations/consumerInvitations','monitors/listMonitoredResources','monitors/listApiKeys','monitors/getDefaultKey','monitors/setDefaultKey','monitors/listHosts','monitors/listLinkedResources','monitors/refreshSetPasswordLink','monitors/monitoredSubscriptions','replicationVaults','replicationFabrics','accounts/shares','accounts/shares/datasets','accounts/shares/synchronizationSettings','accounts/shares/invitations','accounts/sharesubscriptions','accounts/shares/providersharesubscriptions','accounts/sharesubscriptions/datasetmappings','accounts/sharesubscriptions/triggers','accounts/sharesubscriptions/consumerSourceDataSets','locations/registerEmail','locations/activateEmail','locations/rejectInvitation','artifactSources','serviceTopologies','serviceTopologies/services','serviceTopologies/services/serviceUnits','steps','rollouts','instances/experiments','instances/sandboxes','instances/sandboxes/experiments','devcenters','devcenters/catalogs','devcenters/attachednetworks','devcenters/devboxdefinitions','devcenters/environmentTypes','devcenters/galleries','devcenters/galleries/images/versions','devcenters/galleries/images','devcenters/images','networkconnections','networkconnections/healthchecks','projects/attachednetworks','projects/environmentTypes','projects/pools','projects/pools/schedules','projects/devboxdefinitions','projects/allowedEnvironmentTypes','networkconnections/outboundNetworkDependenciesEndpoints','locations/githuboauth','locations/generatePreviewArtifacts','pipelines','digitalTwinsInstances','digitalTwinsInstances/operationResults','locations/operationsStatuses','digitalTwinsInstances/endpoints','digitalTwinsInstances/timeSeriesDatabaseConnections','workspaces/labels','addresses','orderItems','orders','locations/orders','listProductFamilies','listConfigurations','productFamiliesMetadata','elasticSans','customLocations','customLocations/enabledResourceTypes','customLocations/resourceSyncRules','features','providers','featureProviders','subscriptionFeatureRegistrations','featureProviderNamespaces','featureConfigurations','fluidRelayServers','fluidRelayServers/fluidRelayContainers','hanaInstances','sapMonitors','healthBots','discoverySolutions','diagnostics','troubleshooters','machines','machines/hybridIdentityMetadata','machines/privateLinkScopes','machines/extensions','locations/publishers/extensionTypes','locations/publishers/extensionTypes/versions','machines/assessPatches','machines/installPatches','locations/updateCenterOperationResults','locations/privateLinkScopes','endpoints','Locations/operationStatuses','provisionedClusters','provisionedClusters/hybridIdentityMetadata','provisionedClusters/agentPools','devices','networkfunctions','networkFunctionVendors','networkFunctions/components','publishers','publishers/networkFunctionDefinitionGroups','publishers/networkFunctionDefinitionGroups/networkFunctionDefinitionVersions','publishers/artifactStores','publishers/artifactStores/artifactManifests','defenderSettings','locations/deviceGroups','locations/deviceGroups/devices','locations/deviceGroups/vulnerabilities','locations/deviceGroups/alerts','locations/deviceGroups/recommendations','locations/sites','locations/sites/sensors','sensors','onPremiseSensors','alertTypes','recommendationTypes','connectedClusters','sourceControlConfigurations','extensions','fluxConfigurations','labplans','labaccounts','users','loadtests','loadtests/outboundNetworkDependenciesEndpoints','Locations/Quotas','monitors/accounts','monitors/accounts/tagRules','Workspaces','webServices','managedstorageclass','privategalleryitems','offers','macc','offerTypes','offerTypes/publishers','offerTypes/publishers/offers','offerTypes/publishers/offers/plans','offerTypes/publishers/offers/plans/configs','offerTypes/publishers/offers/plans/configs/importImage','offerTypes/publishers/offers/plans/agreements','listAvailableOffers','publishers/offers','publishers/offers/amendments','privateStoreClient','privateStores','privateStores/offers','search','privateStores/requestApprovals/query','privateStores/requestApprovals/withdrawPlan','privateStores/RequestApprovals','privateStores/queryNotificationsState','privateStores/fetchAllSubscriptionsInTenant','privateStores/listNewPlansNotifications','privateStores/listStopSellOffersPlansNotifications','privateStores/listSubscriptionsContext','privateStores/offers/acknowledgeNotification','privateStores/AdminRequestApprovals','privateStores/collections','privateStores/collections/approveAllItems','privateStores/collections/disableApproveAllItems','privateStores/collections/offers','privateStores/collections/mapOffersToContexts','privateStores/collections/queryRules','privateStores/collections/setRules','privateStores/collections/offers/upsertOfferWithMultiContext','privateStores/bulkCollectionsAction','privateStores/collections/transferOffers','privateStores/anyExistingOffersInTheCollections','privateStores/queryOffers','privateStores/queryUserOffers','privateStores/queryUserRules','privateStores/collectionsToSubscriptionsMapping','privateStores/billingAccounts','privateStores/queryApprovedPlans','locations/edgeZones/products','offertypes','virtualEnclaves','communities','virtualEnclaves/workloads','internalConnections','packetCoreControlPlaneVersions','netAppAccounts','netAppAccounts/snapshotPolicies','netAppAccounts/volumeGroups','netAppAccounts/capacityPools','netAppAccounts/capacityPools/volumes','netAppAccounts/capacityPools/volumes/mountTargets','netAppAccounts/capacityPools/volumes/snapshots','locations/checkFilePathAvailability','locations/regionInfo','locations/QuotaLimits','locations/CheckInventory','azureTrafficCollectors','azureTrafficCollectors/collectorPolicies','meshVpns','meshVpns/connectionPolicies','meshVpns/privateEndpointConnections','meshVpns/privateEndpointConnectionProxies','osNamespaces','VMwareSites','HyperVSites','ServerSites','ImportSites','MasterSites','energyServices','energyServices/privateEndpointConnections','energyServices/privateLinkResources','energyServices/privateEndpointConnectionProxies','shareInvites','applicationRegistrationInvites','Locations/checkNameAvailability','groundStations','availableGroundStations','contactProfiles','spacecrafts','spacecrafts/contacts','globalCommunicationsSites','orbitalGateways','l2Connections','l3Connections','edgeSites','peerings','peeringLocations','legacyPeerings','peerAsns','peeringServices','peeringServiceCountries','peeringServiceLocations','peeringServiceProviders','checkServiceProviderAvailability','lookingGlass','cdnPeeringPrefixes','workspaceCollections','privateLinkServicesForPowerBI','privateLinkServicesForPowerBI/operationResults','eligibilityCheck','providerRegistrations','providerRegistrations/resourceTypeRegistrations','providerRegistrations/defaultRollouts','providerRegistrations/customRollouts','providerRegistrations/checkinmanifest','providerRegistrations/resourceActions','availableAccounts','accounts/kafkaConfigurations','setDefaultAccount','removeDefaultAccount','getDefaultAccount','locations/listFeatures','locations/offerings','Locations/CheckNameAvailability','quotaRequests','accounts/modeling','accounts/serviceEndpoints','appliances','resourcesHistory','resourceChangeDetails','subscriptionsStatus','queries','deploymentScripts','deploymentScripts/logs','locations/deploymentScriptOperationResults','templateSpecs','templateSpecs/versions','builtInTemplateSpecs','builtInTemplateSpecs/versions','deploymentStacks','locations/deploymentStackOperationStatus','notifyResourceJobs','tags','checkPolicyCompliance','checkresourcename','calculateTemplateHash','subscriptions','subscriptions/resources','subscriptions/providers','subscriptions/operationresults','resourceGroups','subscriptions/resourceGroups','subscriptions/resourcegroups/resources','subscriptions/locations','subscriptions/tagnames','subscriptions/tagNames/tagValues','deployments','deployments/operations','validateResources','links','bulkDelete','VMMServers','Clouds','VirtualNetworks','VirtualMachineTemplates','VirtualMachines','AvailabilitySets','VMMServers/InventoryItems','chambers','gitHubConnectors','azureDevOpsConnectors','azureDevOpsConnectors/orgs','gitHubConnectors/owners','azureDevOpsConnectors/orgs/projects','gitHubConnectors/owners/repos','azureDevOpsConnectors/orgs/projects/repos','gitHubConnectors/stats','gitHubConnectors/repos','azureDevOpsConnectors/stats','azureDevOpsConnectors/repos','gitLabConnectors','gitHubConnectors/gitHubInstallations','gitHubConnectors/gitHubInstallations/gitHubRepositories','gitLabConnectors/groups','gitLabConnectors/projects','gitLabConnectors/stats','gitLabConnectors/groups/projects','consoleServices','serialPorts','locations/consoleServices','supportOfferingEntitlement','SignalR','WebPubSub','SignalR/eventGridFilters','hybridUseBenefits','storageMovers','storageMovers/projects','storageMovers/agents','storageMovers/endpoints','storageMovers/projects/jobDefinitions','storageMovers/projects/jobDefinitions/jobRuns','SubscriptionDefinitions','SubscriptionOperations','CreateSubscription','cancel','rename','enable','aliases','acceptChangeTenant','changeTenantStatus','changeTenantRequest','acceptOwnership','acceptOwnershipStatus','services/problemclassifications','supporttickets','supporttickets/communications','operationsstatus','lookUpResourceId','workspaces/bigDataPools','workspaces/sqlPools','workspaces/sqlDatabases','locations/sqlDatabaseAzureAsyncOperation','locations/sqlDatabaseOperationResults','workspaces/kustoPools','locations/kustoPoolOperationResults','locations/kustoPoolCheckNameAvailability','workspaces/kustoPools/databases','workspaces/kustoPools/attacheddatabaseconfigurations','workspaces/kustoPools/databases/dataconnections','locations/sqlPoolAzureAsyncOperation','locations/sqlPoolOperationResults','workspaces/operationStatuses','workspaces/operationResults','kustoOperations','privateLinkHubs','documentProcessors','skus','testBaseAccounts','testBaseAccounts/usages','testBaseAccounts/availableOSs','testBaseAccounts/testTypes','testBaseAccounts/flightingRings','testBaseAccounts/packages','testBaseAccounts/packages/osUpdates','testBaseAccounts/testSummaries','testBaseAccounts/packages/favoriteProcesses','testBaseAccounts/packages/testResults','testBaseAccounts/packages/testResults/analysisResults','testBaseAccounts/emailEvents','testBaseAccounts/customerEvents','testBaseAccounts/featureUpdateSupportedOses','testBaseAccounts/availableInplaceUpgradeOSs','testBaseAccounts/firstPartyApps','testBaseAccounts/draftPackages','locations/userclassicaccounts','locations/classicaccounts','imageTemplates','imageTemplates/runOutputs','account','account/project','account/extension','VCenters/InventoryItems','DeviceServices','sapVirtualInstances','sapVirtualInstances/applicationInstances','sapVirtualInstances/centralInstances','sapVirtualInstances/databaseInstances','monitors/providerInstances','Locations/sapVirtualInstanceMetadata','monitors/sapLandscapeMonitor','nginxDeployments/configurations','nginxDeployments','nginxDeployments/certificates','globalRulestacks','globalRulestacks/fqdnlists','globalRulestacks/preRules','globalRulestacks/postRules','globalRulestacks/prefixlists','globalRulestacks/certificates','fileSystems','fusionGroups','fusionGroups/azureZones','fusionGroups/azureZones/plugins','fusionGroups/replicationRules','fusionGroups/replicationRules/migrations','fusionGroups/hiveReplicationRules','fusionGroups/managedOnPremZones','migrators','migrators/targets','migrators/liveDataMigrations','migrators/exclusionTemplates','migrators/metadataMigrations','migrators/metadataTargets','migrators/pathMappings','migrators/dataTransferAgent')]
                        [string]
                        $ResourceType
                    )
                #EndRegion

                #Region Get Azure Subscription Resource Locations (Azure Regions)
                    #Create Headers
                    $AzHeaders = @{Authorization = "Bearer $AzureToken"}

                    #Call Azure Rest API to return locations
                    $AzRegionsParams = @{
                        Method  = 'GET'
                        Uri     = "https://management.azure.com/subscriptions/$SubscriptionId/locations?api-version=2020-01-01"
                        Headers = $AzHeaders
                    }
                    $AzRegions = (Invoke-RestMethod @AzRegionsParams).value

                    #Set Location Output Variable
                    $Locations = $AzRegions
                #EndRegion

                #Region Geography Group Filter
                    if ($GeographyGroup){
                        $Locations = $Locations | Where-Object{$_.metadata.geographyGroup -eq $GeographyGroup}
                    }
                #EndRegion

                #Region ResourceType Filter
                    if ($ResourceType -and $ProviderNamespace){
                        #Call Azure Rest API to Return Provider info and ResourceTypes
                        $ProviderInfoParams = @{
                            Method  = 'GET'
                            Uri     = "https://management.azure.com/subscriptions/$SubscriptionId/providers/$ProviderNamespace"+"?api-version=2021-04-01"
                            Headers = $AzHeaders
                        }
                        $ProviderInfo = Invoke-RestMethod @ProviderInfoParams

                        #Find Specific Resource Type 
                        $ResourceTypeInfo = $ProviderInfo.resourceTypes | Where-Object{$_.resourceType -eq $ResourceType}

                        #Filter Locations by list of locations available to Specified Resource Type
                        $Locations = $Locations | Where-Object{$_.displayName -in $ResourceTypeInfo.locations}
                    }
                #EndRegion

                #Output Return Variable
                return $Locations
            }
            $Get_AzRegions = "function Get-AzRegions {${Function:Get-AzRegions}}"
        #EndRegion

        #Region Function New-Exception
            function New-Exception {
                [cmdletbinding(DefaultParameterSetName="FromNew",PositionalBinding)]
                [OutputType([Exception])]
                [Alias("N-Exp","New-Ex","New-Exep")]
                param (
                    [Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='PrependMessage')]
                    [Parameter(Mandatory,ValueFromPipeline,ParameterSetName='FromExisting')]
                    [Alias("Ex")]
                    [ValidateNotNullOrEmpty()]
                    [Exception]
                    $Exception,

                    [Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='PrependMessage')]
                    [Parameter(ValueFromPipelineByPropertyName,ParameterSetName='FromExisting')]
                    [Parameter(Mandatory,ValueFromPipeline,ValueFromPipelineByPropertyName,ParameterSetName='FromNew')]
                    [Alias("M")]
                    [ValidateNotNullOrEmpty()]
                    [string]
                    $Message,

                    [Parameter(ValueFromPipelineByPropertyName)]
                    [Alias("InEx")]
                    [Exception]
                    $InnerException,

                    [Parameter(ValueFromPipelineByPropertyName)]
                    [Alias("Src")]
                    [string]
                    $Source,

                    [Parameter(ValueFromPipelineByPropertyName)]
                    [Alias("HL")]
                    $HelpLink,
                    
                    [Parameter(ValueFromPipelineByPropertyName)]
                    [Alias("HR")]
                    [int]
                    $HResult,

                    [Parameter(ParameterSetName='PrependMessage')]
                    [Alias("PM","Prepend")]
                    [switch]
                    $PrependMessage
                )

                $ErrorMessage = if($Exception){
                        if($PrependMessage){
                            $Message + $Exception.Message
                        }
                        elseif ($Message) {
                            $Message
                        }
                        else {
                            $Exception.Message
                        }
                    }
                    else{
                        $Message
                    }

                $NewException = [Exception]::new($ErrorMessage,$InnerException ?? $Exception.InnerException)

                $NewException.HelpLink = $HelpLink ?? $Exception.HelpLink
                $NewException.HResult  = $HResult  ?? $Exception.HResult
                $NewException.Source   = $Source   ?? $Exception.Source

                return $NewException
            }
            $New_Exception = "function New-Exception {${Function:New-Exception}}"
        #EndRegion

        #Region Function New-Error
            function New-Error {
                [cmdletbinding(DefaultParameterSetName="FromNew",PositionalBinding)]
                [OutputType([System.Management.Automation.ErrorRecord])]
                [Alias("N-Exp","New-Er","New-Err")]
                param (
                    [Parameter(Mandatory,ValueFromPipeline,ParameterSetName='FromExisting')]
                    [Parameter(Mandatory,ValueFromPipeline,ParameterSetName='PrependMessage')]
                    [Parameter(Mandatory,ValueFromPipeline,ParameterSetName='PreserveInvocationInfo')]
                    [Alias("Er","Error","ErrRec","ERecord","ErrRecord")]
                    [ValidateNotNullOrEmpty()]
                    [System.Management.Automation.ErrorRecord]
                    $ErrorRecord,
                    
                    [Parameter(Mandatory,ValueFromPipeline,ValueFromPipelineByPropertyName,ParameterSetName='FromNew')]
                    [Parameter(ValueFromPipelineByPropertyName,ParameterSetName='FromExisting')]
                    [Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='PrependMessage')]
                    [Parameter(Mandatory, ParameterSetName='PreserveInvocationInfo')]
                    [Alias("M","Msg")]
                    [ValidateNotNullOrEmpty()]
                    [string]
                    $Message,
                    
                    [Parameter(ValueFromPipelineByPropertyName,ParameterSetName='FromExisting')]
                    [Parameter(ValueFromPipelineByPropertyName,ParameterSetName='PrependMessage')]
                    [Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='FromNew')]
                    [Alias("TO","TarObj")]
                    [ValidateNotNullOrEmpty()]
                    [Object]
                    $TargetObject,

                    [Parameter(ValueFromPipelineByPropertyName,ParameterSetName='FromExisting')]
                    [Parameter(ValueFromPipelineByPropertyName,ParameterSetName='PrependMessage')]
                    [Parameter(ValueFromPipelineByPropertyName,ParameterSetName='FromNew')]
                    [Alias("EId","Id")]
                    [ValidateNotNullOrEmpty()]
                    [string]
                    $ErrorId = $ErrorRecord.FullyQualifiedErrorId ?? "CustomError",
                    
                    [Parameter(ValueFromPipelineByPropertyName,ParameterSetName='FromExisting')]
                    [Parameter(ValueFromPipelineByPropertyName,ParameterSetName='PrependMessage')]
                    [Parameter(ValueFromPipelineByPropertyName,ParameterSetName='FromNew')]
                    [Alias("EC","ECat","ErrCat","Category")]
                    [ValidateNotNullOrEmpty()]
                    [ValidateSet('NotSpecified','OpenError','CloseError','DeviceError','DeadlockDetected','InvalidArgument','InvalidData','InvalidOperation','InvalidResult','InvalidType','MetadataError','NotImplemented','NotInstalled','ObjectNotFound','OperationStopped','OperationTimeout','SyntaxError','ParserError','PermissionDenied','ResourceBusy','ResourceExists','ResourceUnavailable','ReadError','WriteError','FromStdErr','SecurityError','ProtocolError','ConnectionError','AuthenticationError','LimitsExceeded','QuotaExceeded','NotEnabled')]
                    [System.Management.Automation.ErrorCategory]
                    $ErrorCategory = $ErrorRecord.CategoryInfo.Category ?? [System.Management.Automation.ErrorCategory]::NotSpecified,

                    [Parameter(ValueFromPipelineByPropertyName,ParameterSetName='FromExisting')]
                    [Parameter(ValueFromPipelineByPropertyName,ParameterSetName='PrependMessage')]
                    [Parameter(ValueFromPipelineByPropertyName,ParameterSetName='FromNew')]
                    [Parameter(ValueFromPipelineByPropertyName,ParameterSetName='PreserveInvocationInfo')]
                    [Alias("Ex")]
                    [ValidateNotNullOrEmpty()]
                    [Exception]
                    $Exception,

                    [Parameter(Mandatory, ParameterSetName='PrependMessage')]
                    [Parameter(ParameterSetName='PreserveInvocationInfo')]
                    [Alias("PM","Prepend")]
                    [switch]
                    $PrependMessage,

                    [Parameter(Mandatory, ParameterSetName='PreserveInvocationInfo')]
                    [Alias("PI","Preserve","PreserveInv","PreserveInvInfo","KeepInvInfo","PreserveInvocation")]
                    [switch]
                    $PreserveInvocationInfo,

                    [Parameter(ParameterSetName='PreserveInvocationInfo')]
                    [switch]
                    $Throw
                )

                $ErrorException = $Exception ?? $ErrorRecord.Exception ?? (New-Exception -Message $Message)

                $ErrorMessage = if($ErrorRecord){
                    if($PrependMessage){
                        $Message + $ErrorRecord.ErrorDetails.Message ?? $ErrorException.Message ?? $ErrorException.InnerException.Message
                    }
                    elseif ($Message) {
                        $Message
                    }
                    else {
                        $ErrorRecord.ErrorDetails.Message ?? $ErrorException.Message
                    }
                }
                else{
                    $Message
                }

                $NewErrorRecord = if($PreserveInvocationInfo){
                    if($Exception){
                        [System.Management.Automation.ErrorRecord]::new($ErrorRecord,$Exception)
                    }
                    else{
                        $ErrorRecord
                    }
                }
                else{
                    [System.Management.Automation.ErrorRecord]::new(
                        $ErrorException,
                        $ErrorId,
                        $ErrorCategory,
                        $TargetObject ?? $ErrorRecord.TargetObject
                    )
                }
                $NewErrorRecord.ErrorDetails = [System.Management.Automation.ErrorDetails]::new($ErrorMessage)

                if($PreserveInvocationInfo -and $Throw){
                    throw $NewErrorRecord
                }else{
                    return $NewErrorRecord 
                }
            
            }
            $New_Error = "function New-Error {${Function:New-Error}}"
        #EndRegion

        #Region New-LogAnalyticsWorkspace
            function New-LogAnalyticsWorkspace {
                [cmdletbinding(PositionalBinding)]
                [OutputType([string],[PSCustomObject],[hashtable])]
                [Alias("New-LaWorkspace","New-Law","N-Law","New-Workspace","N-LA")]
                #Region Parameters
                    param (
                        [Parameter(Mandatory)]
                        [Alias("WorkspaceName","N")]
                        [ValidateNotNullOrEmpty()]
                        [string]
                        $Name,

                        [Parameter(Mandatory)]
                        [Alias("Token","AzToken","AzTkn","Tkn",'Jwt','JsonWebToken')]
                        [ValidateNotNullOrEmpty()]
                        [string]
                        $AzureToken,

                        [Parameter(Mandatory)]
                        [ValidateNotNullOrEmpty()]
                        [Alias("Rgn")]
                        [ValidateSet('eastus','eastus2','southcentralus','westus2','westus3','australiaeast','southeastasia','northeurope','swedencentral','uksouth','westeurope','centralus','southafricanorth','centralindia','eastasia','japaneast','koreacentral','canadacentral','francecentral','germanywestcentral','norwayeast','switzerlandnorth','uaenorth','brazilsouth','qatarcentral','northcentralus','westus','westcentralus','southafricawest','australiacentral','australiacentral2','australiasoutheast','japanwest','koreasouth','southindia','canadaeast','francesouth','norwaywest','switzerlandwest','ukwest','uaecentral','brazilsoutheast')]
                        [string]
                        $Region,

                        [Parameter(Mandatory)]
                        [Alias("ResourceGroupId","ResourceGroupResourceId","RGId","RGResourceId","RGName","ResourceGroupName")]
                        [ValidateNotNullOrEmpty()]
                        [string]
                        $ResourceGroup,
                        
                        [Parameter()]
                        [ValidateSet("CapacityReservation","Free","LACluster","PerGB2018","PerNode","Premium","Standalone","Standard")]
                        [ValidateNotNullOrEmpty()]
                        [string]
                        $Sku = "PerGB2018",

                        [Parameter(HelpMessage='Amount of time (in days) logs will be retained.')]
                        [ArgumentCompletions(30, 60, 90, 180, 365)]
                        [ValidateNotNullOrEmpty()]
                        [Alias("Reten")]
                        [int]
                        $Retention = 30,
                    
                        [Parameter()]
                        [ValidateNotNullOrEmpty()]
                        [string]
                        $ApiVersion = '2021-12-01-preview',
                    
                        [Parameter()]
                        [ValidateNotNullOrEmpty()]
                        [hashtable]
                        $Tags,

                        [Parameter()]
                        [ValidateNotNullOrEmpty()]
                        [ValidateSet("JSON/Raw","PSCustomObject","Hashtable")]
                        [Alias("OutType","OutObjectType","OutObjType","OT")]
                        [string]
                        $OutputType = "PSCustomObject",

                        [Parameter()]
                        [ValidateNotNullOrEmpty()]
                        [Alias("OutHttpResponse","OutResponseInfo","ResponseInfo","ReturnResponse","IncludeResponse","OutHttpInfo","IncludeHttpResponse","IncludeHttpInfo")]
                        [switch]
                        $IncludeResponseInfo,

                        [Parameter()]
                        [ValidateNotNullOrEmpty()]
                        [Alias("OutError","RtnErrResponse","RtnErrorResponse","OutErrResponse","OutErrorResponse","ReturnErrors","OuputErrors")]
                        [switch]
                        $ReturnErrorResponse
                    )
                #EndRegion

                #Region Dynamtic Parameters
                    DynamicParam {
                        #Region Dynamtic Parameter Functions
                            function Get-DynamicParams {
                                [cmdletbinding()]
                                param (
                                    [Parameter(ValueFromPipeline)]
                                    [hashtable]
                                    $Params = $Script:Params
                                )
                                $DynParms = [System.Management.Automation.RuntimeDefinedParameterDictionary]@{}
                                foreach ($ParamKey in $Params.Keys){
                            
                                    $DynParam = [System.Management.Automation.RuntimeDefinedParameter]::new(
                                        $ParamKey,
                                        $Params.$ParamKey.Type,
                                        $Params.$ParamKey.Attributes
                                    )
                            
                                    $DynParms.$ParamKey = $DynParam
                                }
                                Return $DynParms
                            }
                            function Add-DynamicParam {
                                [cmdletbinding()]
                                param (
                                    [Parameter(DontShow )][hashtable]$Script:Params = $Script:Params ?? @{},
                                    [Parameter(Mandatory)][String]   $Name,
                                    [Parameter(Mandatory)][type]     $Type,
                                    [Parameter(Mandatory)]
                                    [System.Management.Automation.Internal.CmdletMetadataAttribute[]]$Attributes
                                )
                                $Script:Params.$Name = @{Type=$Type;Attributes=$Attributes}
                            }
                            $Params = @{}
                        #EndRegion

                        #Region Define Conditional (Dynamic) Parameters
                            if(!$ResourceGroup -or $ResourceGroup -match "^[^/]*$"){
                                $Params.SubscriptionId = @{
                                    Type          = [guid]
                                    Attributes    = @(
                                        [Parameter]@{Mandatory=$True},
                                        [ValidateNotNullOrEmpty]@{},
                                        [Alias][string[]]("Sub","SubId","Subscription")
                                    )
                                } 
                            }
                        #EndRegion

                        #Create Dynamic Parameter Dictionary and Return Params
                        Return Get-DynamicParams $Params
                    }
                #EndRegion

                #Region Begin Block (Define Script Variables)
                    Begin {
                        $SubscriptionId = $PSBoundParameters.SubscriptionId
                        $RGId           = $SubscriptionId ? "/subscriptions/$SubscriptionId/resourcegroups/$ResourceGroup/" : $ResourceGroup 
                        $LaResourceId   = "$RGId/providers/Microsoft.OperationalInsights/workspaces/$Name"
                        $SubId          = $RGId -split("/") | Select-Object -Index 2
                        $ErrorMessage   = $null
                    }
                #EndRegion

                #Region Process Block (Function Body)
                    Process {    
                        try {
                            #Region HTTP Request to Create Log Analytics Workspace
                                $LaWParams = @{
                                    Method      = 'PUT'
                                    Uri         = "https://management.azure.com$LaResourceId`?api-version=$ApiVersion"
                                    Headers     = @{Authorization = "Bearer $AzureToken"}
                                    ContentType = "application/json"
                                    Body = @{
                                        location   = "$Region"
                                        tags       = $Tags
                                        properties = @{
                                            retentionInDays = "$Retention"
                                            sku             = @{
                                                name     = $Sku
                                                features = @{
                                                    searchVersion = 1
                                                }
                                            }
                                        }
                                    } | ConvertTo-Json -Depth 3
                                }
                                $LaWResponse = Invoke-WebRequest @LaWParams -SkipHttpErrorCheck
                            #EndRegion
            
                            #Region Set Return Variables
                                #Convert Response Content to Hashtable to add Http Response Params
                                $Return = ($LaWResponse.Content | ConvertFrom-Json -AsHashtable -EA SilentlyContinue) ?? @{}
            
                                #Region Set Error Message 
                                    if ($LaWResponse.StatusCode -notin (200,201,202) -and !$ReturnErrorResponse){
                                        $ErrorMessage = "[New-LogAnalyticsWorkspace] In Response to HTTP Request to Create Workspace a status code was returned that did not indicate Success: [$($LaWResponse.StatusCode)-$($LaWResponse.StatusDescription)] $($Return.error.message ?? $LaWResponse.Content)"
                                    }
                                #EndRegion
            
                                #Region Add Parameters to hashtable (IncludeResponseInfo Switch)
                                    if($IncludeResponseInfo){
                                        #Add Response Params to Hashtable
                                        $Return.HttpResponse  = @{
                                            StatusCode        = $LaWResponse.StatusCode
                                            StatusDescription = $LaWResponse.StatusDescription
                                            RawContent        = $LaWResponse.RawContent
                                            Content           = $LaWResponse.Content
                                        }
            
                                        #HTTP Request Failed Add Error Params to Hashtable (StatusCode != 200,201,202)
                                        if ($LaWResponse.StatusCode -notin (200,201,202) -and !$Return.error){        
                                            $Return.error = @{
                                                message = "A Status Code was returned that did not indicate success"
                                                code    = "NullResponseCode"
                                            }           
                                        }
                                    }
                                #EndRegion
                            #EndRegion            
                        }
                        catch{
                            $Command = $_.InvocationInfo.MyCommand.Name
                            $LineNum = $_.InvocationInfo.ScriptLineNumber
                            $ErrorMessage = "[New-LogAnalyticsWorkspace][$SubId] A Terminating Error Occurred: [$Command][Line $LineNum] $($_.ToString())"
                        }
                        
                    }
                #EndRegion

                #Region End Block (Return Output)
                    End {
                        #Region Ouput Error
                            if($ErrorMessage){
                                #Write non-terminating error if caught and prepend function specific message
                                return Write-Error -Message $ErrorMessage
                            }
                        #EndRegion
        
                        #Region OutputType: PSCustomObject
                            elseif($OutputType -eq "PSCustomObject"){
                                #Convert Hashtable back to PSCustomObject and Return
                                return $Return | ConvertTo-Json | ConvertFrom-Json
                            }
                        #EndRegion
        
                        #Region OutputType: Hashtable
                            elseif($OutputType -eq "Hashtable"){
                                #Return hashtable
                                return $Return
                            }
                        #EndRegion
        
                        #Region OutputType: JSON/Raw
                            elseif($OutputType -eq "JSON/Raw"){
                                #Return unprocessed Webrequest Content Parameter
                                return $LaWResponse.Content
                            }
                        #EndRegion
                    }
                #EndRegion
            }
            $New_LogAnalyticsWorkspace = "function New-LogAnalyticsWorkspace {${Function:New-LogAnalyticsWorkspace}}"
        #EndRegion
    #EndRegion

    #Region Predeployment
        #Set Verbose
        $VerbosePreference = if($Request.Body.Verbose){'Continue'}else{'SilentlyContinue'}

        #Set Debug
        $DebugPreference   = if($Request.Body.Debug  ){'Continue'}else{'SilentlyContinue'}

        #Start Tracking Elapsed Time
        $ScriptStartTime = Get-Date

        #Set Guid Var
        $guid = New-Guid

        #Set Transcript Vars
        $TranscriptFileName = "Transcript_$guid.txt"
        $TranscriptFilePath = "C:\home\site\wwwroot\$TranscriptFileName"

        #Capture Host Console Output
        Start-Transcript -Path $TranscriptFilePath -UseMinimalHeader

        #Set AzContext Var
        $MainAzContext = Get-AzContext -ErrorAction SilentlyContinue

        #Clear AzContext for Loop
        Clear-AzContext -Force -ErrorAction SilentlyContinue
    #EndRegion
        
    #Region Deployment Loop
        #Iterate through Tenants 
        $Results = $Request.Body.Tenants | Foreach-Object -ThrottleLimit 100 -Parallel {
            $DeploymentResults = @{}
            $DeploymentResults.Errors = @()
            try {
                #Region Import Loop Functions 
                    Invoke-Expression $Using:ConvertFrom_JWTtoken
                    Invoke-Expression $Using:Get_PartnerMsToken
                    Invoke-Expression $Using:Invoke_VertexAuthProxy
                    Invoke-Expression $Using:Wait_ForTest
                    Invoke-Expression $Using:Test_Guid
                    Invoke-Expression $Using:Get_PacAzRegions
                    Invoke-Expression $Using:Get_AzRegions
                    Invoke-Expression $Using:New_Exception
                    Invoke-Expression $Using:New_Error
                    Invoke-Expression $Using:New_LogAnalyticsWorkspace

                   Import-Module -Name 'C:\home\site\wwwroot\Modules\Az.Accounts' -Force -ErrorAction SilentlyContinue
                #EndRegion

                #Region Parameters
                    $Request        = $Using:Request
                    $Tenant         = $_

                    $TenantId       = $Tenant.TenantId  
                    $Region         = $Tenant.Region
                    $AzSubId        = $Tenant.SubscriptionId       
                    $VertexEndpoint = $Request.Body.VertexEndpoint
                    $VertexApiUser  = $Request.Body.VertexApiUser 
                    $VertexApiKey   = $Request.Body.VertexApiKey
                    $VertexApiToken = $Request.Body.VertexApiToken
                    
                    $RDeploy       = $Request.Body.Deploy
                    $Deploy        = @{
                        SecurityDefaults  = if($RDeploy.SecurityDefaults  -ne $null){$RDeploy.SecurityDefaults }else{$true}
                        VMPolicy          = if($RDeploy.VMPolicy          -ne $null){$RDeploy.VMPolicy         }else{$true}
                        RGRegionPolicy    = if($RDeploy.RGRegionPolicy    -ne $null){$RDeploy.RGRegionPolicy   }else{$true}
                        AuthPolicy        = if($RDeploy.AuthPolicy        -ne $null){$RDeploy.AuthPolicy       }else{$true}
                        ResourceGroup     = if($RDeploy.ResourceGroup     -ne $null){$RDeploy.ResourceGroup    }else{$true}
                        LAWorkspace       = if($RDeploy.LAWorkspace       -ne $null){$RDeploy.LAWorkspace      }else{$true}
                        AzAdDiagSettings  = if($RDeploy.AzAdDiagSettings  -ne $null){$RDeploy.AzAdDiagSettings }else{$true}
                        AzSubDiagSettings = if($RDeploy.AzSubDiagSettings -ne $null){$RDeploy.AzSubDiagSettings}else{$true}
                    }

                    #Set Verbose & Debug
                    $VerbosePreference = if($Request.Body.Verbose){'Continue'}else{'SilentlyContinue'}
                    $DebugPreference   = if($Request.Body.Debug  ){'Continue'}else{'SilentlyContinue'}
                                
                    Write-Host "[Thread $TenantId] Deployment Started"
                #EndRegion
                
                #Region Variables                  
                    $AzManUrl          = "https://management.azure.com"
                    $RGName            = "TDS-Solutions"
                    $WorkspaceName     = "TDS-SolutionLogs"
                    $Application       = "SMBFL"
                    $Version           = "1.0.0"                
                    $RegionPolicyName  = "Region Block for Resource Deployment"
                    $PolicyDefProvider = "Microsoft.Authorization/policyDefinitions"
                    $PolAssignProvider = "Microsoft.Authorization/policyAssignments"
                    
                    $ResourceProviders = @(
                        "Microsoft.OperationalInsights",
                        "Microsoft.Authorization",
                        "Microsoft.Insights"
                    )
                    
                    $PacAzRegionInfo   = Get-PacAzRegions -PacRegion $Region
                    $AzureRegion       = $PacAzRegionInfo.ClosestRegion

                    $Status = @{
                        Success = "Success"
                        Failed  = "Failed"
                        Skipped = "Skipped"
                    }            
                #EndRegion

                #Region Shallow Validation
                    if (!$TenantId) { throw "Tenant Id is empty" }
                    if (!$Region) { throw "Region is empty" }
                    if (!($TenantId | Test-Guid)) { throw "Tenant ID is not a proper GUID" }
                    if ($Region.Length -gt 10) { throw "Region code must be 10 characters or less" }
                #EndRegion

                #Region Get Tokens and Connect Modules
                    #Region Get Tokens
                        $AzTokenParams = @{
                            tenantId       = $TenantId
                            region         = $Region
                            Resource       = "https://management.azure.com"
                            VertexEndpoint = $VertexEndpoint
                            ApiKey         = $VertexApiKey
                            ApiUser        = $VertexApiUser
                            ApiToken       = $VertexApiToken
                        }
                        $AzToken = Get-PartnerMsToken @AzTokenParams -ErrorAction Stop

                        $GraphTokenParams = @{
                            tenantId       = $TenantId
                            region         = $Region
                            Resource       = "https://graph.microsoft.com"
                            VertexEndpoint = $VertexEndpoint
                            ApiKey         = $VertexApiKey
                            ApiUser        = $VertexApiUser
                            ApiToken       = $VertexApiToken
                        }
                        $MSGraphToken = Get-PartnerMsToken @GraphTokenParams -ErrorAction Stop

                        $AzureId = ($AzToken | ConvertFrom-JWTtoken).appid
                    #EndRegion

                    #Region Create Http Request Header Variables
                        $MsGraphHeaders = @{
                            Authorization  = "Bearer $MsGraphToken"
                            "Content-Type" = "application/json"
                        }

                        $AzHeaders   = @{
                            Authorization  = "Bearer $AzToken"
                            "Content-Type" = "application/json"
                        }
                    #EndRegion

                    #Region Connect Azure and Graph Modules
                        $null = Disable-AzContextAutosave

                        $Subscriptions  = (Invoke-RestMethod "$AzManUrl/subscriptions?api-version=2020-01-01" -Headers $AzHeaders).value | Where-Object {$_.state -eq 'Enabled'}
                        $DeploymentResults.AzureSubCount = $Subscriptions.Count
                        $DeploymentResults.AzureSubscriptions = ($Subscriptions.SubscriptionId) -join ","
                        $SubscriptionId = $AzSubId ?? ($Subscriptions | Select-Object -First 1).subscriptionId

                        Write-Host "[Thread $TenantId] Connecting to Tenant: $TenantId - AccountId: $AzureId - Subscription: $SubscriptionId"

                        $ConnectAzParams = @{
                            ContextName  = "$(New-Guid) - $TenantId"
                            Tenant       = $TenantId
                            AccountId    = $AzureId
                            AccessToken  = $AzToken
                            MicrosoftGraphAccessToken = $MSGraphToken
                        }
                        if($SubscriptionId){$ConnectAzParams.Subscription = $SubscriptionId}
                        $AzContext      = (Connect-AzAccount @ConnectAzParams -SkipContextPopulation -Scope Process -Force).Context

                        if (!$AzContext) { throw "AzContext not found for Tenant: $TenantId" }

                        Write-Verbose "[Thread $TenantId] Connect-AzAccount completed without error"
                        Write-Verbose "[Thread $TenantId] AzContext.Name: $($AzContext.Name)" 
                        Write-Verbose "[Thread $TenantId] AzContext.Subscription: $($AzContext.Subscription)"
                        Write-Verbose "[Thread $TenantId] AzContext.Tenant: $($AzContext.Tenant)"
                        Write-Verbose "[Thread $TenantId] AzContext.Account: $($AzContext.Account)"      

                        $null = Connect-MgGraph -AccessToken $MSGraphToken
                    #EndRegion
                #EndRegion

                #Region Register Resource providers
                    if($SubscriptionId){
                        foreach($Provider in $ResourceProviders){
                            $ProviderUri = "$AzManUrl/subscriptions/$SubscriptionId/providers/$Provider"
                            $ProApiVer   = '?api-version=2021-04-01'
                            $RegisterResponse = Invoke-WebRequest -Method Post -Uri "$ProviderUri/register$ProApiVer" -Headers $AzHeaders -SkipHttpErrorCheck

                            if($RegisterResponse.StatusCode -eq 200){
                                $Registered = Wait-ForTest {Invoke-RestMethod "$ProviderUri$ProApiVer" -He $AzHeaders} {$_.registrationState -eq 'Registered'} 60 -IgE -Bool

                                if(!$Registered){
                                    Write-Error -Message "[Thread $TenantId] Unable to Confirm Resource Provider [$Provider] in 'Registered' State After Successful Register POST Request"
                                    $DeploymentResults.Errors += "[Thread $TenantId] Unable to Confirm Resource Provider [$Provider] in 'Registered' State After Successful Register POST Request"
                                }
                            }
                            else{
                                Write-Error -Message "[Thread $TenantId] While Registering $Provider a status code was returned that did not indicate success: $($RegisterResponse.StatusCode) $($RegisterResponse.Content)"
                                $DeploymentResults.Errors += "[Thread $TenantId] While Registering $Provider a status code was returned that did not indicate success: $($RegisterResponse.StatusCode) $($RegisterResponse.Content)"
                            }
                        }
                    }
                #EndRegion
                
                #Region Deployments
                    #Region Security Defaults / MFA
                        $SecurityDefaults = @{}
                        $IsSecurityDefaultsEnabled = $null
                        if ($Deploy.SecurityDefaults){
                            try {

                                # Check current status of Security Defaults
                                $SecurityDefaultsUrl = "https://graph.microsoft.com/v1.0/policies/identitySecurityDefaultsEnforcementPolicy"
                                try {
                                    # Get the current security defaults status:
                                    $SecurityDefaultsResponse = Invoke-RestMethod -Method Get -Uri $SecurityDefaultsUrl -Headers $MsGraphHeaders
                                    $IsSecurityDefaultsEnabled = $SecurityDefaultsResponse.isEnabled
                                } catch {
                                    throw "An error occurred when retrieving SecurityDefaults. $($_ | Out-String)"
                                }

                                # Check if conditional access policies exist
                                $ConditionalAccessUrl = "https://graph.microsoft.com/v1.0/identity/conditionalAccess/policies"
                                $PolicyCount = $null
                                try {
                                    # Check for existing Conditional Access policies:
                                    $ConditionalAccessPolicies = Invoke-RestMethod -Method Get -Uri $ConditionalAccessUrl -Headers $MsGraphHeaders
                                    $PolicyCount = $ConditionalAccessPolicies.value.Count
                                } catch {
                                    throw "An error occurred when retrieving Conditional Access Policies. $($_ | Out-String)"
                                }

                                # Set current status in output hashtable
                                $SecurityDefaults = @{
                                    IsEnabled = @{
                                        Before = $IsSecurityDefaultsEnabled
                                    }
                                    ConditionalAccessPolicyCount = $PolicyCount
                                }
                                
                                # Review customer configuration and enable Security Defaults
                                if ($IsSecurityDefaultsEnabled) {
                                    $SecurityDefaults.IsEnabled.After = $true
                                    $SecurityDefaults.Status = $Status.Skipped
                                    $SecurityDefaults.StatusMessage = "Security Defaults are already enabled"
                                } elseif ($PolicyCount -gt 0) {
                                    $SecurityDefaults.IsEnabled.After = $false
                                    $SecurityDefaults.Status = $Status.Skipped
                                    $SecurityDefaults.StatusMessage = "Conditional Access Policies exist"                         
                                } else {
                                    # Define the request body for enabling security defaults
                                    $securityDefaultsBody = @{
                                        "isEnabled" = $true
                                    } | ConvertTo-Json -Depth 2
                                    # Enable Security Defaults
                                    try {
                                        Invoke-RestMethod -Method Patch -Uri $securityDefaultsUrl -Headers $MsGraphHeaders -Body $securityDefaultsBody
                                        $SecurityDefaults.IsEnabled.After = $true
                                        $SecurityDefaults.Status = $Status.Success
                                        $SecurityDefaults.StatusMessage = "Security Defaults enabled"
                                    } catch {
                                        throw "An error occurred when enabling Security Defaults: $($_ | Out-String)"
                                    }
                                }
                                
                            } catch {
                                $SecurityDefaults = @{
                                    Status = $Status.Failed
                                    StatusMessage = $($_ | Out-String)
                                }
                            }

                        } else {
                            $SecurityDefaults = @{
                                Status        = $Status.Skipped
                                StatusMessage = 'Deployment of Security Defaults Skipped Because Deploy bool was Set to False'
                            }
                        }
                        $DeploymentResults.SecurityDefaults = $SecurityDefaults
                    #EndRegion
                    
                    #Region Authentication Settings
                        $AuthPolicy = @{}
                        if($Deploy.AuthPolicy){
                            #Region Retrieve Customer Info and Generate Banned Password Terms list
                                #Retrieve Customer Info From Vertex Api
                                $CustomerInfoParams = @{
                                    Method  = 'GET'
                                    Uri     = "$vertexEndpoint/gc-api-microsoft/v1/customer/$region/$TenantId"
                                    Headers = @{
                                        ApiUser = $VertexApiUser
                                        ApiKey  = $VertexApiKey
                                    }
                                }
                                $CustomerInfo = Invoke-RestMethod @CustomerInfoParams

                                #Generate Banned Password Terms List
                                $BannedList = ((
                                    $CustomerInfo.companyProfile.companyName         + " " +
                                    $CustomerInfo.companyProfile.address.city        + " " +
                                    $CustomerInfo.companyProfile.address.postalCode  + " " +
                                    $CustomerInfo.companyProfile.address.phoneNumber + " " +
                                    $CustomerInfo.companyProfile.address.addressLine1
                                ).Split(" ") | where-Object{$_ -and $_.length -ge 4 -and $_.length -le 16}) -join "`t"
                            #EndRegion

                            #Region Set Password Rule Settings
                                #Retrieve Settings Templates and Find Password Rule Template
                                $SettingTemplates = (Invoke-RestMethod -Method Get -Uri "https://graph.microsoft.com/v1.0/groupSettingTemplates" -Headers $MSGraphHeaders).value
                                $PasswordTemplate = $SettingTemplates | Where-Object{$_.displayName -eq "Password Rule Settings"}
                                
                                #Retrieve Existing Password Rule Settings if they Exist
                                $Settings         = (Invoke-RestMethod -Method Get -Uri "https://graph.microsoft.com/v1.0/groupSettings" -Headers $MSGraphHeaders).value
                                $ExistingPassRule = $Settings | Where-Object{$_.displayName -eq "Password Rule Settings"}

                                #Format and Invoke Http Request to Set Password Rule
                                $AuthPolicyParams =  @{
                                    Method      = if($ExistingPassRule){'PATCH'}else{'POST'}
                                    Uri         =  "https://graph.microsoft.com/v1.0/groupSettings/$($ExistingPassRule.id)"
                                    Headers     = $MSGraphHeaders
                                    ContentType = "application/json"
                                    Body        = @{
                                        templateId = $PasswordTemplate.id
                                        values = @(
                                            @{
                                                name = "BannedPasswordCheckOnPremisesMode"
                                                value = "Audit"
                                            },
                                            @{
                                                name = "EnableBannedPasswordCheckOnPremises"
                                                value = "true"
                                            },
                                            @{
                                                name = "EnableBannedPasswordCheck"
                                                value = "true"
                                            },
                                            @{
                                                name = "LockoutDurationInSeconds"
                                                value = "900"
                                            },
                                            @{
                                                name = "LockoutThreshold"
                                                value = "10"
                                            },
                                            @{
                                                name = "BannedPasswordList"
                                                value = $BannedList
                                            }
                                        )
                                    }| ConvertTo-Json -Depth 3
                                }
                                $AuthPolicyResponse = Invoke-WebRequest @AuthPolicyParams -SkipHttpErrorCheck
                            #EndRegion

                            if($AuthPolicyResponse.StatusCode -eq 204){
                                $AuthPolicy.Status        = $Status.Success
                                $AuthPolicy.StatusMessage = 'Successfully Deployed Password Rule'
                            }else{
                                $AuthPolicy.Status        = $Status.Failed
                                $AuthPolicy.StatusMessage = "While Deploying Password Policy a status code was returned that did not indicate success: $($AuthPolicyResponse.Content)"
                            }
                        }
                        else{
                            $AuthPolicy.Status        = $Status.Skipped
                            $AuthPolicy.StatusMessage = 'Deployment of Password Authication Policy Skipped Because Deploy bool was Set to False'
                        }
                        #Set Deployment Results
                        $DeploymentResults.AuthPolicy = $AuthPolicy
                    #EndRegion

                    #Region Restrict Virtual Machine Creation
                        $VMPolicy = @{
                            Subscriptions = @()
                        }                    
                        if ($Deploy.VMPolicy -and $Subscriptions) {
                            try {      
                                #Region VM Policy Pre Loop Data
                                    #High CPU VM Information
                                    $High_CPU_VM_Array = @('standard_f72s_v2','standard_f64s_v2','standard_f48s_v2','standard_f32s_v2','standard_f16s_v2','standard_f2s_v2','standard_f4s_v2','standard_f8s_v2standard_f72s_v2','standard_f64s_v2','standard_f48s_v2','standard_f32s_v2','standard_f16s_v2','standard_f2s_v2','standard_f4s_v2','standard_f8s_v2');
                                    #High GPU VM Information
                                    $High_GPU_VM_Array = @('standard_b2s', 'standard_d2s_v3', 'standard_nv4as_v4','standard_nv8as_v4','standard_nc6','standard_nc6_promo','standard_nv24','standard_nd96amsr_a100_v4','standard_nd96asr_v4','standard_nc96ads_a100_v4','standard_nc24','standard_nc24_promo','standard_nc24ads_a100_v4','standard_nc24r','standard_nc24r_promo','standard_nc24rs_v2','standard_nc24rs_v3','standard_nc24s_v2','standard_nc24s_v3','standard_nc12','standard_nc12_promo','standard_nc12s_v2','standard_nc12s_v3','standard_nc16ads_a10_v4','standard_nc16as_t4_v3','standard_nv12','standard_nv12_promo','standard_nv24_promo','standard_nc32ads_a10_v4','standard_nc48ads_a100_v4','standard_nc4as_t4_v3','standard_nc64as_t4_v3','standard_nc6s_v2','standard_nc6s_v3','standard_nc8ads_a10_v4','standard_nc8as_t4_v3','standard_nd12s','standard_nd24rs','standard_nd24s','standard_nd40rs_v2','standard_nd40s_v3','standard_nd6s','standard_np10s','standard_np20s','standard_np40s','standard_nv12ads_a10_v5','standard_nv12s_v2','standard_nv12s_v3','standard_nv16as_v4','standard_nv18ads_a10_v5','standard_nv24s_v2','standard_nv24s_v3','standard_nv32as_v4','standard_nv36adms_a10_v5','standard_nv36ads_a10_v5','standard_nv48s_v3','standard_nv6','standard_nv6_promo','standard_nv6ads_a10_v5','standard_nv6s_v2','standard_nv72ads_a10_v5');
                                    #High Disk VM Information
                                    $High_Disk_VM_Array = @('standard_l16as_v3','standard_l16s','standard_l16s_v2','standard_l16s_v3','standard_l32as_v3','standard_l32s','standard_l32s_v2','standard_l32s_v3','standard_l48s_v2','standard_l48as_v3','standard_l48s_v3','standard_l4s','standard_l64as_v3','standard_l64s_v2','standard_l64s_v3','standard_l80as_v3','standard_l80s_v2','standard_l80s_v3','standard_l8as_v3','standard_l8s','standard_l8s_v2','standard_l8s_v3');
                                    $RestrictVMPolicyMetadata = @{
                                        category = "Click2Run"
                                        version = $Version
                                        application = $Application
                                    } | ConvertTo-Json
                                    $RestrictVMPolicy = Invoke-WebRequest -uri 'https://raw.githubusercontent.com/Ard84/apcv1/main/denySKU.json'
                                #EndRegion
                                 
                                #Region Subscription loop
                                    foreach ($SubId in $Subscriptions.SubscriptionId){
                                        #Region Loop Variables
                                            $HighCPUVM = @{
                                                HasVM         = $false
                                                CustomerVMs   = @()
                                                PolicyCreated = $false
                                            }
                                            $HighGPUVM = @{
                                                HasVM         = $false
                                                CustomerVMs   = @()
                                                PolicyCreated = $false
                                            }
                                            $HighDiskVM = @{
                                                HasVM         = $false
                                                CustomerVMs   = @()
                                                PolicyCreated = $false
                                            }
                                            $SubscriptionResults = @{
                                                SubscriptionId = $SubId
                                            }
                                        #EndRegion
                                        try{
                                            #Region Get Existing VM Information
                                                try{
                                                    #Get all VMS in the subscription
                                                    $uri = "$AzManUrl/subscriptions/$SubId/providers/Microsoft.Compute/virtualMachines?api-version=2021-07-01"
                                                    $VMResponse = Invoke-RestMethod -Uri $uri -Headers $AzHeaders -Method Get
                                                    $VMS = $VMResponse.value

                                                    #Resolve VM Sizes to VM Types (CPU, GPU, Disk)
                                                    foreach ($VM in $VMS) {
                                                        $VMSize = $VM.properties.hardwareProfile.VMSize.ToLower()
                                                        if ($VMSize -in $High_CPU_VM_Array.ToLower()) {
                                                            $HighCPUVM.HasVM = $true
                                                            if ($VMSize -notin $HighCPUVM.CustomerVMs) { 
                                                                $HighCPUVM.CustomerVMs += $VMSize
                                                            }
                                                        } 
                                                        if ($VMSize -in $High_GPU_VM_Array.ToLower()) {
                                                            $HighGPUVM.HasVM = $true
                                                            if ($VMSize -notin $HighGPUVM.CustomerVMs) { 
                                                                $HighGPUVM.CustomerVMs += $VMSize
                                                            }
                                                        } 
                                                        if ($VMSize -in $High_Disk_VM_Array.ToLower()) {
                                                            $HighDiskVM.HasVM = $true
                                                            if ($VMSize -notin $HighDiskVM.CustomerVMs) { 
                                                                $HighDiskVM.CustomerVMs += $VMSize
                                                            }
                                                        }
                                                    }
    
                                                } 
                                                catch {
                                                    New-Error -ErrorRecord $_ -Message 'An Error Occurred While Retreving Virtual Machine information - ' -Prepend -PreserveInvocation -Throw
                                                }
                                            #EndRegion
                                    
                                            #Region Create VM policies
                                                #Region VM Policy Definition
                                                    $RestrictVMPolicyDefinition = New-AzPolicyDefinition -Name "Deny virtual machine size SKUs" `
                                                    -SubscriptionId $SubId `
                                                    -Policy $RestrictVMPolicy.Content `
                                                    -Metadata $RestrictVMPolicyMetadata `
                                                    -AzContext $AzContext `
                                                    -ErrorAction Stop
                                                #EndRegion

                                                #Region Create High CPU policy
                                                    if (!$HighCPUVM.HasVM) {
                                                        try {                                                  
                                                            $PolicyAssignment = New-AzPolicyAssignment -Name "Restrict High CPU VM creation" `
                                                                -DisplayName "Restrict creation of High CPU VMs" `
                                                                -Scope "/subscriptions/$SubId" `
                                                                -PolicyDefinition $RestrictVMPolicyDefinition `
                                                                -listOfDeniedSkus $High_CPU_VM_Array `
                                                                -AzContext $AzContext `
                                                                -ErrorAction Stop
                                                                $HighCPUVM.PolicyCreated = $true
                                                        } catch {
                                                            $ErrorMessage = "An Error Occurred While Creating High CPU VM Policy Assignment in [$SubId] - "
                                                            New-Error -ErrorRecord $_ -Message $ErrorMessage -Prepend -PreserveInvocationInfo -Throw
                                                        }
                                                    }
                                                #EndRegion
    
                                                #Region Create High GPU policy
                                                    if (!$HighGPUVM.HasVM) {
                                                        try {                                                  
                                                            $PolicyAssignment = New-AzPolicyAssignment -Name "Restrict High GPU VM creation" `
                                                                -DisplayName "Restrict creation of High GPU VMs" `
                                                                -Scope "/subscriptions/$SubId" `
                                                                -PolicyDefinition $RestrictVMPolicyDefinition `
                                                                -listOfDeniedSkus $High_GPU_VM_Array `
                                                                -AzContext $AzContext `
                                                                -ErrorAction Stop
                                                                $HighGPUVM.PolicyCreated = $true
                                                        } catch{
                                                            $ErrorMessage = "An Error Occurred While Creating High GPU VM Policy Assignment in [$SubId] - "
                                                            New-Error -ErrorRecord $_ -Message $ErrorMessage -Prepend -PreserveInvocationInfo -Throw
                                                        }
                                                    }
                                                #EndRegion
    
                                                #Region Create High Disk policy
                                                    if (!$HighDiskVM.HasVM) {
                                                        try {                                                  
                                                            $PolicyAssignment = New-AzPolicyAssignment -Name "Restrict High Disk VM creation" `
                                                                -DisplayName "Restrict creation of High Disk VMs" `
                                                                -Scope "/subscriptions/$SubId" `
                                                                -PolicyDefinition $RestrictVMPolicyDefinition `
                                                                -listOfDeniedSkus $High_Disk_VM_Array `
                                                                -AzContext $AzContext `
                                                                -ErrorAction Stop
                                                                $HighDiskVM.PolicyCreated = $true
                                                        } catch {
                                                            $ErrorMessage = "An Error Occurred While creating High Disk VM Policy Assignment in [$SubId] - " 
                                                            New-Error -ErrorRecord $_ -Message $ErrorMessage -Prepend -PreserveInvocationInfo -Throw
                                                        }
                                                    }
                                                #EndRegion 
                                            #EndRegion

                                            $SubscriptionResults.Status        = $Status.Success
                                            $SubscriptionResults.StatusMessage = "All VM Policies Were Created Successfully"
                                        }
                                        catch{
                                            $SubscriptionResults.Status        = $Status.Failed
                                            $SubscriptionResults.StatusMessage = "During [$SubId] VmPolicy Deployment Loop a Terminating Error Halted Execution: $($_ | Out-String)"
                                        }

                                        $HighCPUVM.CustomerVMs  = $($HighCPUVM.CustomerVMs)  ?? "None"
                                        $HighGPUVM.CustomerVMs  = $($HighGPUVM.CustomerVMs)  ?? "None"
                                        $HighDiskVM.CustomerVMs = $($HighDiskVM.CustomerVMs) ?? "None"
 
                                        $SubscriptionResults.VMTypes = @{
                                            HighCPUVM  = $HighCPUVM
                                            HighGPUVM  = $HighGPUVM
                                            HighDiskVM = $HighDiskVM
                                        }

                                        $VMPolicy.Subscriptions += $SubscriptionResults
                                    }
                                #EndRegion
                                
                                #Region VMPolicy Deployment Status
                                    if ($Status.Failed -notin $VMPolicy.Subscriptions.Status){
                                        $VMPolicy.Status        = $Status.Success 
                                        $VMPolicy.StatusMessage = 'Successfully Completed VM Policy Process for all subscriptions'
                                    }
                                    else{
                                        $VMPolicy.Status        = $Status.Failed
                                        $VMPolicy.StatusMessage = 'One or more of the Subscriptions that the VM Policy was Deployed to returned a terminating error that halted loop execution. Check subscriptions array for more details.'
                                    }
                                #EndRegion
                            } catch {
                                $VMPolicy.Status        = $Status.Failed
                                $VMPolicy.StatusMessage = $_ | Out-String
                            }
                            
                        } else {
                            $VMPolicy.Status        = $Status.Skipped
                            $VMPolicy.StatusMessage = "Deployment of VM Policy Skipped Because $($Subscriptions ?'Deploy bool was Set to False':'No Enabled Azure Subscriptions were Found')"
                        }
                        #Set Deployment Results
                        $DeploymentResults.VMPolicy = $VMPolicy
                    #EndRegion

                    #Region Restrict Resource Regions
                        $RGPolicy = @{}
                        $RGPolicy.Subscriptions = @()       
                        if($Deploy.RGRegionPolicy -and $Subscriptions){
                            foreach ($SubId in $Subscriptions.SubscriptionId){
                                $SubscriptionResults = @{}
                                $SubscriptionResults.SubscriptionId = $SubId

                                $AzRegionsParams = @{
                                    SubscriptionId    = $SubId
                                    AzureToken        = $AzToken
                                    GeographyGroup    = $PacAzRegionInfo.geographyGroup
                                    ProviderNamespace = 'Microsoft.Resources'
                                    ResourceType      = 'resourceGroups'
                                }
                                $Regions          = Get-AzRegions @AzRegionsParams
                                $AllowedLocations = $Regions.name

                                $AL_PolicyDefParams = @{
                                    Method  = 'PUT'
                                    Uri     = "$AzManUrl/subscriptions/$SubId/providers/$PolicyDefProvider/$RegionPolicyName`?api-version=2021-06-01"
                                    Headers = $AzHeaders
                                    Body    = @{
                                        properties = @{
                                            displayName = $RegionPolicyName
                                            policyType  = "Custom"
                                            mode        = "All"
                                            description = "This policy enables you to restrict the locations your organization can specify when deploying resources."
                                            metadata    = @{"TDS-SMBFraudLite" = "Solution"}
                                            parameters  = @{
                                                allowedLocations = @{
                                                    type     = "array"
                                                    metadata = @{
                                                        description = "The list of locations that can be specified when deploying resources"
                                                        strongType  = "location"
                                                        displayName = "Allowed locations"
                                                    }
                                                }
                                            }
                                            policyRule  = @{
                                                if   = @{
                                                    not = @{
                                                        field = "location"
                                                        in    = "[parameters('allowedLocations')]"
                                                    }
                                                }
                                                then = @{
                                                    effect = "deny"
                                                }
                                            }
                                        }
                                    } | ConvertTo-Json -Depth 4
                                }
                                $AL_PolicyDefinition = Invoke-RestMethod @AL_PolicyDefParams -SkipHttpErrorCheck

                                $AL_PolicyAsParams = @{
                                    Method  = "PUT"
                                    Uri     = "$AzManUrl/subscriptions/$SubId/providers/$PolAssignProvider/$RegionPolicyName`?api-version=2022-06-01"
                                    Headers = $AzHeaders
                                    Body    = @{
                                        properties = @{
                                            displayName           = 'Region Block for Resource Deployment'
                                            description           = "This policy will only allow deployment of resources in specific regions."
                                            policyDefinitionId    = $AL_PolicyDefinition.id
                                            enforcementMode       = if($Request.body.Debug){'DoNotEnforce'}else{'Default'}
                                            nonComplianceMessages = @(
                                                @{Message='Deploying Resource is not allowed in that Region. Please make sure you select an Allowed Location'}
                                            )
                                            parameters            = @{
                                                allowedLocations = @{
                                                    value = $AllowedLocations
                                                }
                                            }
                                        }
                                    } | ConvertTo-Json -Depth 4
                                }
                                $AL_PolicyAssignment = Invoke-WebRequest @AL_PolicyAsParams -SkipHttpErrorCheck

                                if($AL_PolicyAssignment.StatusCode -eq 201){
                                    $SubscriptionResults.Status        = $Status.Success
                                    $SubscriptionResults.StatusMessage = 'Successfully Deployed Region Policy'
                                }else{
                                    $SubscriptionResults.Status        = $Status.Failed
                                    $SubscriptionResults.StatusMessage = "While Deploying Region Policy a status code was returned that did not indicate success: $($AL_PolicyAssignment.StatusCode) $($AL_PolicyAssignment.Content)"
                                }

                                #Set Deployment Results
                                $RGPolicy.Subscriptions += $SubscriptionResults
                            }
                            if ($Status.Failed -notin $RGPolicy.Subscriptions.Status){
                                $RGPolicy.Status        = $Status.Success 
                                $RGPolicy.StatusMessage = 'Successfully Deployed Region Policy in all subscriptions'
                            }
                            else{
                                $RGPolicy.Status        = $Status.Failed
                                $RGPolicy.StatusMessage = 'One or more of the Subscriptions that the Region Policy was Deployed to returned a status code that did not indicate success. Check subscriptions array for more details.'
                            }
                        }
                        else {
                            $RGPolicy.Status        = $Status.Skipped
                            $RGPolicy.StatusMessage = "Deployment of Resource Region Policy Skipped Because $($Subscriptions ?'Deploy bool was Set to False':'No Enabled Azure Subscriptions were Found')"
                        }
                        #Set Deployment Results
                        $DeploymentResults.RGRegionPolicy = $RGPolicy
                    #EndRegion

                    #Region Create Resource Group
                        $ResourceGroup = @{}
                        if($Deploy.ResourceGroup -and $Subscriptions){
                            $RGParams = @{
                                Method      = 'PUT'
                                Uri         = "$AzManUrl/subscriptions/$SubscriptionId/resourcegroups/$RGName"+"?api-version=2021-04-01"
                                Headers     = $AzHeaders
                                ContentType = "application/json"
                                Body        = @{
                                    location = $AzureRegion
                                    tags     = @{
                                        "TDS-SMBFraudLite" = "Solution"
                                    }
                                } | ConvertTo-Json
                            }
                            $RGResponse = Invoke-WebRequest @RGParams -SkipHttpErrorCheck

                            if($RGResponse.StatusCode -in (200,201)){
                                $RG = Wait-ForTest -Cmd {Invoke-RestMethod $RGParams.Uri -Headers $AzHeaders} -?Obj {$_.properties.provisioningState -eq 'Succeeded'} -Max 60 -RO -IgE

                                if($RG){
                                    $ResourceGroup.Status        = $Status.Success
                                    $ResourceGroup.StatusMessage = 'Successfully Deployed Resource Group'
                                }
                                else{
                                    $ResourceGroup.Status        = $Status.Failed
                                    $ResourceGroup.StatusMessage = 'Unable to retrieve resource group info after successful deployment'
                                }
                            }else{
                                $ResourceGroup.Status        = $Status.Failed
                                $ResourceGroup.StatusMessage = "While Deploying Resource Group a status code was returned that did not indicate success: $($RGResponse.StatusCode) $($RGResponse.Content)"
                            }
        
                        }else{
                            $ResourceGroup.Status        = $Status.Skipped
                            $ResourceGroup.StatusMessage = "Deployment of Resource Group Skipped Because $($Subscriptions ?'Deploy bool was Set to False':'No Enabled Azure Subscriptions were Found')"
                        }

                        #Set Deployment Results
                        $DeploymentResults.ResourceGroup = $ResourceGroup
                    #EndRegion

                    #Region Create Log Analytics Workspace
                        $LaWorkspace = @{}
                        if($Deploy.LAWorkspace -and $RG -and $Subscriptions){
                            
                            $LaWResponse = New-LAWorkspace $WorkspaceName -Rgn centralus -Token $AzToken -ResourceGroup $RG.Id -Retention 90 -OutErrResponse -OutHttpResponse

                            if ($LaWResponse.HttpResponse.StatusCode -in (200,201,202)){
                                #Check LA Resource has been Created
                                $Uri = $AzManUrl+$LaWResponse.Id+"?api-version=2021-12-01-preview"
                                $LaW = Wait-ForTest {Invoke-RestMethod $Uri -He $AzHeaders} {$_.properties.provisioningState -eq 'Succeeded'} -MaxSec 60 -OutResult -IgErrors

                                if($LaW -ne $null){
                                    $LaWorkspace.Status        = $Status.Success
                                    $LaWorkspace.StatusMessage = 'Successfully Deployed Log Analytics Workspace'
                                }else{
                                    $LaWorkspace.Status        = $Status.Failed
                                    $LaWorkspace.StatusMessage = 'Unable to retrieve Log Analytics Workspace info after successful deployment'
                                }
                            }else{
                                $LaWorkspace.Status        = $Status.Failed
                                $LaWorkspace.StatusMessage = "While Deploying Log Analytics Workspace a status code was returned that did not indicate success: $($LaWResponse.HttpResponse.StatusCode) $($LaWResponse.HttpResponse.StatusDescription) $($LaWResponse.HttpResponse.Content)"
                            }
                        }else{
                            $LaWorkspace.Status        = $Status.Skipped
                            $LaWorkspace.StatusMessage = "Deployment of Log Analytics Workspace Skipped Because $($Subscriptions ?$($RG ?'Deploy bool was Set to False':'Log Analytics Workspace Was not Deployed'):'No Enabled Azure Subscriptions were Found')"
                        }
                        #Set Deployment Results
                        $DeploymentResults.LAWorkspace = $LaWorkspace
                    #EndRegion

                    #Region - Create Azure Active Directory Diagnostic Setting to Link AD Logs to Log Analytics
                        $AdDiagSettings = @{}

                        if ($Deploy.AzAdDiagSettings -and $LaW -and $Subscriptions){
                            $uri = "https://management.azure.com/providers/microsoft.aadiam/diagnosticSettings/$WorkspaceName" + "?api-version=2017-04-01-preview" 
                            $body = @{
                                properties = @{
                                    storageAccountId            = $null
                                    serviceBusRuleId            = $null
                                    workspaceId                 = $LaW.Id
                                    eventHubAuthorizationRuleId = $null
                                    eventHubName                = $null
                                    metrics                     = @()
                                    logs                        = @(
                                        @{ 
                                            category        = "AuditLogs"
                                            enabled         = $true
                                            retentionPolicy = @{ 
                                                enabled = $false 
                                                days    = 0 
                                            }
                                        },
                                        @{
                                            category        = "SignInLogs"
                                            enabled         = $true
                                            retentionPolicy = @{
                                                enabled = $false 
                                                days    = 0 
                                            }
                                        },
                                        @{
                                            category        = "NonInteractiveUserSignInLogs"
                                            enabled         = $true
                                            retentionPolicy = @{ 
                                                enabled = $false 
                                                days    = 0 
                                            }
                                        },
                                        @{
                                            category        = "ServicePrincipalSignInLogs"
                                            enabled         = $true
                                            retentionPolicy = @{ 
                                                enabled = $false 
                                                days    = 0 
                                            }
                                        },
                                        @{
                                            category        = "ManagedIdentitySignInLogs"
                                            enabled         = $true
                                            retentionPolicy = @{ 
                                                enabled = $false 
                                                days    = 0 
                                            }
                                        },
                                        @{
                                            category        = "ProvisioningLogs"
                                            enabled         = $true
                                            retentionPolicy = @{ 
                                                enabled = $false 
                                                days    = 0 
                                            }
                                        },
                                        @{
                                            category        = "ADFSSignInLogs"
                                            enabled         = $true
                                            retentionPolicy = @{ 
                                                enabled = $false 
                                                days    = 0 
                                            }
                                        },
                                        @{
                                            category        = "RiskyUsers"
                                            enabled         = $true
                                            retentionPolicy = @{ 
                                                enabled = $false 
                                                days    = 0 
                                            }
                                        },                    
                                        @{
                                            category        = "UserRiskEvents"
                                            enabled         = $true
                                            retentionPolicy = @{ 
                                                enabled = $false 
                                                days    = 0 
                                            }
                                        },
                                        @{
                                            category        = "NetworkAccessTrafficLogs"
                                            enabled         = $true
                                            retentionPolicy = @{ 
                                                enabled = $false 
                                                days    = 0 
                                            }
                                        },
                                        @{
                                            category        = "RiskyServicePrincipals"
                                            enabled         = $true
                                            retentionPolicy = @{ 
                                                enabled = $false 
                                                days    = 0 
                                            }
                                        },
                                        @{
                                            category        = "ServicePrincipalRiskEvents"
                                            enabled         = $true
                                            retentionPolicy = @{ 
                                                enabled = $false 
                                                days    = 0 
                                            }
                                        }
                                    )
                                }
                            } | ConvertTo-Json -Depth 10

                            $response = Invoke-WebRequest -Method PUT -Uri $uri -Body $body -ContentType application/json -Headers $AzHeaders -SkipHttpErrorCheck

                            $AdDiagSettings.Status        = if($response.StatusCode -eq 200){$Status.Success}else{$Status.Failed}
                            $AdDiagSettings.StatusMessage = if($response.StatusCode -eq 200){'Successfully Deployed'}else{"While Deploying Azure AD Diagnostic Settings a status code was returned that did not indicate success: $($response.StatusCode) $($response.Content)"}
                        }else{
                            $AdDiagSettings.Status        = $Status.Skipped
                            $AdDiagSettings.StatusMessage = "Deployment of Azure AD Diagnostic Settings Skipped Because $($Subscriptions ?$($LaW ?'Deploy bool was Set to False':'Log Analytics Workspace Was not Deployed'):'No Enabled Azure Subscriptions were Found')"
                        }
                        #Set Deployment Results
                        $DeploymentResults.AzAdDiagSettings = $AdDiagSettings
                    #EndRegion

                    #Region - Create Azure Subscription Diagnostic Setting to Link Azure Activity Logs to Log Analytics
                        $AzSubDiagSettings = @{}
                        $AzSubDiagSettings.Subscriptions = @()
                        if ($Deploy.AzSubDiagSettings -and $LaW -and $Subscriptions){
                            foreach ($SubId in $Subscriptions.SubscriptionId){
                                $SubscriptionResults = @{}
                                $SubscriptionResults.SubscriptionId = $SubId

                                $uri = "$AzManUrl/subscriptions/$SubId/providers/Microsoft.Insights/diagnosticSettings/$WorkspaceName`?api-version=2021-05-01-preview" 
                                $body = @{
                                    properties = @{
                                        storageAccountId            = $null
                                        serviceBusRuleId            = $null
                                        workspaceId                 = $LaW.Id
                                        eventHubAuthorizationRuleId = $null
                                        eventHubName                = $null
                                        metrics                     = @()
                                        logs                        = @(
                                            @{ 
                                                category        = "Administrative"
                                                enabled         = $true
                                                retentionPolicy = @{ 
                                                    enabled = $false 
                                                    days    = 0 
                                                }
                                            },
                                            @{
                                                category        = "Security"
                                                enabled         = $true
                                                retentionPolicy = @{
                                                    enabled = $false 
                                                    days    = 0 
                                                }
                                            },
                                            @{
                                                category        = "Alert"
                                                enabled         = $true
                                                retentionPolicy = @{ 
                                                    enabled = $false 
                                                    days    = 0 
                                                }
                                            },
                                            @{
                                                category        = "Recommendation"
                                                enabled         = $true
                                                retentionPolicy = @{ 
                                                    enabled = $false 
                                                    days    = 0 
                                                }
                                            },
                                            @{
                                                category        = "Policy"
                                                enabled         = $true
                                                retentionPolicy = @{ 
                                                    enabled = $false 
                                                    days    = 0 
                                                }
                                            },
                                            @{
                                                category        = "Autoscale"
                                                enabled         = $true
                                                retentionPolicy = @{ 
                                                    enabled = $false 
                                                    days    = 0 
                                                }
                                            },
                                            @{
                                                category        = "ResourceHealth"
                                                enabled         = $true
                                                retentionPolicy = @{ 
                                                    enabled = $false 
                                                    days    = 0 
                                                }
                                            }
                                        )
                                    }
                                } | ConvertTo-Json -Depth 10

                                $response = Invoke-WebRequest -Method PUT -Uri $uri -Body $body -Headers $AzHeaders -SkipHttpErrorCheck

                                $SubscriptionResults.Status        = if($response.StatusCode -eq 200){$Status.Success}else{$Status.Failed}
                                $SubscriptionResults.StatusMessage = if($response.StatusCode -eq 200){'Successfully Deployed'}else{"While Deploying Azure Subscription Diagnostic Settings a status code was returned that did not indicate success: $($response.StatusCode) $($response.Content)"}

                                $AzSubDiagSettings.Subscriptions += $SubscriptionResults
                            }
                            if ($Status.Failed -notin $AzSubDiagSettings.Subscriptions.Status){
                                $AzSubDiagSettings.Status        = $Status.Success 
                                $AzSubDiagSettings.StatusMessage = 'Successfully Deployed Azure Subscription Diagnostic Settings to all subscriptions'
                            }
                            else{
                                $AzSubDiagSettings.Status        = $Status.Failed
                                $AzSubDiagSettings.StatusMessage = 'One or more of the Subscriptions that the Azure Subscription Diagnostic Settings were Deployed to returned a status code that did not indicate success. Check subscriptions array for more details.'
                            }
                        }else{
                            $AzSubDiagSettings.Status        = $Status.Skipped
                            $AzSubDiagSettings.StatusMessage = "Deployment of Azure Subscription Diagnostic Settings Skipped Because $($Subscriptions ?$($LaW ?'Deploy bool was Set to False':'Log Analytics Workspace Was not Deployed'):'No Enabled Azure Subscriptions were Found')"
                        }
                        #Set Deployment Results
                        $DeploymentResults.AzSubDiagSettings = $AzSubDiagSettings
                    #EndRegion
                #EndRegion

                Write-Host "[Thread $TenantId] Deployment Successful"
            }
            catch {
                $E = $_ | Out-String
                Write-Host "[Thread $TenantId] Deployment Error: $E"
            }
            if($ConnectAzParams.ContextName){try{$null = Remove-AzContext -Name $ConnectAzParams.ContextName -Force -EA 'SilentlyContinue'}Catch{}}
            Return @{
                TenantId          = $Tenant.TenantId 
                DeploymentResults = $DeploymentResults
                Status            = if($E){$Status.Failed}else{$Status.Success}
                StatusMessage     = if($E){"$($E.ToString()): $($E|Out-String)"}else{"Deployment complete"}
                Subscription      = if($SubscriptionId -or $AzContext.Subscription.Id){"$SubscriptionId - $($AzContext.Subscription.Id)"}else{"None"}
            }
        }
    #EndRegion

    #Region Post Deployment
        #Reset AzContext
        If($MainAzContext){
            $null = $MainAzContext | Set-AzContext -ErrorAction SilentlyContinue
        }
        Else{
            if ($env:MSI_SECRET) {
                $null = Connect-AzAccount -Identity
            }
            else{
                $IdentityAzParams = (Invoke-WebRequest $env:Local_Token_Endpoint).Content | ConvertFrom-Json -AsHashtable

                $null = Connect-AzAccount @IdentityAzParams
            }
        }

        #Stop Capturing
        Stop-Transcript

        #Region Storage Account
            #Set Storage Account Vars
            $storageRGName      = $env:SEC_STOR_RGName
            $storageAccountName = $env:SEC_STOR_StorageAcc

            #Get Storage Account Object
            $storageAccount     = Get-AzStorageAccount -ResourceGroupName $storageRGName -Name $storageAccountName

            #Set Blob Container Vars
            $blobContainer      = $env:SEC_STOR_StorageCon
            $storageContext     = $storageAccount.Context

            #Get Blob Container Object
            $container          = (Get-AzStorageContainer -Name $blobContainer -Context $storageContext).CloudBlobContainer
        #EndRegion

        #Region Upload transcript
            try {
                Set-AzStorageBlobContent -File $TranscriptFilePath `
                    -Blob $TranscriptFileName `
                    -Container $container.Name `
                    -Context $storageContext `
            }
            catch {
                throw "An error occurred uploading the transcript file to the secure storage container: $($_ | Out-String)"
            }
        #EndRegion

        #Region Upload CSV
            #Set Result CSV Vars
            $ResultsFilename    = "Results_$guid.csv"
            $ResultsFilePath    = "C:\home\site\wwwroot\$ResultsFilename"

            try {
                $ResultsCSV = @()
                foreach ($Result in $Results) {
                    $ResultsCSV += ( [ordered] @{
                        TenantId                                      = $Result.TenantId ?? ""
                        Status                                        = $Result.Status ?? ""
                        StatusMessage                                 = $Result.StatusMessage ?? ""
                        AzureSubCount                                 = $Result.DeploymentResults.AzureSubCount ?? ""
                        AzureSubscriptions                            = $Result.DeploymentResults.AzureSubscriptions ?? ""
                        AuthPolicy_Status                             = $Result.DeploymentResults.AuthPolicy.Status ?? ""
                        AuthPolicy_StatusMessage                      = $Result.DeploymentResults.AuthPolicy.StatusMessage ?? ""
                        AzAdDiagSettings_Status                       = $Result.DeploymentResults.AzAdDiagSettings.Status ?? ""
                        AzAdDiagSettings_StatusMessage                = $Result.DeploymentResults.AzAdDiagSettings.StatusMessage ?? ""
                        AzSubDiagSettings_Status                      = $Result.DeploymentResults.AzSubDiagSettings.Status ?? ""
                        AzSubDiagSettings_StatusMessage               = $Result.DeploymentResults.AzSubDiagSettings.StatusMessage ?? ""
                        LAWorkspace_Status                            = $Result.DeploymentResults.LAWorkspace.Status ?? ""
                        LAWorkspace_StatusMessage                     = $Result.DeploymentResults.LAWorkspace.StatusMessage ?? ""
                        ResourceGroup_Status                          = $Result.DeploymentResults.ResourceGroup.Status ?? ""
                        ResourceGroup_StatusMessage                   = $Result.DeploymentResults.ResourceGroup.StatusMessage ?? ""
                        RGRegionPolicy_Status                         = $Result.DeploymentResults.RGRegionPolicy.Status ?? ""
                        RGRegionPolicy_StatusMessage                  = $Result.DeploymentResults.RGRegionPolicy.StatusMessage ?? ""
                        SecurityDefaults_Status                       = $Result.DeploymentResults.SecurityDefaults.Status ?? ""
                        SecurityDefaults_StatusMessage                = $Result.DeploymentResults.SecurityDefaults.StatusMessage ?? ""
                        SecurityDefaults_ConditionalAccessPolicyCount = $Result.DeploymentResults.SecurityDefaults.ConditionalAccessPolicyCount ?? ""
                        SecurityDefaults_IsEnabled_Before             = $Result.DeploymentResults.SecurityDefaults.IsEnabled.Before ?? ""
                        SecurityDefaults_IsEnabled_After              = $Result.DeploymentResults.SecurityDefaults.IsEnabled.After ?? ""
                        VMPolicy_Status                               = $Result.DeploymentResults.VMPolicy.Status ?? ""
                        VMPolicy_StatusMessage                        = $Result.DeploymentResults.VMPolicy.StatusMessage ?? ""
                        VMPolicy_Subscriptions                        = $Result.DeploymentResults.VMPolicy.Subscriptions.SubscriptionId                   -join "," ?? ""
                        VMPolicy_Subscriptions_Status                 = $Result.DeploymentResults.VMPolicy.Subscriptions.Status                           -join "," ?? ""
                        VMPolicy_Subscriptions_StatusMessage          = $Result.DeploymentResults.VMPolicy.Subscriptions.StatusMessage                    -join "," ?? ""
                        VMPolicy_SubscriptionResults                  = $Result.DeploymentResults.VMPolicy.Subscriptions | ?{$_} | ConvertTo-Json -Depth 4
                        VMPolicy_HighCPUVM_HasVM                      = $Result.DeploymentResults.VMPolicy.Subscriptions.VMTypes.HighCPUVM.HasVM          -join "," ?? ""
                        VMPolicy_HighCPUVM_CustomerVMs                = ($Result.DeploymentResults.VMPolicy.Subscriptions | ForEach-Object `
                                                                            { $_.VMTypes.HighCPUVM.CustomerVMs | ?{$_} | ConvertTo-Json -Compress })      -join "," ?? ""
                        VMPolicy_HighCPUVM_Created                    = $Result.DeploymentResults.VMPolicy.Subscriptions.VMTypes.HighCPUVM.PolicyCreated  -join "," ?? ""
                        VMPolicy_HighGPUVM_HasVM                      = $Result.DeploymentResults.VMPolicy.Subscriptions.VMTypes.HighGPUVM.HasVM          -join "," ?? ""
                        VMPolicy_HighGPUVM_CustomerVMs                = ($Result.DeploymentResults.VMPolicy.Subscriptions | ForEach-Object `
                                                                            { $_.VMTypes.HighGPUVM.CustomerVMs | ?{$_} |  ConvertTo-Json -Compress })     -join "," ?? ""
                        VMPolicy_HighGPUVM_Created                    = $Result.DeploymentResults.VMPolicy.Subscriptions.VMTypes.HighGPUVM.PolicyCreated  -join "," ?? ""
                        VMPolicy_HighDiskVM_HasVM                     = $Result.DeploymentResults.VMPolicy.Subscriptions.VMTypes.HighDiskVM.HasVM         -join "," ?? ""
                        VMPolicy_HighDiskVM_CustomerVMs               = ($Result.DeploymentResults.VMPolicy.Subscriptions | ForEach-Object `
                                                                            { $_.VMTypes.HighDiskVM.CustomerVMs | ?{$_} | ConvertTo-Json -Compress })     -join "," ?? ""
                        VMPolicy_HighDiskVM_Created                   = $Result.DeploymentResults.VMPolicy.Subscriptions.VMTypes.HighDiskVM.PolicyCreated -join "," ?? ""
                    })
                }               
                $ResultsCSV | Export-Csv -Path $ResultsFilePath
                Set-AzStorageBlobContent -File $ResultsFilePath `
                    -Blob $ResultsFileName `
                    -Container $container.Name `
                    -Context $storageContext
            } catch {
                throw "An error occurred uploading the results file to the secure storage container: $($_ | Out-String)"
            }
        #EndRegion

        #Retrieve Captured Output
        $HostOutput = Get-Content -Path $TranscriptFilePath
        Remove-Item -Path $TranscriptFilePath
    #EndRegion
}
catch {
    $E = $_ | Out-String
}

#Region HTTP Output
    #Finish Tracking Elapsed Time
    $ScriptEndTime   = Get-Date
    $ScriptTotalTime = New-TimeSpan -St $ScriptStartTime -E $ScriptEndTime

    Write-Host "Elapsed Time: $ScriptTotalTime"

    $body = @{
        Results     = $Results
        HostOutput  = $HostOutput
        Error       = $E
        ElapsedTime = $ScriptTotalTime
        Context     = $MainAzContext
    } | ConvertTo-Json -EscapeHandling EscapeHtml -Depth 8

    Push-OutputBinding -Name Response -Value ([HttpResponseContext]@{
        StatusCode = [HttpStatusCode]::OK
        Body = $body
    })
    Write-Host "Pushed Output Function Finished"
#EndRegion