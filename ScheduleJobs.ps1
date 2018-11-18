# Schedule jobs
Clear-host
Get-Command -Module PSScheduledJob | Sort-Object Noun

$diario= New-JobTrigger -Daily -at 3am
$umavez = New-JobTrigger -Once -At (Get-Date).AddHours(1)
$semanal = New-JobTrigger -Weekly -DaysOfWeek Monday -At 6pm

Register-ScheduledJob -Name BackupScript -Trigger $diario -ScriptBlock{
Copy-Item C:\Users\steni\OneDrive\Documentos\Powershell\*.* E:\Scripts\ -Recurse -Force
}
# Verificandoo Gatilho da Trigger
Get-ScheduledJob BackupScript | Get-JobTrigger
#removendo 

Get-ScheduledJob BackupScript | Unregister-ScheduledJob