#deletes old downloads

Get-ChildItem –Path C:\Users\dvnst\Downloads -Recurse | Where-Object {($_.LastWriteTime -lt (Get-Date).AddDays(-30))} | Remove-Item