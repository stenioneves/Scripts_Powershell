#Comado For
Clear-Host
for($var=1;$var-le10; $var++){Test-Connection 192.168.10.$var -Count 1 }