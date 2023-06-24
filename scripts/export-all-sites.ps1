
<# Lists and export to CSV file all SharePoint site collections 
#>

$SiteURL = "https://<tenant-domain-name>-admin.sharepoint.com"
Connect-SPOService -url $SiteURL # interactive authentication ask for username and password or already stored web credential on current machine

$outputFolder = ".\output"
if(Test-Path -Path $outputFolder -PathType Container) {
	# do nothing
}
else {
	New-Item -Path $outputFolder -ItemType Directory | Out-Null
}

Get-SPOSite -Limit All | Export-CSV -LiteralPath "$outputFolder\all-sites.csv" -NoTypeInformation