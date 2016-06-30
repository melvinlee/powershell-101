#Get service by name start with M
Get-Service -Name M*

#Get service by displayName start with M
Get-Service -Displayname M*

#Get service by running status
Get-Service | Where-Object {$_.status -eq "running"}

#Get service and sort by status
Get-Service | Sort-Object status
