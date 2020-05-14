Push-Location $PSScriptRoot
try {
    Set-Location -Path ../FE
    az webapp up --sku FREE --name pro-rev --resource-group pub_grp
} finally {
    Pop-Location
}