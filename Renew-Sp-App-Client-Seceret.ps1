Import-Module "C:\Users\42TCM\Documents\PowerShell\Modules\MSOnline\1.1.183.57\MSOnline.psd1" -UseWindowsPowerShell
Connect-MsolService
$clientID = ""
Get-MsolServicePrincipal -AppPrincipalId $clientID

return

# Get-MsolServicePrincipalCredential -AppPrincipalId $clientID -ReturnKeyValues $false | Where-Object { ($_.Type -ne "Other") -and ($_.Type -ne "Asymmetric") }
# Remove-MsolServicePrincipalCredential -KeyIds @("bf898e74-523c-47dc-855b-646814035d39","a808fc9b-1294-48ca-85c1-6be50866d438","086e2edd-796a-44a2-898a-27d2d7252467") -AppPrincipalId $clientID


# $bytes = New-Object Byte[] 32
# $rand = [System.Security.Cryptography.RandomNumberGenerator]::Create()
# $rand.GetBytes($bytes)
# $rand.Dispose()
# $newClientSecret = [System.Convert]::ToBase64String($bytes)
# $dtStart = [System.DateTime]::Now
# $dtEnd = $dtStart.AddYears(3)
# New-MsolServicePrincipalCredential -AppPrincipalId $clientID -Type Symmetric -Usage Sign -Value $newClientSecret -StartDate $dtStart -EndDate $dtEnd
# New-MsolServicePrincipalCredential -AppPrincipalId $clientID -Type Symmetric -Usage Verify -Value $newClientSecret -StartDate $dtStart -EndDate $dtEnd
# New-MsolServicePrincipalCredential -AppPrincipalId $clientID -Type Password -Usage Verify -Value $newClientSecret -StartDate $dtStart -EndDate $dtEnd
# $newClientSecret


# Create new SP apps on a site collection
# https://bainandcompany.sharepoint.com/sites/MSTeamsRequestFormStaging/_layouts/15/appregnew.aspx

# Fetch and remove previously created on SP apps
# https://bainandcompany-admin.sharepoint.com/_layouts/15/TA_AllAppPrincipals.aspx

# Fetch and set permissions on SP apps
# https://bainandcompany-admin.sharepoint.com/_layouts/15/appinv.aspx
# https://baincn-admin.sharepoint.cn/_layouts/15/appinv.aspx

# localhost.com
# https://www.localhost.com


#Read, Write, Manage, FullControl

# <AppPermissionRequests AllowAppOnlyPolicy="true"><AppPermissionRequest Scope="http://sharepoint/content/tenant" Right="FullControl" /></AppPermissionRequests>
<AppPermissionRequests AllowAppOnlyPolicy="true"><AppPermissionRequest Scope="http://sharepoint/content/tenant" Right="FullControl" /><AppPermissionRequest Scope="http://sharepoint/social/tenant" Right="FullControl" /></AppPermissionRequests>
# <AppPermissionRequests AllowAppOnlyPolicy="true"><AppPermissionRequest Scope="http://sharepoint/content/sitecollection" Right="Read" /></AppPermissionRequests>
# <AppPermissionRequests AllowAppOnlyPolicy="true"><AppPermissionRequest Scope="http://sharepoint/content/sitecollection/web" Right="Read" /></AppPermissionRequests>
# <AppPermissionRequests AllowAppOnlyPolicy="true"><AppPermissionRequest Scope="http://sharepoint/content/sitecollection/web/list" Right="Read" /></AppPermissionRequests>


# https://bainandcompany.sharepoint.com/sites/DesignCommunity/_layouts/15/OAuthAuthorize.aspx?client_id=97571799-cb7c-4048-a247-27f943340312&scope=AllSites.Read &response_type=code&redirect_uri=https://bainandcompany.sharepoint.com/sites/DesignCommunity
# https://bainandcompany.sharepoint.com/sites/DesignCommunity?code=PAQABAAEAAAD%2D%2DDLA3VO7QrddgJg7WevryD5Bu06G3aSIFCpYcFsRbrfxqvA1vc5WyYkrNMeXx6tIHRZe%2DHuLakpPt1alXu8PqYI0n4SAG6A0vZfgPfoHWGIzAuYYkn0pD2n77GP3wem6Bau1%2DcpG%5F%5Fr7bMdeDW4bLGUpOtA6VCjVdfBdq6pEWHZ5FVC%5FdD4uXk%5F8nQcZLitchTfkLIqbF2FMaz8%5FvYFNxmKmHZI%5FsC7Fk%2DxdrTNXJblf7OR%5F56UDqsw1x3wDEDB9yGu8V6USreBsbv1TRultfDbB%2DwB%5FwhdOENRyHNbnxAz1JARUPNgQ7riRlhLVe5AHPaGmgVYwB57aYe4TGRnMVCawM6VS%2DAkeobz1njz7Sc5%5FLjZttWVtGdcdaNQe7oAgAA
