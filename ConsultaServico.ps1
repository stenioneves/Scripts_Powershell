#Consultar o serviço Windows
Clear-Host
$Serv= Get-Service -Name Spooler
if($Serv.Status -eq "stopped")
{ 
Write-Host  "Serviço Parado"
}
else
{
Write-Host "Serviço em execução"
}