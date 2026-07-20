# USE-FIRST-EVER-REPO

Universelles, dokumentationsorientiertes Start-Repository für Projekte von Flow-alerta.cab.

> ⌬ Work in Flow-gress | der Beweis, dass Anarchie nur Ordnung ist ◎

## Zweck

Dieses Repository ist die verbindliche Grundstruktur für neue Projekte. Es trennt Quellen, Dokumentation, AI-Arbeit, Design, Assets, Anwendungscode, Daten, Infrastruktur und Betrieb. Es ist kein Produktcode, sondern ein GitHub-Template: Jedes neue Projekt beginnt mit derselben nachvollziehbaren Ordnung.

## Neues Projekt starten

1. Auf GitHub **Use this template** wählen und ein neues Repository erstellen. Das neue Projekt erhält Dateien und Ordner, aber keine gemeinsame Git-Historie mit diesem Template.
2. Projektname, Ziel, Status und Verantwortlichkeiten in [`00_readme/00_project-overview.md`](00_readme/00_project-overview.md) ausfüllen.
3. [`00_readme/01_quickstart.md`](00_readme/01_quickstart.md) vollständig abarbeiten.
4. Dauerhafte Notion-, Figma- und Tool-Verweise in [`01_sources/02_references/00_link-register.md`](01_sources/02_references/00_link-register.md) erfassen.
5. Rohquellen lokal ablegen, aber niemals vertrauliche Originaldaten committen; Herkunft und zulässige Referenz im [Source-Log](01_sources/03_source_register/01_source-log.md) dokumentieren.
6. PRD, Lastenheft und die für das Projekt relevanten Vorlagen unter [`02_docs/`](02_docs/) anlegen und ausfüllen.

## Verbindliche Struktur

| Bereich | Zweck |
|---|---|
| `00_readme/` | Einstieg, Projektkontext und Startablauf |
| `01_sources/` | Rohquellen, Referenzen, Link-Register und Quellenherkunft |
| `02_docs/` | PRD, Anforderungen, Architektur, System- und Flow-Dokumentation, API, QA und Übergabe |
| `03_ai_work/` | Agent-Briefs, Skills, Prompts, Runs und Reviews |
| `04_design/` | Wireframes, UI-Dateien, Exporte und Design-Handover |
| `05_assets/` | Roh-, optimierte und freigegebene Assets |
| `06_frontend/` | Frontend-Anwendung, Komponenten, Styles, Public-Dateien und Tests |
| `07_backend/` | APIs, Services, Domäne, Datenzugriff, Jobs und Tests |
| `08_data/` | Schemata, Seeds, Migrationen und Exporte |
| `09_infra/` | Umgebungen, Container, CI/CD, IaC und Monitoring |
| `10_scripts/` | Setup-, Entwicklungs-, Build-, Release- und Wartungsskripte |
| `11_archive/` | Abgelöste Dokumente, Designs, Code und AI-Artefakte |
| `12_meta/` | Changelog, Entscheidungen, Risiken, TODOs und Strukturversion |

Nicht benötigte Bereiche bleiben leer. Die Nummerierung und die vorhandenen Hauptordner werden nicht umbenannt oder neu sortiert.

## Dokumentationsstandard

Die verbindliche Detailrichtlinie ist [`repo-local-documentation-system.md`](repo-local-documentation-system.md). Sie gilt für Menschen und AI-Agenten. Kurz gesagt:

- Dokumentation wird zusammen mit jeder relevanten Verhaltens-, Schnittstellen-, Daten-, Konfigurations- oder Sicherheitsänderung aktualisiert.
- System- und Flow-Dokumentationen enden immer mit einer Source Map zu den wichtigsten Dateien.
- Entscheidungen werden als ADRs festgehalten; nur `Accepted`-ADRs sind aktuelle Leitlinie.
- Alle Dokumente führen Titel, Version, Datum, Autor bzw. Herausgeber und Status.
- Unsicherheiten werden sichtbar markiert, nicht geraten.

## Quellen und externe Verweise

`01_sources/01_raw_inputs/` ist nur für lokale, sensible Rohquellen wie Chat-, Mail-, Meeting- oder Sprach-Exporte. Sein Inhalt wird durch `.gitignore` nicht versioniert; ausschließlich `.gitkeep` erhält die Ordnerstruktur.

Die dauerhafte, versionierte Referenzübersicht liegt im [Link-Register](01_sources/02_references/00_link-register.md):

- [`01_notion/`](01_sources/02_references/01_notion/) für Notion-Seiten, Datenbanken und Projekt-Hubs
- [`02_figma/`](01_sources/02_references/02_figma/) für Figma-Dateien, Komponentenbibliotheken und Prototypen
- [`03_external_tools/`](01_sources/02_references/03_external_tools/) für Jira, Linear, Slack, Google Drive, Miro sowie Deploy- und Analyse-Dashboards

`01_sources/01_raw_inputs/05_links_exports/` bleibt ausschließlich für unverarbeitete Link-Exporte und Recherche-Sammlungen.

## Pflichtartefakte

Zu Beginn werden mindestens [`PRD_Template.md`](02_docs/01_prd/PRD_Template.md), [`Lastenheft_Template.md`](02_docs/02_lastenheft/Lastenheft_Template.md) und das [Source-Log](01_sources/03_source_register/01_source-log.md) angelegt bzw. ausgefüllt. Je nach Projekt kommen UI/UX-, ADR-, System-, Flow-, API-, QA- und Übergabe-Dokumentation hinzu.

## Für AI-Agenten

Agenten lesen zuerst [`AGENTS.md`](AGENTS.md), danach Projektkontext, Dokumentation, Source-Log, Link-Register und Meta-Logs. Detaillierte Arbeits- und Aktualisierungsregeln stehen in der repository-lokalen Dokumentationsrichtlinie.

## Herausgeber

**Flow-alerta.cab**<br>
Florian Deinzer · Wasenmühle 1 · 90579 Langenzenn<br>
Mediengestalter Digital & Print (IHK) · zertifizierter KI-Consultant
