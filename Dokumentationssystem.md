# Dokumentationssystem für Menschen und Agenten

## Zusammenfassung

Dieses Projekt führt eine dauerhafte, im Projekt liegende Wissensbasis für Menschen und KI-Agenten. Der Code bleibt die Quelle der Implementierungswahrheit. Die Dokumentation erklärt Verhalten, Grenzen, Annahmen, wichtige Abläufe und die relevanten Quelldateien auf einer passenden Abstraktionsebene.

## Ziele

- Wichtige Systeme und Abläufe schnell verständlich machen.
- Unausgesprochene Annahmen, Risiken und Dokumentationslücken sichtbar machen.
- Dokumentation gemeinsam mit dem Code prüfen und aktualisieren.
- Anweisungen für Agenten kurz halten und Detailwissen in Markdown dokumentieren.

## Zuordnung der Bereiche

| Zweck | Pfad im Projekt |
| --- | --- |
| Einstieg und Projektkontext | `00_README/` |
| Quellen, Herkunft | `01_Quellen/` |
| Dauerhafte Links zu Notion, Figma, GitHub, Werkzeugen | `13_Arbeitsumgebung/00_Linkverzeichnis.md` |
| Fach- und Technikdokumentation | `02_Dokumentation/` |
| Architekturentscheidungen | `02_Dokumentation/04_Architekturentscheidungen/` |
| Regeln, Änderungsprotokoll, Risiken, Aufgaben | `12_Projektsteuerung/` |

Neue System- und Ablaufdokumentationen werden unter `02_Dokumentation/08_Systeme/` bzw. `09_Abläufe/` in passend benannten Dateien abgelegt. Das Quellenprotokoll bleibt in `01_Quellen/02_Quellenverzeichnis/Quellenprotokoll.md`.

Rohdaten und ungeprüfte Link-Exporte bleiben lokal unter `01_Quellen/01_Rohdaten_lokal/` und werden nicht versioniert. Dauerhafte Links werden ausschließlich im Linkverzeichnis gepflegt.

## Dokumentationstypen

### Systemdokumentation

Beschreibt einen zusammenhängenden Bereich wie Modul, Dienst, Funktion, Integration oder Fachkonzept. Sie behandelt Zweck, Grenzen, Daten und Zustand, Schnittstellen, Abhängigkeiten, Invarianten, Fehlerbehandlung, Sicherheit, Tests und Quellenverweise (Source Map) zu den wichtigsten Dateien.

### Ablaufdokumentation

Beschreibt wichtige Abläufe über mehrere Systeme hinweg. Sie enthält Auslöser, Beteiligte, Schritte, Zustandsänderungen, Erfolgs- und Fehlerverhalten, externe Abhängigkeiten, Beobachtbarkeit (Protokolle, Kennzahlen, Alarme), Tests und Quellenverweise.

### Architekturentscheidungen

Liegen unter `02_Dokumentation/04_Architekturentscheidungen/`. Sie dokumentieren dauerhafte technische Entscheidungen und Abwägungen. Nur Entscheidungen mit Status „Akzeptiert“ gelten als aktuelle Leitlinie. Eine akzeptierte Entscheidung wird bei einer Ablösung nicht umgeschrieben: Es entsteht eine neue Entscheidung, die alte wird auf „Abgelöst“ gesetzt.

## Dokumentationsstil

- Klar, direkt und in stabilem Markdown schreiben, Deutsch mit Umlauten, Du-Form, Begriffe ausschreiben.
- Verhalten, Verantwortung, Grenzen, Invarianten und Fallstricke erklären; keine Codezeilen nacherzählen.
- Relative Links zu verwandten Dokumenten und wichtigen Quelldateien verwenden.
- Unsicherheiten ausdrücklich markieren, nicht vermuten.
- Jede System- und Ablaufdokumentation mit Quellenverweisen abschließen.
- Jedes offizielle Dokument führt Titel, Version, Datum, Autor oder Herausgeber und Status (Entwurf, Prüfung, Freigegeben).

## Dokumentation aktuell halten

Dokumentation wird im selben Schritt aktualisiert, wenn sich Verhalten, Verantwortlichkeiten, Abläufe, Schnittstellen, Daten, Konfiguration, Fehlerbehandlung, Sicherheitsannahmen, Tests oder Begriffe ändern. Wenn Code und Dokumentation nicht übereinstimmen, muss einer von beiden angepasst oder die Abweichung zur Prüfung klar benannt werden.

## Ablauf für Agenten

1. `AGENTS.md` und `00_README/` lesen.
2. Relevante Dokumentation unter `02_Dokumentation/`, das Quellenprotokoll, das Linkverzeichnis und `12_Projektsteuerung/` prüfen.
3. Implementierungsdetails im Code nachvollziehen.
4. Änderung umsetzen.
5. Betroffene Dokumentation, Quellenverweise, Architekturentscheidungen, Risiken und das Änderungsprotokoll aktualisieren.
6. Vor Abschluss prüfen, dass Dokumentation und Code übereinstimmen.

## Dokumentation ansehen mit MDTS

Optional kann die Markdown-Dokumentation im Projektwurzelordner mit `npx mdts` betrachtet werden. Da dieser Befehl Pakete aus npm laden und ausführen kann, muss das Paket zuvor geprüft und als vertrauenswürdig eingestuft werden.