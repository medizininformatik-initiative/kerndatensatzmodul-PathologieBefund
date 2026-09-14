# Häufige Fehler in diesem Repo — vor jedem Debugging lesen

Befunde, die in dieser Codebasis wiederholt auftreten und deren Ursache
jeweils *nicht* dort liegt, wo die Meldung sie vermuten lässt. Vor der Suche
nach einer Ursache erst hier nachsehen — mehrere dieser Fälle haben schon
Stunden gekostet, weil sie wie Datenfehler aussehen.

---

## 1. Display-Namen: drei Werkzeuge, drei Sprachen, drei Meinungen

**Symptom** — `Wrong Display Name 'X' for <system>#<code>. Valid display is 'Y'`,
und zwei Validatoren verlangen **gegensätzliche** Werte für denselben Code.

**Ursache** — Ein `.display` trägt genau eine Sprache. Der IG hat
`language: de-DE` / `i18n-default-lang: de`:

| Werkzeug | validiert gegen | erwartet |
| --- | --- | --- |
| IG Publisher (`ig-publisher.yml`) | `de` | die deutsche Bezeichnung |
| Java-Validator (`main.yml`, MII-Reusable) | `en` | die englische |

Beide fragen SU-TermServ, nur in verschiedenen Sprachen. Beides zugleich zu
erfüllen ist unmöglich.

**Falsche Reaktion** — Den Wert ändern. Er wandert dann nur zum anderen
Validator. Das ist in dieser Codebasis **dreimal** passiert
(LOINC 11450-4, ICD-O-3 8140/3, LOINC 94738-2).

**Richtige Reaktion**
1. Der **veröffentlichte Guide ist deutschsprachig** — im `.display` steht die
   deutsche Bezeichnung, sofern der Code eine hat.
2. Den Java-Befund in `advisor.json` unterdrücken. Dort wirkt die Datei
   (`JAVA_VALIDATION_OPTIONS: -advisor-file advisor.json`, Org-Variable).
3. Eine `Translation`-Designation daneben hilft **nicht** — der Publisher
   verlangt dann erst recht die Übersetzung im `.display`.

**Sonderfall** — Codes ohne deutsche Designation (die meisten SNOMED-Konzepte):
dort den **offiziellen englischen Anzeigenamen ohne FSN-Klammer** setzen.
`Specimen vial`, nicht `Specimen vial (physical object)`. Der FSN ist kein
gültiger Anzeigename; das erzeugte in einem Lauf 75 Fehler auf einen Schlag.

---

## 2. `advisor.json` wirkt nur beim Java-Validator

Der IG Publisher wird **ohne** `-advisor-file` aufgerufen — in diesem Repo wie
in `kerndatensatz-basis` und `-Onkologie`. Einträge dort ändern am
Publisher-Report nichts.

| Werkzeug | Unterdrückung über |
| --- | --- |
| Java-Validator (`main.yml`) | `advisor.json` |
| IG Publisher (`ig-publisher.yml`) | `input/ignoreWarnings.txt` |

`ignoreWarnings.txt` unterdrückt **keine Errors**, es kommentiert sie: Ein
Kommentarblock plus die **exakte Meldungszeile** darunter erzeugt einen
*Editor's Comment* in `qa.html`. Ein Kommentar ohne Meldungszeile erscheint
nirgends. Übernommen wird nur die **letzte** Kommentarzeile — sie muss für sich
gelesen verständlich sein.

---

## 3. `VALUESET_INCLUDE_INVALID_CONCEPT_CODE` — Publisher-Fehlmeldung

**Symptom** — `Der Code <X> ist im System <sct|loinc> nicht gültig` für
enumerierte Einträge in `ValueSet.compose.include.concept`. Derzeit 25 Stück.

**Nicht die Daten.** Belegt in `output/qa-tx.html`: SU-TermServ antwortet im
selben Lauf mit `$validate-code → "result": true` und `$expand → 200` inklusive
aller Codes. Betroffen sind **nur ValueSet-Definitionen**, nie Instanzen —
derselbe Code validiert in einer Beispielinstanz fehlerfrei. Trat gegen
`tx.fhir.org` nicht auf.

Codes zu entfernen wäre falsch. Dokumentiert in `input/ignoreWarnings.txt`,
gemeldet an `hapifhir/org.hl7.fhir.core` (Text: `/tmp/issue/valueset-invalid-concept.md`).

---

## 4. Lokaler Build ≠ CI

Lokal (`./_build.sh build`) läuft der Publisher gegen **`tx.fhir.org`**, in CI
gegen **SU-TermServ**. Die beiden Server widersprechen sich bei Displays
(`Hematoxylin` vs. `Haematoxylin`), bei Editionen (`20260701` vs. `20250201`)
und bei der Strenge der Prüfung.

**Maßgeblich ist SU-TermServ.** Ein lokal roter Display-Fehler kann in CI grün
sein und umgekehrt. Vor dem Ändern eines Displays immer die CI-Ausgabe ansehen,
nicht die lokale.

---

## 5. Tote Verweise auf umbenannte Ressourcen fremder Module

**Symptom** — plötzlich hunderte Broken Links auf dieselbe URL.

MII-Module benennen Ressourcen zwischen Releases um, ohne Weiterleitung:

```
…/modul-biobank/ValueSet/sct-body-structures          (existiert nicht mehr)
…/modul-biobank/ValueSet/mii-vs-biobank-body-structures-sct   (aktuell)
```

Eine `required`-Bindung auf ein nicht auflösbares ValueSet fällt lange nicht
auf. Nach jedem Abhängigkeits-Update prüfen, ob die in `input/fsh/aliases.fsh`
referenzierten Canonicals im neuen Paket noch vorhanden sind.

Gleiches Muster bei externen Links: Sobald ein Paket geladen ist
(z. B. `hl7.fhir.uv.ips` transitiv über `base`), löst der Publisher Links dorthin
gegen das **Paket** auf statt gegen das Web. Onkologie und Labor verlinken
deshalb nur `…/uv/ips/history.html`, nie eine Unterseite mit Anker.

---

## 6. Abhängigkeiten stehen an zwei Stellen

`sushi-config.yaml` steuert SUSHI und den IG Publisher, `package.json` den
**Java-Validator** — die MII-Reusable baut ihre `-ig`-Liste daraus:

```bash
IG_DEPENDENCIES=$(jq -r '(.dependencies) | … ' package.json)
```

Laufen die beiden auseinander, validiert die CI gegen einen anderen
Abhängigkeitssatz als der Build. Das war wochenlang so (mCode noch drin, die
EU-Extension fehlte). **Nach jeder Änderung beide abgleichen.**

---

## 7. Versionsstring steht an ~60 Stellen

Ein Versionswechsel betrifft `sushi-config.yaml`, `package.json`,
`publication-request.json` (auch `path` und `desc`), `qc/custom.rules.yaml`,
`input/fsh/rulesets/version.fsh`, die 26 `meta.profile`-Literale der Beispiele,
beide Simplifier-Fassungen, die Seiten DE+EN und `CLAUDE.md`.

Bei einer pauschalen Ersetzung aufpassen: **Abhängigkeitsversionen und
Changelog-Überschriften dürfen nicht mitwandern.** Beides ist schon passiert —
`base 2027.0.0-ballot.rc1` wurde fälschlich zu `rc2` gehoben, und eine bereits
publizierte Changelog-Überschrift wurde stillschweigend umetikettiert.

---

## 8. Branch-Modell

`main` ist geschützt — direkte Pushes scheitern mit `GH006`. Der Weg führt über
`dev/v2027` und einen PR. Es gibt **keinen** Branch `dev`; Gerüst-Workflows, die
darauf verdrahtet sind, müssen angepasst werden.

`ig-publisher.yml` feuert **nicht** auf `main` (dort ausgenommen) — ein Merge
nach `main` löst keinen Build aus. Für einen Testlauf nach `dev/v2027` pushen.
