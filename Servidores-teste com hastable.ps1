#Teste com Hash table
Clear-Host
#Atenção em Hash table é @{
$Servidores = [ordered]@{Server1="127.0.0.1";Server2="192.168.10.106";Server3="192.168.10.103"}
$Servidores
#Adicionar
$Servidores["Server4"]="192.168.10.1"
#Remover
$Servidores.Remove("Server4")

$Servidores.Count

Test-Connection $Servidores.Server3

#Exibir valores da tabela hash
$Servidores.Values