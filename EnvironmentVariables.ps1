
#List of environment variables
Get-Childitem env:
gci env: | sort name | more

#Enumerate all the environment variables:
gci -path env:* | get-member

#Return string value of env:
$env:PSModulePath

#Split string value
($env:PSModulePath).split(";")

#Set value for current session only
$env:VariableName = "new-value"

#Setting a variable = an empty string will remove it completely:
$env:VariableName = ""
