#Get process
Get-Process

#Get process by name
Get-process winword

#Get Top 5 process
Get-Process | Select-Object -first 5

#List the top 5 processes using the most CPU time:
Get-Process | Sort-Object CPU | Select-Object -last 5

