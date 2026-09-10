$scores=@{Architecture=8;Frontend=8;Backend=6;UxUi=9;Securite=7;Tests=8;Performance=7;Accessibilite=4;Pwa=2;Seo=4;AiRag=2;I18n=4}
$brut=($scores.Values|Measure-Object -Sum).Sum
$norm=[math]::Round(($brut/105)*100,1)
Write-Host "Brut $brut/105 => $norm/100" -ForegroundColor Cyan
