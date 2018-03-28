Import-Module ActiveDirectory
$Date = [DateTime]::Today.AddDays(-31)

Get-ADComputer -filter {operatingsystem -like '*server*' -and passwordlastset -gt $Date} -properties * | Select Name, DistinguishedName, OperatingSystem, PasswordLastSet | Export-CSV -Path C:\Temp\Domain_Server_List.csv