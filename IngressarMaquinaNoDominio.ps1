################################################################################################
#           Esse Script executa o processo de colocar a máquina no domínio                     #
#                   Autor: Stenio  Neves  Data: 18/11/2018 Hora:20:14                          #
################################################################################################

$dom=Read-Host Informe o domínio a ingressar
$user =Read-Host Informe o seu usuário administrativo
$cred= Get-Credential $dom\$user
$info = Get-WmiObject -Class Win32_ComputerSystem
Add-Computer -ComputerName $info.Name -DomainName $dom -Credential $cred
