# FIND-AMEN.ps1 - Trouve ou est AMEN.bat
Write-Host "Recherche AMEN.bat sur ton PC..." -ForegroundColor Yellow
$results = Get-ChildItem -Path C:\Users -Recurse -Filter AMEN.bat -ErrorAction SilentlyContinue -Force | Select-Object FullName, Directory -First 10
if ($results) {
  $results | Format-Table
  Write-Host "Lance avec:" -ForegroundColor Green
  Write-Host "cd $($results[0].Directory)" 
  Write-Host ".\AMEN.bat"
} else {
  Write-Host "AMEN.bat non trouve dans C:\Users - tu as bien extrait le zip?" -ForegroundColor Red
  Write-Host "Extraction: clic droit AMEN.zip -> Extraire tout -> C:\Dev\AMEN"
}
