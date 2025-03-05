# Run this script from root of this repo. For example
# .\Powershell\apply-ef-migrations.ps1 -dbPath Data/Test.db

# https://stackoverflow.com/questions/72133102/how-to-execute-a-a-remote-script-in-a-reusable-github-workflow

param(
    [Parameter(Mandatory)]
    [string]$dbPath
)

"Your dbPath is: $dbPath"

sqlite3 $dbPath '.read Sql/dbversion.sql'