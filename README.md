# Website_und_Anwendungen – Start-Repository für Projekte von Flow-alerta.cab

Universelles, dokumentationsorientiertes Start-Repository für Website- und Anwendungsprojekte (deutsche Fassung, Strukturversion 2.0.0).

> ⌬ Work in Flow-gress | der Beweis, dass Anarchie nur Ordnung ist ◎

## Zweck

Dieses Repository ist die verbindliche Grundstruktur für jedes Website- oder Anwendungsprojekt. Es trennt Quellen, Dokumentation, KI-Arbeit, Gestaltung, Medien, Frontend, Backend, Daten, Infrastruktur, Skripte, Archiv, Projektsteuerung und Arbeitsumgebung. Es ist kein Produktcode, sondern eine Vorlage: Jedes neue Projekt beginnt mit derselben nachvollziehbaren Ordnung. Zu viel ist gewollt, denn nicht Benötigtes wird am Ende entfernt (siehe Projektabschluss-Prüfung).

Der Stand mit englischen Ordnernamen (Strukturversion 1.1.0) bleibt im Tag `v1-englisch` erhalten.

## Neues Projekt starten

1. **Im Firmen-Space:** Kundenordner mit `Skripte/Kundenordner_anlegen.ps1` anlegen. Die Website-Vorlage liegt dann unter `03_Umsetzung/02_Website_und_Anwendungen/`.
   **Auf GitHub:** alternativ **Use this template** wählen; das neue Projekt erhält Dateien und Ordner, aber keine gemeinsame Git-Historie.
2. [`00_README/Projektsteckbrief.md`](00_README/Projektsteckbrief.md) und [`00_README/Projektübersicht.md`](00_README/Projektübersicht.md) ausfüllen.
3. [`00_README/Startanleitung.md`](00_README/Startanleitung.md) vollständig abarbeiten.
4. Dauerhafte Links in [`13_Arbeitsumgebung/00_Linkverzeichnis.md`](13_Arbeitsumgebung/00_Linkverzeichnis.md) erfassen.
5. Rohdaten lokal in `01_Quellen/01_Rohdaten_lokal/` ablegen, nie vertrauliche Originale committen; Herkunft im [Quellenprotokoll](01_Quellen/02_Quellenverzeichnis/Quellenprotokoll.md) festhalten.
6. Produktanforderungen und Lastenheft unter [`02_Dokumentation/`](02_Dokumentation/) anlegen und ausfüllen.

## Verbindliche Struktur

| Bereich | Zweck |
| --- | --- |
| `00_README/` | Einstieg, Projektkontext, Startablauf, Projektsteckbrief |
| `01_Quellen/` | Rohdaten (lokal) und Quellenprotokoll |
| `02_Dokumentation/` | Produktanforderungen, Lastenheft, Benutzerführung, Architekturentscheidungen, Schnittstellen, Qualitätssicherung, Übergabe, Systeme, Abläufe, Sitemap, Texte, Suchmaschinenoptimierung, Recht und Datenschutz, Projektplan und Abnahme |
| `03_KI_Arbeit/` | Aufgabenbeschreibungen für Agenten, Skills, Prompts, Läufe, Prüfungen |
| `04_Gestaltung/` | Wireframes, Gestaltungsdateien, Exporte, Übergabe an die Entwicklung |
| `05_Medien/` | Bearbeitete Medien nach Art und Exportformat sowie freigegebene Endfassungen |
| `06_Frontend/` | Code der Website oder Anwendung, Komponenten, Stile, öffentliche Dateien, Tests |
| `07_Backend/` | Schnittstellen, Dienste, Fachlogik, Datenzugriff, Hintergrundaufgaben, Tests |
| `08_Daten/` | Schemata, Testdaten, Migrationen, Exporte |
| `09_Infrastruktur/` | Umgebungen und Hosting, Container, automatische Tests und Veröffentlichung, Überwachung, Domain |
| `10_Skripte/` | Einrichtung, Entwicklung, Erstellung, Veröffentlichung, Wartung |
| `11_Archiv/` | Abgelöste Dokumente, Gestaltungen, Code und KI-Arbeit |
| `12_Projektsteuerung/` | Änderungsprotokoll, Entscheidungen, Risiken, Aufgaben, Strukturversion |
| `13_Arbeitsumgebung/` | Linkverzeichnis, Werkzeuge, Zugangsübersicht, Inspiration und Vorbilder |

Die Nummerierung bleibt in allen Projekten gleich. Nicht benötigte Bereiche bleiben zunächst leer und werden am Ende bereinigt.

**Technische Namen:** Werkzeuge wie Node, Vite oder Next.js erwarten feste englische Namen (`src`, `public`, `package.json`, `.gitignore`). Diese bleiben innerhalb von `06_Frontend/01_Anwendung/` unverändert.

## Dokumentationsstandard

Die verbindliche Richtlinie ist [`Dokumentationssystem.md`](Dokumentationssystem.md). Sie gilt für Menschen und KI-Agenten. Kurz:

- Dokumentation wird zusammen mit jeder relevanten Änderung an Verhalten, Schnittstellen, Daten, Konfiguration oder Sicherheit aktualisiert.
- System- und Ablaufdokumentationen enden mit Quellenverweisen (Source Map).
- Entscheidungen werden als Architekturentscheidungen festgehalten; nur akzeptierte gelten als aktuelle Leitlinie.
- Alle Dokumente führen Titel, Version, Datum, Autor bzw. Herausgeber und Status (Entwurf, Prüfung, Freigegeben).
- Unsicherheiten werden sichtbar markiert, nicht geraten.

## Quellen und Arbeitsumgebung

- `01_Quellen/01_Rohdaten_lokal/` ist nur für lokale, vertrauliche Originale. Der Inhalt wird durch `.gitignore` nicht versioniert, nur die `README.md`-Dateien.
- Das [Linkverzeichnis](13_Arbeitsumgebung/00_Linkverzeichnis.md) ist die zentrale Stelle für Notion, Figma, GitHub, Hosting und Werkzeuge. Wer etwas verlinken oder nachschlagen will, geht in `13_Arbeitsumgebung/`.

## Projektabschluss-Prüfung

Nach der Abnahme prüft ein Agent das Projekt auf Vollständigkeit, stellt **eine gesammelte Rückfrage** zu allen leeren Bereichen und entfernt diese erst nach Bestätigung. Ablauf: [`12_Projektsteuerung/Projektabschluss-Prüfung.md`](12_Projektsteuerung/Projektabschluss-Prüfung.md).

## Für KI-Agenten

Agenten lesen zuerst [`AGENTS.md`](AGENTS.md), danach `00_README/`, die Dokumentation, das Quellenprotokoll, das Linkverzeichnis und `12_Projektsteuerung/`.

## Herausgeber

**Flow-alerta.cab**

Florian Deinzer · Wasenmühle 1 · 90579 Langenzenn

Mediengestalter Digital & Print (IHK) · zertifizierter KI-Consultant