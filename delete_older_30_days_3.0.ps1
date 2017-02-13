# delete_older_30_days_3.0.ps1
# deletes files older than 30 days

Get-ChildItem -Recurse | Where-Object CreationTime -lt (Get-Date).AddDays(-30) | Remove-Item -Recurse