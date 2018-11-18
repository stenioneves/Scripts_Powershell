# Script com Array
Clear-Host
#Para criar um array deve começar com um @(
$GoogleDNS = @("8.8.8.8","8.8.4.4")
$TotalDNS= $GoogleDNS.Count
Write-Host Pigando todos os  $TotalDNS DNS do Google
Test-Connection $GoogleDNS -Count 1