# Repo-Local Documentation System for Humans & Agents

## Summary

Dieses Repository führt eine dauerhafte, repository-lokale Wissensbasis für Menschen und AI-Agenten. Der Code bleibt die Quelle der Implementierungswahrheit. Die Dokumentation erklärt Verhalten, Grenzen, Annahmen, wichtige Abläufe und die relevanten Quelldateien auf einer passenden Abstraktionsebene.

## Goals

- Wichtige Systeme und Abläufe schnell verständlich machen.
- Implizite Annahmen, Risiken und Dokumentationslücken sichtbar machen.
- Dokumentation gemeinsam mit Code prüfen und aktualisieren.
- Repository-Anweisungen kurz halten und Detailwissen in Markdown dokumentieren.

## Repository Mapping

| Zweck | Repository-Pfad |
|---|---|
| Einstieg und Projektkontext | `00_readme/` |
| Quellen, Herkunft und dauerhafte externe Verweise | `01_sources/` |
| Notion-, Figma- und Tool-Verweise | `01_sources/02_references/00_link-register.md` |
| Dauerhafte Fach- und Technikdokumentation | `02_docs/` |
| Architekturentscheidungen | `02_docs/04_architecture_adr/` |
| Dokumentationsregeln, Changelog, Risiken | `12_meta/` |

Neue System- und Flow-Dokumentationen werden unter `02_docs/` in passend benannten Unterordnern abgelegt. Der Source-Log bleibt in `01_sources/03_source_register/01_source-log.md`.

Rohquellen und ungeprüfte Link-Exporte verbleiben lokal unter `01_sources/01_raw_inputs/`; sie werden nicht versioniert. Dauerhafte Notion-, Figma- und externe Tool-Verweise werden ausschließlich im Link-Register gepflegt.

## Documentation Types

### System Documentation

Eine Systemdokumentation beschreibt einen zusammenhängenden Bereich wie Modul, Service, Feature, Integration oder Domänenkonzept. Sie behandelt Zweck, Grenzen, Daten und Zustand, Schnittstellen, Abhängigkeiten, Invarianten, Fehlerbehandlung, Sicherheit, Tests und eine Source Map zu den wichtigsten Dateien.

### Flow Documentation

Eine Flow-Dokumentation beschreibt wichtige Abläufe über mehrere Systeme hinweg. Sie enthält Trigger, Beteiligte, Schritte, Zustandsänderungen, Erfolgs- und Fehlerverhalten, externe Abhängigkeiten, Observability, Tests und eine Source Map.

### Architecture Decision Records

ADRs liegen unter `02_docs/04_architecture_adr/`. Sie dokumentieren dauerhafte technische Entscheidungen und Trade-offs. Nur ADRs mit Status `Accepted` gelten als aktuelle Leitlinie. Eine akzeptierte ADR wird bei einer abgelösten Entscheidung nicht umgeschrieben: Es wird eine neue ADR erstellt und die alte als `Superseded` markiert.

## Documentation Style

- Klar, direkt und in stabilem Markdown schreiben.
- Verhalten, Verantwortung, Grenzen, Invarianten und Fallstricke erklären; keine Codezeilen nacherzählen.
- Relative Links zu verwandten Dokumenten und wichtigen Quelldateien verwenden.
- Unsicherheiten ausdrücklich markieren, nicht vermuten.
- Jede System- und Flow-Dokumentation mit einer Source Map abschließen.

## Keeping Docs Updated

Dokumentation wird im selben Change aktualisiert, wenn sich Verhalten, Verantwortlichkeiten, Abläufe, Schnittstellen, Daten, Konfiguration, Fehlerbehandlung, Sicherheitsannahmen, Tests oder Glossarbegriffe ändern. Wenn Code und Dokumentation nicht übereinstimmen, muss einer der beiden Teile angepasst oder die Abweichung zur Prüfung klar benannt werden.

## Agent Workflow

1. `AGENTS.md` und `00_readme/` lesen, sofern vorhanden.
2. Relevante Dokumentation unter `02_docs/`, den Source-Log, das Link-Register und `12_meta/` prüfen.
3. Implementierungsdetails im Code nachvollziehen.
4. Änderung umsetzen.
5. Betroffene Dokumentation, Source Maps, ADRs und Risiken aktualisieren.
6. Vor Abschluss prüfen, dass Dokumentation und Code übereinstimmen.

## Viewing Documentation with MDTS

Optional kann die Markdown-Dokumentation im Repository-Root mit `npx mdts` betrachtet werden. Da dieser Befehl Pakete aus npm laden und ausführen kann, muss das Paket zuvor geprüft und als vertrauenswürdig eingestuft werden.
