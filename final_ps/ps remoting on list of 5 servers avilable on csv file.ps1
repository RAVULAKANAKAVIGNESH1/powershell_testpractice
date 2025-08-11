﻿# Path to your CSV file
Enable-PSRemoting -Force
Set-WSManQuickConfig
$csvPath = "C:\Users\ravul\OneDrive\Desktop\ServerName.csv"

# Command you want to run remotely
$remoteScriptBlock = {
    Get-Date
    # You can replace this with any script, like:
    # Get-Service | Where-Object {$_.Status -eq 'Running'}
}

# Import the server list
$servers = Import-Csv -Path $csvPath

foreach ($server in $servers) {
    $computerName = $server.ServerName
    Write-Host "Connecting to $computerName..." -ForegroundColor Cyan

    try {
        $result = Invoke-Command -ComputerName $computerName -ScriptBlock $remoteScriptBlock -ErrorAction Stop
        Write-Host "[$computerName] Success:" -ForegroundColor Green
        $result
    }
    catch {
        Write-Host "[$computerName] Failed: $_" -ForegroundColor Red
    }
}