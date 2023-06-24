
<# Interactive login to SPOService

It easily support any authentication configuration enabling authentication even with MFA-enabled on SharePoint.

Ref: https://learn.microsoft.com/en-us/powershell/module/sharepoint-online/connect-sposervice?view=sharepoint-ps
#>

$SiteURL = "https://<tenant-domain-name>-admin.sharepoint.com"
Connect-SPOService -url $SiteURL # interactive authentication ask for username and password or already stored web credential on current machine