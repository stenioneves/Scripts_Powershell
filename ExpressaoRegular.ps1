#Expressão Regular REGEX
Clear-Host
$email= Read-Host Qual é o seu e-mail ?
$ExpreR="^[a-z]+\.[a=z]+@yourdomain.com$"

if($email -notmatch $ExpreR){
Write-Host "Endereço de e-mail errado $email"
Exit

}
Write-Host E-mail valido !