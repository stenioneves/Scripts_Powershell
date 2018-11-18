#Diferença entre Função e Workflow
#Função executa os  processo em seguência.
function iniciar-editores
{
Start-Process Notepad
sleep 5
Start-Process Wordpad
}

#Workflow pode ser executado em paralelo
workflow start-editores
{
parallel {
Start-Process Notepad
sleep 5
Start-Process Wordpad
}
}