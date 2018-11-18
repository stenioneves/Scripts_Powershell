#Acesso remoto 
Enable-PSRemoting 

Invoke-Command  -ComputerName 192.168.10.106 -ScriptBlock {Get-HotFix}
#Máquina TrustedHosts
Get-Item WSMan:\localhost\Client\TrustedHosts
#New-PSSession -ComputerName 192.168.10.106  -Credential elysium\stenio
$cred =Get-Credential elysium\stenio
$rede = New-PSSession -ComputerName (Get-Content C:\Users\steni\OneDrive\Documentos\Powershell\servidores.txt) -Credential $cred
#New-PSSession -ComputerName 192.168.10.106  -Credential $cred
Invoke-Command $rede {Get-Service}