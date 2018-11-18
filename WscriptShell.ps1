#Exemplo WScript.Shell

#Iniciou a variavel
$wshell = New-Object  -ComObject WScript.Shell
#vendo as funções disponiveis
$wshell | Get-Member
# Exibir um Popup
$wshell.Popup("Curso muito legal")
#Iniciando uma aplicação
$wshell.Run("Notepad")
#Selecionado a app ativa
$wshell.AppActivate("Notepad")
#Aguardando 2 seg
Start-Sleep 2
#Enviado a String para o bloco de notas
$wshell.SendKeys("Olá Stenio")
