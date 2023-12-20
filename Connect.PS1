Clear-Host
$env:PNPPOWERSHELL_UPDATECHECK = "false"
$0 = $myInvocation.MyCommand.Definition
$path = [System.IO.Path]::GetDirectoryName($0)
Write-Host $path

$Global:tenantId = "eb120e12-65f1-477a-be8c-fe4f65926724" 
$Global:clientId = "37a7f069-7e77-4a45-835b-30c5fb13ee88"
$Global:Secret = "d2h8Q~JUB6yk8UGfuasqR9ktaEZrJYytPQAQNalj"
$password = $Global:Secret | ConvertTo-SecureString -AsPlainText -Force
$ClientSecretCredential = New-Object System.Management.Automation.PSCredential($Global:clientId, $password)

Connect-MgGraph `
    -TenantId $Global:tenantId `
    -ClientSecretCredential $ClientSecretCredential