﻿# Teste de internet
Clear-Host
$conn= (Test-Connection www.google.com.br -Count 1 -Quiet)
if($conn -eq "true")
{
Write-Host "Internet Funcionado" -ForegroundColor Green
}