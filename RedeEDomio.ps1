
#obetendo a informação de configuração
Get-NetIPConfiguration

#Configurar endereço de IP
#PrefixLength CIDR,wildcard e subnet mask
New-NetIPAddress  -InterfaceAlias  -DefaultGateway -AddressFamily IPv6 -PrefixLength 24
Set-DnsClientServerAddress -InterfaceAlias  -ServerAddresses
#DHCP
Set-NetIPInterface -InterfaceAlias -Dhcp Enabled
Set-DnsClientServerAddress -InterfaceAlias  -ResetServerAddresses
#Adcionar máquina ao dominio
Add-Computer -ComputerName Elysium -DomainName "Seu dominio"
