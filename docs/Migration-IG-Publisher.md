# Migration: Simplifier-Guide → HL7 IG Publisher (v2027)

**Ziel:** Für v2027 die Narrative vom Simplifier-Guide-Format (`implementation-guides/…`) auf den HL7 **IG Publisher** umziehen. Blaupause = **`kerndatensatz-basis`** (nutzt Template + Multi-Language-i18n genau so, wie gewünscht).

## Entscheidungen (fix)
- **Template:** `fhir2.base.template#current` (wie basis; aktuell steht `fhir.base.template#current` → umstellen).
- **Zweisprachigkeit:** IG-Publisher-**Multi-Language-Funktion**. Basissprache **de**, Englisch als **`.po`-Export**.
  - `sushi-config.yaml` → `parameters: { i18n-default-lang: de, i18n-lang: [en], translation-sources: [input/translations/en] }`
  - (basis macht es spiegelverkehrt: default en, Übersetzung de.)

## Ist-Zustand
- IG-Publisher-Gerüst vorhanden und baut (`ig.ini`, `template/`, `_genonce.sh`, `output/`, `qa.json`).
- **Aber `input/pagecontent/` = Stub** (`index.md`). Narrative (31 DE + 31 EN Seiten) liegt im Simplifier-Format.
- CI (`main.yml`) macht nur FHIR-Validierung, **kein** IG-Publisher-Build/Deploy.

## Ziel-Struktur (von basis übernehmen)
```
ig.ini                              template = fhir2.base.template#current
sushi-config.yaml                   pages:, menu:, parameters: (i18n, path-pages, path-resource)
input/pagecontent/*.md              Narrativ-Seiten (Basissprache DE)
input/intro-notes/                  StructureDefinition-<id>-intro.md  (Profil-Prosa; via path-pages)
input/translations/en/              .po-Dateien EN:
    ImplementationGuide-mii-ig-modul-patho.po
    pagecontent/                    (je Seite eine .po)
    intro-notes/                    (je intro eine .po)
input/includes/                     menu.xml (optional), fragment-header.html, link-list.md
input/images/ + input/images-source/  Grafiken + PlantUML-Quellen
input/ignoreWarnings.txt
advisor.json, publication-request.json
```

## Syntax-Mapping Simplifier → IG Publisher
| Simplifier | IG Publisher |
|---|---|
| `{{tree}}` / `{{json}}` / `<tabs>` | **entfällt** (Artefaktseiten werden auto-generiert) |
| `{{page-title}}` / `{{index:root}}` | entfällt (Titel/TOC aus IG-Definition + Menü) |
| Profil-`.page.md`/`.guide.md`-Prosa | → `input/intro-notes/StructureDefinition-<id>-intro.md` |
| Übersichtsseiten (Beschreibung, Szenarien, Hierarchie, Kontext, Referenzen, Datensätze, UML, Terminologien) | → `input/pagecontent/<name>.md` + `pages:`/`menu:` |
| `{{render:…}}` (ART-DECOR/PlantUML) | PlantUML → `input/images(-source)/`; ART-DECOR-Renders als statische Bilder |
| `@```from StructureDefinition where…``` | entfällt |
| ReleaseNotes | → `input/pagecontent/changes.md` (+ `version-history.md`) |

## Phasen / To-do

### Phase 0 – Vorbereitung
- [ ] Aktuelle `output/qa.json` als Baseline sichern (Errors/Warnings vor Umzug).
- [ ] `_updatePublisher.sh` laufen lassen (aktuelle publisher.jar).

### Phase 1 – Gerüst & Config (risikoarm)
- [ ] `ig.ini`: Template → `fhir2.base.template#current`.
- [ ] `sushi-config.yaml`: `parameters` (i18n de→en, `path-pages: input/intro-notes`, ggf. `path-resource`), volle `pages:`- und `menu:`-Struktur (an basis orientiert, an Patho angepasst).
- [ ] Ordner anlegen: `input/intro-notes/`, `input/translations/en/{pagecontent,intro-notes}/`, `input/includes/`, `input/images-source/`.
- [ ] `input/ignoreWarnings.txt`, `advisor.json`, `publication-request.json` von basis adaptieren.

### Phase 2 – Narrative-Migration (Hauptarbeit)
- [ ] Übersichtsseiten (DE) nach `input/pagecontent/` konvertieren (Simplifier-Platzhalter entfernen).
- [ ] Profil-Beschreibungen (DE) → `input/intro-notes/StructureDefinition-<id>-intro.md` (17 Profile).
- [ ] Bilder/PlantUML nach `input/images(-source)/`; Links fixen.
- [ ] `index.md` (Impressum/Autoren) füllen.

### Phase 3 – Englisch via .po
- [ ] Publisher einmal bauen → generiert `.po`/Template für übersetzbare Strings.
- [ ] Bestehende EN-Inhalte (aus `implementation-guides/…EN`) in die `.po`-Dateien unter `input/translations/en/` überführen.
- [ ] Prüfen, dass FSH-`Translation`-Extensions (de-DE/en-US) auf Elementebene den Sprachumschalter korrekt bedienen.

### Phase 4 – CI/CD
- [ ] `ig-publisher.yml` (Build + gh-pages-Deploy) von basis übernehmen; `cleanup-gh-pages.yml`, `publish-fsh-generated.yml` optional.
- [ ] GitHub Pages aktivieren → Publikation unter `…github.io/kerndatensatzmodul-PathologieBefund/de/`.

### Phase 5 – Ablösung & Cleanup
- [ ] Vollen `_genonce.sh`-Build; QA gegen Baseline prüfen.
- [ ] Entscheidung: `implementation-guides/…` entfernen (oder für Simplifier-Publikation behalten?).
- [ ] `_build.sh`/README auf neuen Workflow aktualisieren.

## Referenz-Dateien in basis (zum Abschauen)
- `sushi-config.yaml` (pages/menu/parameters), `ig.ini`, `input/translations/de/*`, `input/intro-notes/*`, `input/includes/*`, `.github/workflows/ig-publisher.yml`.
Repo: https://github.com/medizininformatik-initiative/kerndatensatz-basis (Branch main)
