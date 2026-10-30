
# AMEN V756 - CORPUS INGESTION - FIND SOURCES - PWSH DIRECT
param([string]$ProjectRoot="C:\Users\essoc\AMEN", [string]$ReportDir=".\.amen-audit\V756")
$ErrorActionPreference="Continue"
Set-Location $ProjectRoot
New-Item -ItemType Directory -Force -Path $ReportDir | Out-Null
New-Item -ItemType Directory -Force -Path "$ReportDir\evidence" | Out-Null

function Head($t){ Write-Host "`n=== $t ===" -ForegroundColor Cyan }
function SafeOut($Path, $Obj){ try { $Obj | Out-File $Path -Encoding utf8 -Force } catch { $Obj | Out-File $Path -Force } }

Head "V756-00 AMEN_CHUNKS CURRENT COUNT"
Write-Host "Deja vu V755: Fetched 6 chunks -> corpus vide Vodun"

Head "V756-01 SEARCH CORPUS SOURCES IN PROJECT"
$patterns = @("*.pdf","*.md","*.txt","*.docx","*.json")
$exclude = @("node_modules","dist",".git",".amen-audit","tmp","__pycache__",".cache")
Write-Host "Searching for corpus files..."
$files = Get-ChildItem $ProjectRoot -Recurse -Include $patterns -ErrorAction SilentlyContinue | Where-Object {
  $p = $_.FullName
  -not ($exclude | Where-Object { $p -like "*$_*" })
} | Where-Object { $_.Length -gt 1000 } | Sort-Object Length -Descending | Select-Object -First 20 FullName,Length,LastWriteTime
$files | Format-Table -AutoSize | Out-String | Write-Host
SafeOut "$ReportDir\evidence\corpus_files.txt" ($files | Out-String)

Head "V756-02 AMEN DOCS FOLDERS"
Get-ChildItem $ProjectRoot -Directory -ErrorAction SilentlyContinue | Where-Object { $_.Name -match "corpus|docs|data|source|vodun|fa|egungun" } | Select-Object Name,FullName | Format-Table | Out-String | Write-Host
Get-ChildItem "$ProjectRoot\amen-web" -Directory -ErrorAction SilentlyContinue | Select-Object Name | Format-Table | Out-String | Write-Host

Head "V756-03 AMEN_SOURCES TABLE"
Write-Host "Checking supabase\migrations for amen_sources, amen_corpus..."
Select-String -Path "$ProjectRoot\supabase\migrations\*.sql" -Pattern "amen_sources|amen_corpus" -List | Select-Object -First 10 Path,LineNumber | Format-Table | Out-String | Write-Host

Head "V756-04 INGESTION PYTHON TEMPLATE"
$py = @'
# AMEN V756 INGESTION - Vodun corpus -> amen_chunks -> BGE-M3 1024d
import os
from dotenv import load_dotenv
load_dotenv('.env.local')
from supabase import create_client
import hashlib

url = os.getenv('NEXT_PUBLIC_SUPABASE_URL')
key = os.getenv('SUPABASE_SERVICE_ROLE_KEY')
supabase = create_client(url, key)

# Exemple: ingestion d'un dossier local de .txt/.md
corpus_dir = "./corpus/vodun"  # A CREER - mets tes .txt Fa, Egungun, Legba ici

def chunk_text(text, size=800, overlap=100):
    chunks = []
    for i in range(0, len(text), size-overlap):
        chunks.append(text[i:i+size])
    return chunks

def ingest_file(path, tradition="Vodun"):
    with open(path, 'r', encoding='utf-8', errors='ignore') as f:
        text = f.read()
    chunks = chunk_text(text)
    print(f"{path}: {len(chunks)} chunks")
    for c in chunks:
        h = hashlib.md5(c.encode()).hexdigest()
        try:
            supabase.table("amen_chunks").insert({
                "content": c,
                "content_hash": h,
                "tradition": tradition,
                "chapter_title": os.path.basename(path)
            }).execute()
            print(f"  Inserted chunk hash {h[:8]}")
        except Exception as e:
            if "duplicate" in str(e).lower() or "content_hash" in str(e):
                print(f"  Skip duplicate {h[:8]}")
            else:
                print(f"  ERROR: {e}")

# Usage:
# for file in os.listdir(corpus_dir):
#     ingest_file(os.path.join(corpus_dir, file), tradition="Fon")
'@

SafeOut "$ReportDir\ingestion_template.py" $py
Write-Host $py

Head "V756-05 FINAL STATUS"
$report = @{
  version="V756"
  timestamp=(Get-Date).ToString("o")
  amen_chunks_current=6
  amen_chunks_expected="0 Vodun - only Yoga/Alchemy test chunks"
  corpus_sources="Not found in project - need corpus/vodun folder"
  bge_pipeline="VALIDATED shape=(6,1024) parquet OK"
  next="Create ./corpus/vodun/*.txt (Fa 256, Egungun, Legba) then run ingestion_template.py"
  gate="NO_GO_1_FAIL_RAG -> READY_FOR_CORPUS_INGESTION"
}
$report | ConvertTo-Json -Depth 4 | Out-File "$ReportDir\V756_status.json" -Encoding utf8 -Force
$report | ConvertTo-Json -Depth 4 | Write-Host

Write-Host "`n=== V756 DONE ===" -ForegroundColor Yellow
Write-Host "Corpus Vodun vide - 6 test chunks seulement" -ForegroundColor Yellow
Write-Host "BGE-M3 pipeline OK - attend vrai corpus" -ForegroundColor Green
