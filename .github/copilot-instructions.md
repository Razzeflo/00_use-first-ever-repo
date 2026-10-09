# Copilot-Anweisungen für dieses Projekt

Diese Datei ist kurz gehalten. Maßgeblich sind [`AGENTS.md`](../AGENTS.md) und [`Dokumentationssystem.md`](../Dokumentationssystem.md).

## Dokumentation zuerst

Vor jeder Änderung:

1. Relevante Dokumentation lesen: [`00_README/`](../00_README/), [`Dokumentationssystem.md`](../Dokumentationssystem.md), betroffene Dateien aus [`02_Dokumentation/`](../02_Dokumentation/), das [Quellenprotokoll](../01_Quellen/02_Quellenverzeichnis/Quellenprotokoll.md), das [Linkverzeichnis](../13_Arbeitsumgebung/00_Linkverzeichnis.md) und [`12_Projektsteuerung/`](../12_Projektsteuerung/).
2. Die tatsächliche Implementierung im Code nachvollziehen. Dokumentation erklärt Verhalten, ersetzt aber nicht die Codeprüfung.
3. Nach jeder Änderung an Verhalten, Schnittstellen, Daten, Konfiguration, Sicherheit oder Tests die betroffene Dokumentation im selben Schritt aktualisieren.

## Struktur

Die Ordner `00_README` bis `13_Arbeitsumgebung` sind in der [`README.md`](../README.md) beschrieben. Nummerierung und Hauptordner bleiben erhalten; neue Inhalte werden im passenden Bereich abgelegt. Jeder Ordner hat eine `README.md`, die sagt, was hineingehört.

## Dokumentationstypen

- **Systemdokumentation** (`02_Dokumentation/08_Systeme/`): Zweck, Grenzen, Daten, Schnittstellen, Abhängigkeiten, Fehlerbehandlung, Sicherheit, Tests und Quellenverweise (Source Map).
- **Ablaufdokumentation** (`02_Dokumentation/09_Abläufe/`): Auslöser, Beteiligte, Schritte, Zustandsänderungen, Fehlerverhalten, Abhängigkeiten, Tests und Quellenverweise.
- **Architekturentscheidungen** (`02_Dokumentation/04_Architekturentscheidungen/`): dauerhafte Entscheidungen mit Abwägung. Nur akzeptierte gelten als Leitlinie; Abgelöstes bekommt eine neue Entscheidung, die alte wird auf „Abgelöst“ gesetzt.

## Stil

- Deutsch, Du-Form, klar und direkt, stabiles Markdown, Umlaute verwenden, Begriffe ausschreiben.
- Verhalten, Verantwortung, Grenzen und Fallstricke erklären, nicht Codezeilen nacherzählen.
- Relative Links verwenden. Unsicherheiten ausdrücklich markieren, nicht raten.

<!-- mermaid-ai-skills:start -->
## Mermaid-Diagramme

Wenn Diagramme erstellt, bearbeitet oder visualisiert werden sollen, gelten die Anweisungen in `.github/instructions/mermaid.instructions.md`.
<!-- mermaid-ai-skills:end -->