#  Módulo  AD
#Precisar do módulo AD instalado
Get-Command -Module ActiveDirectory
Get-Command new-ad*
Get-Command Get-ad*
Get-ADUser   -Properties 
Get-ADUser -Filter * | where{$_.enable -eq $false}
Get-ADUser -Filter * -Properties *| Export-Csv c:\listarUser.csv
Get-ADUser -Filter * -Properties  * | select -Property GivenName, DisplayName
Remove-ADUser 
Import-Csv c:\listarUser.csv