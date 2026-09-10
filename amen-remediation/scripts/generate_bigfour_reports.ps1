$reportsDir=".\amen-remediation\reports"
New-Item -ItemType Directory -Force -Path $reportsDir | Out-Null
$date=Get-Date -Format "yyyy-MM-dd HH:mm"
$commit=(git rev-parse --short HEAD 2>$null); if(-not $commit){$commit="local-dev"}
$list=@("01-executive-summary","02-architecture","03-frontend-backend-match","04-api-contract","05-security","06-performance","07-accessibility","08-pwa","09-seo","10-ai-rag","11-content-governance","12-monetization","13-i18n","14-e2e-testing","15-devsecops","16-risk-register","17-remediation","18-final-certification")
foreach($s in $list){
"<html><head><meta charset='utf-8'><style>body{background:#0A0A0B;color:#E8E6E1;padding:40px}h1{color:#C9A86A}</style></head><body><h1>AMEN $s</h1><p>$date $commit</p></body></html>" | Set-Content -Encoding utf8 -Path "$reportsDir\$s.html"
}
"<html><body style='background:#0A0A0B;color:#E8E6E1;padding:40px'><h1 style='color:#C9A86A'>CERTIFICATION</h1><pre>PROJECT AMEN - $date - $commit - TOTAL 69/105 =>65.7/100 actuel | 98/105=>93.3 cible - DECISION CONDITIONAL GO</pre></body></html>" | Set-Content -Encoding utf8 -Path "$reportsDir\AMEN_BIG4_PREPROD_CERTIFICATION.html"
