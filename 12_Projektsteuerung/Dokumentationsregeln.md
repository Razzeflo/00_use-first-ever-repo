# Dokumentationsregeln

Die vollständige, kanonische Richtlinie ist [`Dokumentationssystem.md`](../Dokumentationssystem.md). Dieses Dokument enthält nur die kurz prüfbaren Projektregeln.

## Verbindliche Regeln

1. Dokumentation im selben Change aktualisieren, wenn sich Verhalten, Schnittstellen, Daten, Konfiguration, Sicherheit, Tests oder wichtige Annahmen ändern.
2. Quellen im [Quellenprotokoll](../01_Quellen/02_Quellenverzeichnis/Quellenprotokoll.md) und dauerhafte externe Verweise im [Linkverzeichnis](../13_Arbeitsumgebung/00_Linkverzeichnis.md) erfassen.
3. Anforderungen versionieren; keine freigegebenen Anforderungen still überschreiben.
4. Neue System- und Ablaufdokumentationen mit einer Quellenverweise abschließen.
5. Entscheidungen als Architekturentscheidung dokumentieren; abgelöste akzeptierte Architekturentscheidungs als `Abgelöst` markieren und durch eine neue Architekturentscheidung ersetzen.
6. Offene Risiken und Aufgaben in `12_Projektsteuerung/Risiken.md` beziehungsweise `12_Projektsteuerung/Aufgaben.md` pflegen.

## Pflichtmetadaten

Jedes offizielle Dokument enthält:

- Titel
- Version
- Datum
- Autor oder Herausgeber
- Status: `Entwurf`, `Prüfung` oder `Freigegeben`
