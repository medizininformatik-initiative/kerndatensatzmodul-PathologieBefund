Für die Kodierung des **gesamten Pathologiebefundberichts als auch für die Grouper-Observations** kommen [LOINC](https://www.loinc.org/)-Terme aus der DOC.*-Klasse oder der Doc-Skala zum Einsatz. 

Die **generischen Einzelbeobachtungen** selbst sollten möglichst genau so kodiert werden, wie sie auch beobachtet wurden, d.h. an welchem Probentyp, mit welcher Methode, etc. 

Die zahlreichen Möglichkeiten, Beobachtungen mit Code-Value-Paaren zu beschreiben, werden für nichtnumerische Beobachtungsergebnisse auf zwei (drei) prinzipielle Möglichkeiten beschränkt: 

1. der Observation.code repräsentiert die Art der Beobachtung und der `Observation.value` den nichtnumerischen Beobachtungswert.

- `Observation.code`: Ausmaß einer Extraprostatischen Tumorausbreitung
- `Observation.valueCodebleConcept`: fokal


2. der `Observation.code` wird durch eine Möglichkeit ausgedrückt, die nicht die Aktion der Beobachtung kodiert, sondern ein Statement zu einem Befund darstellt. Auf diese Weise ist der `Observation.value` ein Qualifier, der das Vorhandensein oder Nichtvorhandensein des Befundes kodiert.

- `Observation.code`: Perineuralscheideninvasion
- `Observation.valueCodebleConcept`: Ja/Nein Indikator oder `Observation.valueBoolean`

3. der `Observation.code` wird wie in 2. durch ein Statement zu einem Befund dargestellt, der `Observation.value` wird weggelassen.     

- `Observation.code`: Perineuralscheideninvasion
- `Observation.valueCodebleConcept`: 
- `Observation.dataAbsentReason`: not-applicable

Für die erstgenannte Möglichkeit stehen alle [LOINC](https://www.loinc.org/)-Terme der Typen "Lab" und "Clinical" zur Verfügung. Falls kein passender LOINC-Code zur Verfügung steht, wird ein [SNOMED-CT](http://www.snomed.org/)-Code verwendet, der aus der Hierarchie-Achse `363787002` (Observable entity) oder `386053000` (Evaluation procedure) stammt. Die Observation.values sind vorzugsweise SNOMED-CT-Codes oder zugehörige LOINC-Answer-Codes.

Für die zweitgenannte Möglichkeit ist der Observation.code vorzugsweise ein SNOMED-CT-Code aus den Hierarchie-Achsen `404684003` (Clinical finding), `413350009` (Finding with explicit context) oder `272379006` (Event). Der Observation.value wird repräsentiert vorzugsweise durch die SNOMED-CT-Achse `362981000` (Qualifier value). Postkoordinierte SNOMED-CT Expressions sollten vermieden werden.

Für die drittgenannte Möglichkeit sollte vorzugsweise ein SNOMED-CT-Code aus den o.g. Hierarchie-Achsen verwendet werden. Ein Observation.dataAbsentReason.value des fehlenden Observation.value sollte benutzt werden, um anzuzeigen, warum dieser Wert fehlt. 

Wenn sich keine passenden LOINC-Terme oder SNOMED-CT-Codes finden lassen, sind weitere standardisierte Code-Systeme (z.B. HL7 V2.x oder V3, ICD-10, ICD-11, ICD-O-3, ADT/GEKID) Kodes aus lokalen Kodesystemen vorzuziehen.  

Für Synoptische Befundberichte zu Tumoren sollte der SNOMED CT Clinical Implementation Guide for Cancer Synoptic Reporting (https://confluence.ihtsdotools.org/display/DOCCANSIG/SNOMED+CT+Clinical+Implementation+Guide+for+Cancer+Synoptic+Reporting) berücksichtigt werden.

Die **Maßeinheiten bei Messwerten** müssen zwingend in [UCUM](http://unitsofmeasure.org/ucum.html)-Einheiten angegeben werden, damit sich die Ergebnisse ineinander umrechnen lassen. Mittels [Validatoren](https://ucum.nlm.nih.gov/ucum-lhc/demo.html) kann sichergestellt werden, dass die verwendeten Einheiten zulässig sind. 

Für die Kodierung von **Proben** und **Prozeduren** wird [SNOMED-CT](http://www.snomed.org/) verwendet. 

---------------------

### Färbungen

Für **Färbeprozeduren** wird folgendes Vorgehen empfohlen:

- **Histologische und zytologische Färbungen** können in SNOMED CT entweder als präkoordinierte Prozedur (alle Children von [127790008 Staining method](https://browser.ihtsdotools.org/?perspective=full&conceptId1=127790008)) oder als Kombination von Färbeprozess und den verwendeten Farbstoffen (Children von [397165007 Stain](https://browser.ihtsdotools.org/?perspective=full&conceptId1=397165007) bzw. [45389009 Tissue stain](https://browser.ihtsdotools.org/?perspective=full&conceptId1=45389009)) kodiert werden. Der Färbeprozess wird über [Specimen.processing.procedure](http://hl7.org/fhir/specimen-definitions.html#Specimen.processing.procedure) abgebildet, die zugehörigen Färbesubstanzen über [Specimen.processing.additive](http://hl7.org/fhir/specimen-definitions.html#Specimen.processing.additive) als Referenz auf eine oder mehrere Substance-Ressourcen.
- Für **immunhistochemische Färbungen** steht mit [117617002 Immunohistochemistry procedure](https://browser.ihtsdotools.org/?perspective=full&conceptId1=117617002) ein präkoordiniertes Konzept zur Verfügung. Für Immunfluoreszenz ist [406867009 Immunofluorescent stain method](https://browser.ihtsdotools.org/?perspective=full&conceptId1=406867009) einschlägig, für zytologische Präparate [13269000 Immunocytochemical stain](https://browser.ihtsdotools.org/?perspective=full&conceptId1=13269000). Der verwendete Antikörper bzw. das Zielantigen sowie das Chromogen werden als Additiv (Substance) angegeben.
- Für **in-situ-Hybridisierungen (ISH), PCR-, Methylierungs- und NGS-Untersuchungen** sollte die terminologische Harmonisierung über die entsprechenden Profile des Erweiterungsmoduls [Molekulares Tumorboard](https://simplifier.net/mii-erweiterungsmodul-molekulares-tumorboard) erfolgen.

**Wenn kein SNOMED-CT-Konzept existiert:** Für viele Antikörper führt SNOMED CT keinen Code — p63 beispielsweise ist in der Internationalen Edition nicht enthalten. In diesen Fällen ist ein lokaler Code in `Substance.code` zulässig; er sollte in einem Namensraum der eigenen Einrichtung liegen und über `Specimen.processing.additive` referenziert werden. Für die strukturierte Angabe des Antikörpertyps steht zusätzlich [1236876007 Type of antibody used in immunohistochemistry technique](https://browser.ihtsdotools.org/?perspective=full&conceptId1=1236876007) zur Verfügung.

Außerdem ist ein postkoordinierter Färbeprozess kodierbar:

- Färbeprozess(procedure):usingSubstance=Farbstoff oder =Antikörper
- Färbeprozess(procedure):directSubstance=Zielantigen
- oder eine Kombination dieser Kodierungen.

Bei postkoordinierten Codes sei allerdings zu beachten, dass diese ohne einen dafür geeigneten Terminologieserver kaum auswertbar sind. Aus diesem Grund wäre unsere Empfehlung erstmal die Zusammenhänge von Färbeprozessen und deren jeweiligen Färbesubstanzen auf das FHIR Informationsmodell zu übertragen, und diese mithilfe von .processing.procedure und .processing.additive abzubilden.

Die im Modul verwendeten Bearbeitungsprozeduren sind im ValueSet [MII VS Patho Processing Procedure [SNOMED CT]](ValueSet-mii-vs-patho-processing-procedure-snomed-ct.html) zusammengefasst. Ein eigenes ValueSet für Färbesubstanzen ist in Vorbereitung.

-------------------------

### Modul ValueSets

Zusätzlich zu o.g. und weiteren internationalen Terminologien (ICD-O-3 und UICC-TNM) werden durch das Modul **Pathologie-Befund**  eigene ValueSets definiert. Es sei darauf hingewiesen, dass alle ValueSets keine Expansion beinhalten. Diese muss vor der Verwendung mittels eines Terminologieservers durchgeführt werden. 

Außerdem werden mehrere Datenelemente in den FHIR Resourcen durch HL7 V2.x -Kodes kodiert. 

Die folgende Tabelle wird automatisch aus dem FHIR-Package erzeugt und listet je ValueSet eine Zeile mit den Profilen und Elementen, die es binden:

{% sql {"query" : "WITH bindings AS (SELECT r.Title as ProfileTitle, json_extract(e.value, '$.path') as Path, json_extract(e.value, '$.binding.strength') as Strength, CASE WHEN instr(json_extract(e.value, '$.binding.valueSet'), '|') > 0 THEN substr(json_extract(e.value, '$.binding.valueSet'), 1, instr(json_extract(e.value, '$.binding.valueSet'), '|') - 1) ELSE json_extract(e.value, '$.binding.valueSet') END as VsUrl FROM Resources r, json_each(json_extract(r.Json, '$.differential.element')) e WHERE r.Type = 'StructureDefinition' AND r.derivation = 'constraint' AND r.kind IN ('resource', 'complex-type') AND json_extract(e.value, '$.binding.valueSet') IS NOT NULL) SELECT vs.Title as Title, vs.Web as Web, vs.Url as URL, vs.Description as Description, COALESCE(GROUP_CONCAT(DISTINCT b.ProfileTitle || ': ' || b.Path || ' (' || b.Strength || ')'), '-') as Usage FROM Resources vs LEFT JOIN bindings b ON b.VsUrl = vs.Url WHERE vs.Type = 'ValueSet' AND vs.Url LIKE 'https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/%' GROUP BY vs.Key ORDER BY vs.Title", "class" : "grid", "columns" : [{"title" : "Title", "type" : "link", "source" : "Title", "target" : "Web"}, {"title" : "URL", "type" : "text", "source" : "URL"}, {"title" : "Description", "type" : "text", "source" : "Description"}, {"title" : "Usage (Profil: Element, Stärke)", "type" : "text", "source" : "Usage"}]} %}
