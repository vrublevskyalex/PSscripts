Import-Module ExchangeOnlineManagement
Connect-ExchangeOnline -UserPrincipalName avrublevsky@linquest.com -ShowProgress $true -ConnectionUri https://outlook.office365.us/powershell-liveid -AzureADAuthorizationEndPointUri https://login.microsoftonline.us/common 
Connect-IPPSSession -UserPrincipalName avrublevsky@linquest.com  -ConnectionUri https://ps.compliance.protection.office365.us/powershell-liveid/ 

Install-Module Hawk
Import-Module Hawk
start-hawktenantinvestigation 
Start-HawkUserInvestigation -User alex.vrublevsky@linquest.com 
Get-HawkTenantAzureAuthenticationLogs

MSOnline
Install-Module MSOnline
Import-Module MSOnline
Connect-MsolService -AzureEnvironment USGovernment