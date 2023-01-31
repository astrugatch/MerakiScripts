@ECHO OFF
REM This script kicks off the Reboot and saves it's output to a log
REM Presumed working directory is C:\MerakiReboot

SET LogFileName=MerakiReboot_%DATE:~10,4%%DATE:~4,2%%DATE:~7,2%

c:\MerakiReboot\Reboot.bat 1> c:\MerakiReboot\Logs\%LogFileName%.log 2>&1
