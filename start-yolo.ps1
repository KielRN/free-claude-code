# start-yolo.ps1 — Start proxy + Claude Code (skip permissions)
$env:ANTHROPIC_BASE_URL = "http://localhost:8082"
$env:ANTHROPIC_API_KEY  = "freecc"

Write-Host "Starting free-claude-code proxy..." -ForegroundColor Cyan
Start-Process -NoNewWindow powershell -ArgumentList "-NoExit", "-Command", "uv run fcc-server"

Start-Sleep -Seconds 2

Write-Host "Launching Claude Code (dangerously-skip-permissions)..." -ForegroundColor Yellow
claude --dangerously-skip-permissions
