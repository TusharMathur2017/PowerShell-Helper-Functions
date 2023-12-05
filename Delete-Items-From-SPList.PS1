# Script to delete all the items from a SharePoint list

Clear-Host
$0 = $myInvocation.MyCommand.Definition
$path = [System.IO.Path]::GetDirectoryName($0)
$EStyle = "$($PSStyle.Background.Black)$($PSStyle.Foreground.Red)"

$Global:clientId = "37a7f069-7e77-4a45-835b-30c5fb13ee88" #OneDrive-Folder-Rename Azure App
$Global:thumbPrint = "6F18BAF875485A0B332B19BFBC274BBB5417DF5C" #Tushar
$Global:tenantId = "eb120e12-65f1-477a-be8c-fe4f65926724" 
##########################################################################################

$SiteURL = "https://bainandcompany.sharepoint.com/sites/collaborationtoolrequests"
$ListName = "External User Invitation Form"

Connect-PnPOnline -Url $SiteURL `
    -Tenant $Global:tenantId `
    -ClientId $Global:clientId `
    -Thumbprint $Global:thumbPrint
 
$ListItems = Get-PnPListItem -List $ListName -PageSize 1000
$Batch = New-PnPBatch
#Clear All Items in the List
ForEach ($Item in $ListItems) {    
    Remove-PnPListItem -List $ListName -Identity $Item.ID -Recycle -Batch $Batch
}
Invoke-PnPBatch -Batch $Batch