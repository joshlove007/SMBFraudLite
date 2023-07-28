#Run This from your Local Env to trigger FA with test data

#Region Functions
    #Region Function Get-Cred
        Function Get-Cred{
            [cmdletbinding()]
            [Alias('gcr')]
            param(
                [Parameter(Mandatory,
                ValueFromPipeline,Position=0)]
                [ValidateNotNullOrEmpty()]
                [String]
                $Name,

                [Parameter(Position=1)]
                [Alias("S","SO")]
                [switch]
                $SecretOnly
            ) 
            
            if($PSEdition -eq 'Core'){$Get_Cred = "function Get-Cred{${Function:Get-Cred}}"
                return icm(nsn -UseW){iex $Using:Get_Cred;gcr $Using:Name $Using:SecretOnly}|%{if($_-is[string]){$_}else{$_|Select UserName,Password}}
            }

            $null    = [Windows.Security.Credentials.PasswordVault,Windows.Security.Credentials,ContentType=WindowsRuntime]
            $vault   = New-Object Windows.Security.Credentials.PasswordVault
            $Result  = $vault.FindAllByResource($Name)
            $cred    = $vault.Retrieve($Name,$Result.UserName) | Select UserName,Password
            
            Return $(if($SecretOnly){$cred.Password}else{$cred})
        }
        $Get_Cred = "function Get-Cred{${Function:Get-Cred}}"
    #EndRegion

    #Region Function Get-CredList
        Function Get-CredList{
            [cmdletbinding()]
            [Alias("gcl")]
            param()
            
            if($PSEdition -eq 'Core'){$Get_CredList = "function Get-CredList{${Function:Get-CredList}}"
                return (icm (nsn -UseW) {iex $Using:Get_CredList; Get-CredList})|Select Name,UserName
            }

            $null     = [Windows.Security.Credentials.PasswordVault,Windows.Security.Credentials,ContentType=WindowsRuntime]
            $vault    = New-Object Windows.Security.Credentials.PasswordVault
            $CredList = $vault.RetrieveAll() | Select-Object @{N='Name';E={$_.Resource}},UserName
            
            Return $CredList
        }
        $Get_CredList = "function Get-CredList{${Function:Get-CredList}}"
    #EndRegion

    #Region Function New-Cred
        Function New-Cred{
            [cmdletbinding()]
            param(
                [Parameter(Mandatory)]
                [ValidateNotNullOrEmpty()]
                [String]
                $Name,

                [Parameter(Mandatory)]
                [ValidateNotNullOrEmpty()]
                [String]
                $Secret,

                [Parameter()]
                [ValidateNotNullOrEmpty()]
                [String]
                $UserName = " "
            )

            if($PSEdition -eq 'Core'){$New_Cred = "function New-Cred{${Function:New-Cred}}"
                Return icm (nsn -UseW){iex $Using:New_Cred; New-Cred $Using:Name $Using:Secret}
            }
            
            $null  = [Windows.Security.Credentials.PasswordVault,Windows.Security.Credentials,ContentType=WindowsRuntime]
            $vault = New-Object Windows.Security.Credentials.PasswordVault
            $cred  = New-Object windows.Security.Credentials.PasswordCredential
            $cred.Resource = $Name
            $cred.UserName = $UserName
            $cred.Password = $Secret
            $vault.Add($cred)
        }
        $New_Cred = "function New-Cred{${Function:New-Cred}}"
    #EndRegion

    #Region Function Remove-Cred
        Function Remove-Cred{
            [cmdletbinding()]
            param(
                [Parameter(Mandatory)]
                [ValidateNotNullOrEmpty()]
                $Name
            )

            if($PSEdition -eq 'Core'){$Remove_Cred = "function Remove-Cred{${Function:Remove-Cred}}"
                Return icm (nsn -UseW){iex $Using:Remove_Cred; Remove-Cred $Using:Name}
            }
            
            $null   = [Windows.Security.Credentials.PasswordVault,Windows.Security.Credentials,ContentType=WindowsRuntime]
            $vault  = New-Object Windows.Security.Credentials.PasswordVault
            $Result = $vault.FindAllByResource($Name)
            $cred   = $vault.Retrieve($Name,$Result.UserName)

            Return $Vault.Remove($cred)
        }
        $Remove_Cred = "function Remove-Cred{${Function:Remove-Cred}}"
    #EndRegion
#EndRegion

$TenantsData = @(
    @{
        TenantId       = ""
        Region         = "US"
        SubscriptionId = ""
    }
)
$Tenants = @()
1..1|%{$Tenants += $TenantsData}
$Body = @{
    VertexEndpoint = Get-Cred -Name 'VertexEndpoint'  -SecretOnly
    VertexApiUser  = Get-Cred -Name 'VertexApiUser'   -SecretOnly
    VertexApiKey   = Get-Cred -Name 'VertexApiKey'    -SecretOnly
    VertexApiToken = Get-Cred -Name 'PartnerApiToken' -SecretOnly
    Tenants        = $Tenants
    Deploy = @{
        SecurityDefaults = $true
        VMPolicy         = $true
        RGRegionPolicy   = $true
        AuthPolicy       = $true
        ResourceGroup    = $true
        LAWorkspace      = $true
        AzAdDiagSettings = $true        
    }
    Verbose = $True
    Debug   = $True
} 
$JsonBody = $Body | ConvertTo-Json
$result = Invoke-Webrequest -Method POST "http://localhost:7071/api/HttpTrigger1" -Body $JsonBody -ContentType "application/json"
#$result = Invoke-RestMethod -Method POST "" -Body $Body -ContentType "application/json"

Write-Host $result.Content

$PsResult = $Result.Content | Convertfrom-Json

$PsResult.Results


