@ECHO OFF
REM Uses CSV export from Meraki to reboot APs. APs are identified by Serial number which is expected in the fourth column.
REM If your serial is in a different column change the token number in line 8 to the column your serial is in
REM API key you generate in your dashboard needs to be entered on line 10 eg "X-Cisco-Meraki-API-Key: xxxxxxxxxxxxxxxxxxx"

set "File=C:\MerakiReboot\Reboot.csv"

for /F "tokens=4 delims=," %%a in ('Type "%File%"') do (

curl -L --request POST --url "https://api.meraki.com/api/v1/devices/%%a/reboot" -H "Content-Type: application/json" -H "Accept: application/json" -H "X-Cisco-Meraki-API-Key: "

TIMEOUT 1
)
EXIT
