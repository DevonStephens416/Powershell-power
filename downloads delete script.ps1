#deletes old files in a specified folder
$filePath = read-host "Type the path of a folder where you want to 30+ day old items"
#grabs user input for their desired folder
Get-ChildItem –Path $filePath -Recurse | Where-Object {($_.LastWriteTime -lt (Get-Date).AddDays(-30))} | Remove-Item
#deletes all items that are 30 days old
