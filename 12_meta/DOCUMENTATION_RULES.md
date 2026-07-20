# Dokumentationsregeln

Die vollständige, kanonische Richtlinie ist [`repo-local-documentation-system.md`](../repo-local-documentation-system.md). Dieses Dokument enthält nur die kurz prüfbaren Projektregeln.

## Verbindliche Regeln

1. Dokumentation im selben Change aktualisieren, wenn sich Verhalten, Schnittstellen, Daten, Konfiguration, Sicherheit, Tests oder wichtige Annahmen ändern.
2. Quellen im [Source-Log](../01_sources/03_source_register/01_source-log.md) und dauerhafte externe Verweise im [Link-Register](../01_sources/02_references/00_link-register.md) erfassen.
3. Anforderungen versionieren; keine freigegebenen Anforderungen still überschreiben.
4. Neue System- und Flow-Dokumentationen mit einer Source Map abschließen.
5. Entscheidungen als ADR dokumentieren; abgelöste `Accepted`-ADRs als `Superseded` markieren und durch eine neue ADR ersetzen.
6. Offene Risiken und Aufgaben in `12_meta/03_risks.md` beziehungsweise `12_meta/04_todo.md` pflegen.

## Pflichtmetadaten

Jedes offizielle Dokument enthält:

- Titel
- Version
- Datum
- Autor oder Herausgeber
- Status: `Draft`, `Review` oder `Final`
