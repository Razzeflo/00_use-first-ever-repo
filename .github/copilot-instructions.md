# Copilot-Anweisungen für use-first-ever-repo

## Dokumentations-First Ansatz

Dieses Repository folgt einem dokumentationsorientierten Ansatz. **Vor jeder Änderung**:

1. Relevante Dokumentation lesen: [`00_readme/`](../00_readme/), [`repo-local-documentation-system.md`](../repo-local-documentation-system.md), betroffene Dateien aus [`02_docs/`](../02_docs/), [`01_sources/03_source_register/01_source-log.md`](../01_sources/03_source_register/01_source-log.md), [`01_sources/02_references/00_link-register.md`](../01_sources/02_references/00_link-register.md), und [`12_meta/`](../12_meta/).
2. Die tatsächliche Implementierung im Code nachvollziehen — Dokumentation erklärt Verhalten, ersetzt aber nicht die Codeprüfung.
3. Nach jeder Änderung an Verhalten, Schnittstellen, Daten, Konfiguration, Sicherheit oder Tests die betroffene Dokumentation im selben Change aktualisieren.

## Struktur des Repositories

| Ordner | Zweck |
|---|---|
| `00_readme/` | Projektkontext und Quickstart |
| `01_sources/` | Rohquellen (lokal), Link-Register, Source-Log |
| `02_docs/` | PRD, Lastenheft, Architektur (ADRs), System/Flow-Dokumentation, API, QA, Handover |
| `03_ai_work/` | Agent-Briefs, Skills, Prompts, Runs, Reviews |
| `04_design/` | Wireframes, UI, Exporte, Handover |
| `05_assets/` | Roh-, optimiert, freigegeben |
| `06_frontend/` | App, Komponenten, Styles, Public, Tests |
| `07_backend/` | APIs, Services, Domäne, Data Access, Worker/Jobs, Tests |
| `08_data/` | Schemata, Seeds, Migrations, Exporte |
| `09_infra/` | Umgebungen, Container, CI/CD, IaC, Monitoring |
| `10_scripts/` | Setup, Dev, Build, Release, Maintenance |
| `11_archive/` | Abgelöste Artefakte |
| `12_meta/` | Changelog, Entscheidungen, Risiken, TODOs, Versionierung |

Die Nummerierung und Hauptordner bleiben erhalten; neue Inhalte werden im passenden bestehenden Bereich abgelegt.

## Dokumentationstypen

### System Documentation
Beschreibt einen zusammenhängenden Bereich (Modul, Service, Feature). Behandelt Zweck, Grenzen, Daten/Zustand, Schnittstellen, Abhängigkeiten, Invarianten, Fehlerbehandlung, Sicherheit, Tests und **Source Map** zu wichtigen Dateien.

### Flow Documentation
Beschreibt wichtige Abläufe über mehrere Systeme. Enthält Trigger, Beteiligte, Schritte, Zustandsänderungen, Erfolgs-/Fehlerverhalten, externe Abhängigkeiten, Observability, Tests und **Source Map**.

### Architecture Decision Records (ADRs)
Unter `02_docs/04_architecture_adr/` abgelegt. Dokumentieren dauerhafte technische Entscheidungen und Trade-offs. Nur `Accepted`-ADRs sind aktuelle Leitlinie. Abgelöste Entscheidungen erhalten eine neue ADR mit Status `Superseded`, die alte wird nicht überschrieben.

## Dokumentationsstil

- Klar, direkt, stabiles Markdown.
- Verhalten, Verantwortung, Grenzen, Invarianten und Fallstricke erklären — nicht Codezeilen nacherzählen.
- Relative Links zu verwandten Dokumenten und wichtigen Quelldateien verwenden.
- Unsicherheiten ausdrücklich markieren, nicht raten.
- Jede System- und Flow-Dokumentation mit einer **Source Map** abschließen.

## Quellen und externe Verweise

- **Rohquellen** (`01_sources/01_raw_inputs/`): Lokal, nicht versioniert, nur `.gitkeep`
- **Link-Register** (`01_sources/02_references/00_link-register.md`): Dauerhafte Notion-, Figma-, Tool-Verweise
- **Source-Log** (`01_sources/03_source_register/01_source-log.md`): Herkunft und zulässige Referenz für sensible Daten

Keine sensiblen Rohquellen committen. Stattdessen Herkunft und zulässige Referenz im Source-Log dokumentieren. Dauerhafte externe Links gehören ins Link-Register, nicht in Roh-Exporte.

## Workflow für Agents

1. `AGENTS.md` und `00_readme/` lesen.
2. Relevante Dokumentation unter `02_docs/`, Source-Log, Link-Register und `12_meta/` prüfen.
3. Implementierungsdetails im Code nachvollziehen.
4. Änderung umsetzen.
5. Betroffene Dokumentation, Source Maps, ADRs und Risiken aktualisieren.
6. Vor Abschluss prüfen: Markdown-Links korrekt, Dateipfade gültig, Code und Dokumentation stimmen überein.

## Grundprinzipien

- Die Dokumentation ist die primäre Wissensquelle für Verhalten und Abläufe. Code ist die Implementierungswahrheit.
- Jede wesentliche Verhaltens-, Schnittstellen-, Daten-, Konfigurations- oder Sicherheitsänderung erfordert eine zeitgleiche Dokumentationsanpassung.
- Architekturentscheidungen werden als ADRs dokumentiert, nicht als Kommentare im Code vergraben.
- Unsicherheiten und Risiken werden in `12_meta/` sichtbar dokumentiert.

<!-- mermaid-ai-skills:start -->
## Mermaid Diagrams

When the user asks to create, edit, or visualize a diagram, follow the
instructions in `.github/instructions/mermaid.instructions.md`.
<!-- mermaid-ai-skills:end -->
