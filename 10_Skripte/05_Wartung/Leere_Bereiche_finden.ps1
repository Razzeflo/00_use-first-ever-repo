<#
.SYNOPSIS
  Findet Ordner, die nur README.md, AGENTS.md oder .gitkeep enthalten (leere Bereiche) und entfernt sie auf Wunsch.
.DESCRIPTION
  Hilfsskript für die Projektabschluss-Prüfung. Standard: nur auflisten, gruppiert nach Hauptbereich.
  Mit -Entfernen -Auswahl 'Pfad1','Pfad2' (relativ zu -Pfad) werden die gewählten Ordner nach erneuter Prüfung entfernt.
  Pflichtbereiche werden nie entfernt. Entfernt werden ausschließlich Ordner ohne weitere Dateien.
.EXAMPLE
  .\Leere_Bereiche_finden.ps1 -Pfad 'G:\...\Website_und_Anwendungen'
  .\Leere_Bereiche_finden.ps1 -Pfad 'G:\...\Website_und_Anwendungen' -Entfernen -Auswahl '07_Backend','08_Daten'
#>
param(
  [Parameter(Mandatory)][string]$Pfad,
  [switch]$Entfernen,
  [string[]]$Auswahl
)
$ErrorActionPreference = 'Stop'
$Pfad = (Resolve-Path -LiteralPath $Pfad).Path.TrimEnd('\')
$ignorierbar = @('README.md', 'AGENTS.md', '.gitkeep', 'desktop.ini')
$pflicht = @('00_README', '11_Archiv', '12_Projektsteuerung', '13_Arbeitsumgebung',
             '01_Quellen\02_Quellenverzeichnis', '02_Dokumentation\14_Projektplan_und_Abnahme\03_Abnahme')

function Ist-Leer([string]$ordner) {
  $echte = Get-ChildItem -LiteralPath $ordner -Recurse -File -Force |
    Where-Object { $ignorierbar -notcontains $_.Name -and $_.FullName -notmatch '\\(\.git|node_modules)\\' }
  return (-not $echte)
}
function Ist-Pflicht([string]$rel) {
  foreach ($p in $pflicht) { if ($rel -eq $p -or $rel.StartsWith("$p\") -or $p.StartsWith("$rel\")) { return $true } }
  return $false
}

# Oberste leere Ordner sammeln (Unterordner leerer Ordner werden nicht einzeln gemeldet)
$leer = New-Object System.Collections.Generic.List[string]
function Suche([string]$ordner) {
  foreach ($d in Get-ChildItem -LiteralPath $ordner -Directory -Force | Where-Object { $_.Name -notin '.git', 'node_modules' }) {
    $rel = $d.FullName.Substring($Pfad.Length + 1)
    if (Ist-Leer $d.FullName) { $leer.Add($rel) } else { Suche $d.FullName }
  }
}
Suche $Pfad

if (-not $Entfernen) {
  "Leere Bereiche in: $Pfad`n"
  foreach ($gruppe in ($leer | Group-Object { $_.Split('\')[0] })) {
    "{0}  ({1})" -f $gruppe.Name, $gruppe.Count
    foreach ($r in $gruppe.Group) { "   {0}  {1}" -f $(if (Ist-Pflicht $r) { '[B behalten]' } else { '[A/C prüfen]' }), $r }
  }
  "`nGesamt: $($leer.Count) leere Bereiche. Entfernen: -Entfernen -Auswahl <Pfade>."
  return
}

if (-not $Auswahl) { throw 'Mit -Entfernen muss -Auswahl angegeben werden.' }
foreach ($a in $Auswahl) {
  $rel = $a.Trim().Replace('/', '\').Trim('\')
  $voll = Join-Path $Pfad $rel
  if (-not (Test-Path -LiteralPath $voll)) { "Übersprungen (nicht gefunden): $rel"; continue }
  if (Ist-Pflicht $rel) { "Übersprungen (Pflichtbereich): $rel"; continue }
  if (-not (Ist-Leer $voll)) { "Übersprungen (enthält Dateien): $rel"; continue }
  Remove-Item -LiteralPath $voll -Recurse -Force
  "Entfernt: $rel"
}
