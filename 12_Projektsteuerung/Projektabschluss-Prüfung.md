# Projektabschluss-Prüfung

Ablauf, mit dem ein Projekt nach der Abnahme auf Vollständigkeit geprüft und von leeren Bereichen befreit wird. Gilt für Website-Projekte und (sinngemäß) für den ganzen Kundenordner.

## Auslöser

Flo sagt z. B. „Projektabschluss-Prüfung“ oder „Prüfe das Projekt auf Vollständigkeit“. Nur nach der Abnahme.

## Schritte

1. **Vollständigkeit prüfen**
   - Projektsteckbrief: Sind alle vorgesehenen Bereiche befüllt?
   - Offene Platzhalter `[ … ]` und offene Aufgaben suchen.
   - Dokumentstatus: Entwurf, Prüfung oder Freigegeben?
   - Abnahmeprotokoll, Datenschutz, Impressum, Linkverzeichnis, Übergabedokument vorhanden?
   - Links und Pfade in Markdown-Dateien prüfen.
2. **Leere Bereiche finden:** `10_Skripte/05_Wartung/Leere_Bereiche_finden.ps1 -Pfad <Projektordner>`
3. **Eine gesammelte Rückfrage** an Flo (nicht je Ordner), gruppiert:
   - **A – Entfernen vorgeschlagen:** leer und nicht im Projektsteckbrief vorgesehen
   - **B – Behalten:** Pflichtbereiche und im Steckbrief vorgesehene Bereiche
   - **C – Unklar:** leer, aber möglicherweise später nötig (Wartung, Folgeauftrag)
   Antwortmöglichkeiten: „alles wie vorgeschlagen“, „A und C entfernen“ oder Ausnahmen nennen.
4. **Bericht und Plan** zeigen, ausdrückliche Bestätigung abwarten.
5. **Entfernen:** `Leere_Bereiche_finden.ps1 -Pfad <Projektordner> -Entfernen -Auswahl <Pfade>`. Das Skript prüft jeden Ordner erneut und entfernt nur Ordner, die ausschließlich `README.md`, `AGENTS.md` oder `.gitkeep` enthalten.
6. **Protokollieren:** Eintrag im Änderungsprotokoll, Abweichung in `Strukturversion.md`; Aufräumung als eigenen Git-Commit festhalten.

## Pflichtbereiche (werden nie entfernt)

`00_README`, `11_Archiv`, `12_Projektsteuerung`, `13_Arbeitsumgebung`, `01_Quellen/02_Quellenverzeichnis`, `02_Dokumentation/14_Projektplan_und_Abnahme/03_Abnahme`