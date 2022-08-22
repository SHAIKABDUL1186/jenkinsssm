Import-Module WebAdministration
$AppPools = (Get-ChildItem -Path IIS:\AppPools\)

foreach($AppPool in $AppPools)
{
Write-Host "Restarting Application Pool : $($AppPool.Name)"
Restart-WebAppPool -Name $AppPool.Name
}
