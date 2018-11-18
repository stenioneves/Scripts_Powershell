#renomer máquina
$info = Get-WmiObject -Class Win32_ComputerSystem
$info.Rename("")
Restart-Computer