#Get system eventlog
Get-Eventlog -log System 

#Get top 10 system eventlog
Get-Eventlog -log System -newest 10

#Get top 10 system eventlog and format output using table
Get-Eventlog -log System -newest 10 | format-table -property *

#Get top 10 system eventlog using format table and display custom property
Get-Eventlog -log System -newest 10 | format-table @{Label="Time";Expression={$_.TimeWritten}}, Source, Message

#Get top 10 system eventlog and export to csv
Get-Eventlog -log System -newest 10 | Select-Object @{Label="Time";Expression={$_.TimeWritten}}, Source, Message | Export-CSV C:\Eventlog.csv

#Get top 10 system eventlog and export to csv
Get-Eventlog -log System -newest 10 | Select-Object @{Label="Time";Expression={$_.TimeWritten}}, Source, Message | Export-CSV C:\Eventlog.csv

#Get top 10 system eventlog and use -NoTypeInformation to suppress the type information in the output file
Get-Eventlog -log System -newest 10 | Select-Object Source, Message | Export-CSV C:\Eventlog.csv -NoTypeInformation
