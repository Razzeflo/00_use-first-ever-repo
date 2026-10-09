# Agentenanweisungen – Website und Anwendung

Gilt für das gesamte Projekt. Zusätzlich gelten die Regeln des Firmen-Space (übergeordnete `AGENTS.md`), falls dieser Ordner dort liegt.

## Pflichtablauf

1. Vor jeder Änderung lesen: [`00_README/`](00_README/), [`Dokumentationssystem.md`](Dokumentationssystem.md), relevante Inhalte aus [`02_Dokumentation/`](02_Dokumentation/), das [Quellenprotokoll](01_Quellen/02_Quellenverzeichnis/Quellenprotokoll.md), das [Linkverzeichnis](13_Arbeitsumgebung/00_Linkverzeichnis.md) und [`12_Projektsteuerung/`](12_Projektsteuerung/).
2. Die tatsächliche Implementierung im Code nachvollziehen; Dokumentation erklärt Verhalten und ersetzt keine Codeprüfung.
3. Bei Änderungen an Verhalten, Schnittstellen, Daten, Konfiguration, Sicherheit, Tests oder Annahmen die betroffene Dokumentation im selben Schritt aktualisieren.
4. System- und Ablaufdokumentationen mit Quellenverweisen (Source Map) pflegen; dauerhafte Entscheidungen als Architekturentscheidung festhalten.
5. Keine vertraulichen Rohdaten aus `01_Quellen/01_Rohdaten_lokal/` committen. Stattdessen Herkunft und zulässige Verwendung im Quellenprotokoll dokumentieren.
6. Vor Abschluss Markdown-Links, Dateipfade und die Übereinstimmung von Code und Dokumentation prüfen.
7. Jede Arbeit im [Änderungsprotokoll](12_Projektsteuerung/Änderungsprotokoll.md) und offene Punkte in [Aufgaben](12_Projektsteuerung/Aufgaben.md) festhalten, damit jeder andere Agent nahtlos weiterarbeiten kann.

## Strukturregeln

- Die nummerierten Hauptordner bleiben erhalten; neue Inhalte werden im passenden vorhandenen Bereich abgelegt. Welche Bereiche für das Projekt vorgesehen sind, steht im [Projektsteckbrief](00_README/Projektsteckbrief.md).
- Jeder Ordner hat eine `README.md`. Vor dem Ablegen die README des Zielordners lesen.
- Dauerhafte Notion-, Figma-, GitHub- und Werkzeug-Links gehören ins Linkverzeichnis, nicht in Rohdaten.
- `11_Archiv/` enthält nur abgelöste Inhalte; aktive Inhalte werden nicht archiviert.
- Originale des Kunden bleiben im Kundenordner unter `05_Kundenmaterial`; `05_Medien/` enthält nur bearbeitete Dateien.
- Namen mit Umlauten (ä, ö, ü, ß), Begriffe ausschreiben, keine Leerzeichen, keine „(1)“-Kopien, Muster `JJJJ-MM-TT_Thema_vN.ext`.
- Technische Namen von Werkzeugen (`src`, `public`, `package.json`, `.gitignore`) bleiben unverändert.

## Sicherheitsregeln

- Nichts endgültig löschen; Abgelöstes ins Archiv. Vor dem Verschieben oder Umbenennen Plan zeigen und auf Bestätigung warten.
- Keine Passwörter, Schlüssel oder Tokens in Dateien. Zugangsdaten gehören in den Passwortmanager; hier steht nur, wer wo Zugriff hat.
- Kundendaten nicht an externe Dienste weitergeben, ohne dass Flo es ausdrücklich freigibt.

## Projektabschluss-Prüfung

Auslöser: Flo sagt z. B. „Projektabschluss-Prüfung“ oder „Prüfe das Projekt auf Vollständigkeit“. Nur nach der Abnahme starten. Ausführlicher Ablauf: [`12_Projektsteuerung/Projektabschluss-Prüfung.md`](12_Projektsteuerung/Projektabschluss-Prüfung.md).

1. **Vollständigkeit prüfen:** Projektsteckbrief mit dem Ordner vergleichen, offene Platzhalter `[ … ]` und Aufgaben suchen, Dokumentstatus prüfen (Entwurf, Prüfung, Freigegeben), Abnahmeprotokoll und Links kontrollieren.
2. **Leere Bereiche finden:** `10_Skripte/05_Wartung/Leere_Bereiche_finden.ps1` ausführen. Es listet Ordner, die nur `README.md`, `AGENTS.md` oder `.gitkeep` enthalten.
3. **Eine gesammelte Rückfrage stellen** (nicht je Ordner). Die leeren Bereiche werden gruppiert vorgeschlagen:
   - A: Entfernen vorgeschlagen (z. B. `07_Backend`, `08_Daten`)
   - B: Behalten (Pflichtbereiche: `00_README`, `11_Archiv`, `12_Projektsteuerung`, `13_Arbeitsumgebung`, `01_Quellen/02_Quellenverzeichnis`, `02_Dokumentation/14_Projektplan_und_Abnahme/03_Abnahme`)
   - C: Unklar (z. B. bei geplanter Wartung oder Folgeauftrag)
   Flo antwortet gesammelt, z. B. „A und C entfernen“ oder „alles wie vorgeschlagen“.
4. **Bericht und Plan zeigen**, auf ausdrückliche Bestätigung warten.
5. **Aufräumen:** Nur Ordner entfernen, die ausschließlich `README.md`, `AGENTS.md` oder `.gitkeep` enthalten. Ein Ordner mit auch nur einer anderen Datei bleibt. Pflichtbereiche nie entfernen.
6. **Protokollieren:** Entfernte Bereiche im Änderungsprotokoll und in `12_Projektsteuerung/Strukturversion.md` (Abweichung dieses Projekts von der Vorlage) eintragen; die Aufräumung als eigenen Git-Commit festhalten, damit sie rückgängig zu machen ist.