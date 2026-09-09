# GUIDE FIX - Tu es dans C:\Users\ et AMEN.bat non reconnu

## Pourquoi l'erreur?
Tu as lance:
(base) PS C:\Users> .\AMEN.bat
Mais AMEN.bat est DANS C:\Users\TonNom\Downloads\AMEN\ ou C:\Dev\AMEN\
PowerShell cherche dans C:\Users\ -> il n'y est pas.

## SOLUTION 1 - La bonne (recommandee)
# 1. Trouve ou tu as mis AMEN
Get-ChildItem C:\ -Recurse -Filter AMEN.bat -ErrorAction SilentlyContinue | Select-Object Directory -First 5

# 2. Va dans le dossier
cd "C:\chemin\vers\AMEN"   # <--- REMPLACE par ton vrai chemin
# Exemple:
# cd C:\Users\TonNom\Downloads\AMEN
# ou
# cd C:\Dev\AMEN

# 3. Lance
.\AMEN.bat
# ou
pwsh -File .\AMEN.ps1

## SOLUTION 2 - Chemin complet depuis C:\Users
# Si AMEN est dans Downloads:
C:\Users\%USERNAME%\Downloads\AMEN\AMEN.bat
# ou en pwsh:
& "C:\Users\$env:USERNAME\Downloads\AMEN\AMEN.ps1"

## SOLUTION 3 - Ajouter au PATH (une fois pour toutes)
# Copie AMEN dans C:\Tools\AMEN puis:
$env:Path += ";C:\Tools\AMEN"
# Ensuite depuis n'importe ou:
AMEN.bat

## SOLUTION 4 - One-liner qui marche meme depuis C:\Users
# Telecharge et lance direct (si repo GitHub)
# Invoke-Expression (Invoke-WebRequest https://raw.githubusercontent.com/Khepra2026/amen-web/master/scripts/pwsh/MASTER.ps1)
