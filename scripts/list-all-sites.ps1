
<# Lists all SharePoint site collections 
#>

$SiteURL = "https://<tenant-domain-name>-admin.sharepoint.com"
Connect-SPOService -url $SiteURL # interactive authentication ask for username and password or already stored web credential on current machine
Get-SPOSite -Limit All | Format-Table Url, Template, StorageUsageCurrent, StorageQuota, LastContentModifiedDate, sharingcapability -AutoSize