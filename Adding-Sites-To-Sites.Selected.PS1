# Use this script to add SharePoint site to Azure App SharePoint "Sites.Selected" permission

$clientID = "9f9f90f6-242f-4c70-a004-8b4fce6fd181"
$clientSecret = "ECA7Q~hULCU7LJiuN3CjKMZH356W04RkOCFx8"
$URL = "https://bain-admin.sharepoint.com"

Connect-PnPOnline -Url $URL -UseWebLogin

Grant-PnPAzureADAppSitePermission `
    -AppId '7cc678fe-3f7d-43c8-aabe-cabae2c555cd' `
    -DisplayName 'NextGen Tableau Sharepoint Connection' `
    -Site 'https://bainandcompany.sharepoint.com/sites/Global_Next-Gen_Software_Metrics_Teams-ARC' `
    -Permissions Write