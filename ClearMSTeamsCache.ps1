$VerbosePreference = "Continue"

# Force Close any Teams Process
Get-Process -Name "Teams" | Stop-Process -Force

# Get Microsoft Teams Paths
$TeamsRemovePath = @()
$TeamsRemovePath += Join-Path -Path ([Environment]::GetFolderPath('ApplicationData')) -ChildPath ("Microsoft\Teams\Cache")
$TeamsRemovePath += Join-Path -Path ([Environment]::GetFolderPath('ApplicationData')) -ChildPath ("Microsoft\Teams\databases")
$TeamsRemovePath += Join-Path -Path ([Environment]::GetFolderPath('ApplicationData')) -ChildPath ("Microsoft\Teams\IndexedDB")
$TeamsRemovePath += Join-Path -Path ([Environment]::GetFolderPath('ApplicationData')) -ChildPath ("Microsoft\Teams\Local Storage")

# Remove items
Remove-Item -Path $TeamsRemovePath -Recurse -Force -Verbose
