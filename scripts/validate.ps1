Set-Location "C:\Users\essoc\Downloads\AMEN"
$BASE="https://amen-coral.vercel.app"
Write-Host "=== AMEN VALIDATION $BASE ===" -ForegroundColor Cyan
Invoke-RestMethod "$BASE/api/v1/corpus/count" | Format-List
Invoke-RestMethod "$BASE/api/v1/i18n/la" | Format-List
Write-Host "VALIDATION OK - Latin: Explorator AMEN" -ForegroundColor Green
