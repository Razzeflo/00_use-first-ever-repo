# Agentenanweisungen

## Pflichtablauf

1. Vor jeder Änderung [`00_readme/`](00_readme/), [`repo-local-documentation-system.md`](repo-local-documentation-system.md), relevante Inhalte aus [`02_docs/`](02_docs/), das [Source-Log](01_sources/03_source_register/01_source-log.md), das [Link-Register](01_sources/02_references/00_link-register.md) und [`12_meta/`](12_meta/) prüfen.
2. Die tatsächliche Implementierung im Code nachvollziehen; Dokumentation erklärt Verhalten und ersetzt keine Codeprüfung.
3. Bei Änderungen an Verhalten, Schnittstellen, Daten, Konfiguration, Sicherheit, Tests oder Annahmen betroffene Dokumentation im selben Change aktualisieren.
4. System- und Flow-Dokumentationen mit einer Source Map pflegen; dauerhafte Entscheidungen als ADR erfassen.
5. Keine sensiblen Rohquellen aus `01_sources/01_raw_inputs/` committen. Stattdessen Herkunft und zulässige Referenz im Source-Log dokumentieren.
6. Vor Abschluss Markdown-Links, Dateipfade und die Übereinstimmung von Code und Dokumentation prüfen.

## Strukturregeln

- Die nummerierten Hauptordner bleiben erhalten; neue Inhalte werden im passenden vorhandenen Bereich abgelegt.
- Dauerhafte Notion-, Figma- und externe Tool-Links gehören in das Link-Register, nicht in Roh-Exporte.
- `11_archive/` enthält nur abgelöste Artefakte; aktive Inhalte werden nicht archiviert.
