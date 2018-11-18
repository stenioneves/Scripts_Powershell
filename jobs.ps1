#Jobs
WorkFlow WorkflowDemorado
{
while (1)
     {
     (Get-Date).ToString() + "Script demoradinho"
     Start-Sleep -Seconds 2
     }
}
$wfjob = WorkflowDemorado -AsJob
Receive-Job $wfjob
Suspend-Job $wfjob -Force
Stop-Job $wfjob
Resume-Job $wfjob
