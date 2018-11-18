#renomer máquina Personalizado
# Autor:Stenio

$info = Get-WmiObject -Class Win32_ComputerSystem
$wshell = New-Object  -ComObject WScript.Shell
$name= Read-Host Qua nome que deseja colocar na sua máquina ?
$info.Rename("$name")
$wshell.Popup("Sua máquina irá reiniciar em 5 segundos !")
Start-Sleep 5
Restart-Computer