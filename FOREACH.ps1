#FOREACH
Clear-Host
foreach ($numeros in 1,2,3,4,5,6,7,8,9,10,100,1000,10000) {Write-Host $numeros}
foreach($arquivos in Get-ChildItem) {

if($arquivos.IsReadOnly){
 Write-Host $arquivos.FullName}

}
#mais exemplo
Get-Process Notepad
Get-Process Notepad | foreach kill