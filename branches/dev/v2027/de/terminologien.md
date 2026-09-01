# Terminologien - MII IG Modul Patho v2027.0.0-ballot.rc

* [**Table of Contents**](toc.md)
* **Terminologien**

## Terminologien

Für die Kodierung des **gesamten Pathologiebefundberichts als auch für die Grouper-Observations** kommen [LOINC](https://www.loinc.org/)-Terme aus der DOC.*-Klasse oder der Doc-Skala zum Einsatz.

Die **generischen Einzelbeobachtungen** selbst sollten möglichst genau so kodiert werden, wie sie auch beobachtet wurden, d.h. an welchem Probentyp, mit welcher Methode, etc.

Die zahlreichen Möglichkeiten, Beobachtungen mit Code-Value-Paaren zu beschreiben, werden für nichtnumerische Beobachtungsergebnisse auf zwei (drei) prinzipielle Möglichkeiten beschränkt:

1. der Observation.code repräsentiert die Art der Beobachtung und der`Observation.value`den nichtnumerischen Beobachtungswert.

* `Observation.code`: Ausmaß einer Extraprostatischen Tumorausbreitung
* `Observation.valueCodebleConcept`: fokal

1. der`Observation.code`wird durch eine Möglichkeit ausgedrückt, die nicht die Aktion der Beobachtung kodiert, sondern ein Statement zu einem Befund darstellt. Auf diese Weise ist der`Observation.value`ein Qualifier, der das Vorhandensein oder Nichtvorhandensein des Befundes kodiert.

* `Observation.code`: Perineuralscheideninvasion
* `Observation.valueCodebleConcept`: Ja/Nein Indikator oder `Observation.valueBoolean`

1. der`Observation.code`wird wie in 2. durch ein Statement zu einem Befund dargestellt, der`Observation.value`wird weggelassen.

* `Observation.code`: Perineuralscheideninvasion
* `Observation.valueCodebleConcept`:
* `Observation.dataAbsentReason`: not-applicable

Für die erstgenannte Möglichkeit stehen alle [LOINC](https://www.loinc.org/)-Terme der Typen "Lab" und "Clinical" zur Verfügung. Falls kein passender LOINC-Code zur Verfügung steht, wird ein [SNOMED-CT](http://www.snomed.org/)-Code verwendet, der aus der Hierarchie-Achse `363787002` (Observable entity) oder `386053000` (Evaluation procedure) stammt. Die Observation.values sind vorzugsweise SNOMED-CT-Codes oder zugehörige LOINC-Answer-Codes.

Für die zweitgenannte Möglichkeit ist der Observation.code vorzugsweise ein SNOMED-CT-Code aus den Hierarchie-Achsen `404684003` (Clinical finding), `413350009` (Finding with explicit context) oder `272379006` (Event). Der Observation.value wird repräsentiert vorzugsweise durch die SNOMED-CT-Achse `362981000` (Qualifier value). Postkoordinierte SNOMED-CT Expressions sollten vermieden werden.

Für die drittgenannte Möglichkeit sollte vorzugsweise ein SNOMED-CT-Code aus den o.g. Hierarchie-Achsen verwendet werden. Ein Observation.dataAbsentReason.value des fehlenden Observation.value sollte benutzt werden, um anzuzeigen, warum dieser Wert fehlt.

Wenn sich keine passenden LOINC-Terme oder SNOMED-CT-Codes finden lassen, sind weitere standardisierte Code-Systeme (z.B. HL7 V2.x oder V3, ICD-10, ICD-11, ICD-O-3, ADT/GEKID) Kodes aus lokalen Kodesystemen vorzuziehen.

Für Synoptische Befundberichte zu Tumoren sollte der SNOMED CT Clinical Implementation Guide for Cancer Synoptic Reporting (https://confluence.ihtsdotools.org/display/DOCCANSIG/SNOMED+CT+Clinical+Implementation+Guide+for+Cancer+Synoptic+Reporting) berücksichtigt werden.

Die **Maßeinheiten bei Messwerten** müssen zwingend in [UCUM](http://unitsofmeasure.org/ucum.html)-Einheiten angegeben werden, damit sich die Ergebnisse ineinander umrechnen lassen. Mittels [Validatoren](https://ucum.nlm.nih.gov/ucum-lhc/demo.html) kann sichergestellt werden, dass die verwendeten Einheiten zulässig sind.

Für die Kodierung von **Proben** und **Prozeduren** wird [SNOMED-CT](http://www.snomed.org/) verwendet.

-------

### Färbungen

Für **Färbeprozeduren** wird folgendes Vorgehen empfohlen:

* **Histologische und zytologische Färbungen** können in SCT entweder als präkoordinierte Procedure (z.B alle Children von [127790008](https://browser.ihtsdotools.org/?perspective=full&conceptId1=127790008&edition=MAIN/2022-05-31&release=&languages=en)) oder als Kombination von Färbeprozess (127790008) und den verwendeten Farbstoffen (alle children von [397165007](https://browser.ihtsdotools.org/?perspective=full&conceptId1=397165007&edition=MAIN/2022-05-31&release=&languages=en) oder [45389009](https://browser.ihtsdotools.org/?perspective=full&conceptId1=45389009&edition=MAIN/2022-05-31&release=&languages=en)) als Additiv (Substance) kodiert werden. Hierbei kann ein Färbeprozess mittels [Specimen.processing.procedure](http://hl7.org/fhir/specimen-definitions.html#Specimen.processing.procedure) abgebildet werden, während die dazu gehörigen Färbesubstanzen über [Specimen.processing.additive](http://hl7.org/fhir/specimen-definitions.html#Specimen.processing.additive) über eine Referenz zu einer oder mehreren Substance Ressourcen abzubilden wären.
* Für **Immunhistochemische Färbungen und in-situ-Hybridisierungen (ISH)** stehen in SCT nur wenige präkoordinierte Konzepte zur Verfügung. Auch hier bietet sich die Kombination von Färbeprozess [406867009](https://browser.ihtsdotools.org/?perspective=full&conceptId1=406867009&edition=MAIN/2022-05-31&release=&languages=en) oder [13269000](https://browser.ihtsdotools.org/?perspective=full&conceptId1=13269000&edition=MAIN/2022-05-31&release=&languages=en) mit den Antikörpern/Antigenen und Chromogenen als .substance bzw. ingredient.substance an.

Außerdem ist in ein Postkoordinierter Färbeprozess kodierbar:

* Färbeprozess(procedure):usingSubstance=Farbstoff oder =Antikörper
* Färbeprozess(procedure):directSubstance=Zielantigen
* oder eine Kombination dieser Kodierungen.

Bei postkoordinierten Codes sei allerdings zu beachten, dass diese ohne einen dafür geeigneten Terminologieserver kaum auswertbar sind. Aus diesem Grund wäre unsere Empfehlung erstmal die Zusammenhänge von Färbeprozessen und deren jeweiligen Färbesubstanzen auf das FHIR Informationsmodell zu übertragen, und diese mithilfe von .processing.procedure und .processing.additive abzubilden.

-------

### Modul ValueSets

Zusätzlich zu o.g. und weiteren internationalen Terminologien (ICD-O-3 und UICC-TNM) werden durch das Modul **Pathologie-Befund** eigene ValueSets definiert. Es sei darauf hingewiesen, dass alle ValueSets keine Expansion beinhalten. Diese muss vor der Verwendung mittels eines Terminologieservers durchgeführt werden.

Außerdem werden mehrere Datenelemente in den FHIR Resourcen durch HL7 V2.x -Kodes kodiert.

Die folgende Tabelle wird automatisch aus dem FHIR-Package erzeugt und listet je ValueSet eine Zeile mit den Profilen und Elementen, die es binden:

| | | | |
| :--- | :--- | :--- | :--- |
| Title | URL | Description | Usage (Profil: Element, Stärke) |
| [MII VS Patho All [LOINC]](ValueSet-mii-vs-patho-all-loinc.md) | https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-all-loinc | ValueSet for general LOINC VS binding | MII PR Patho Base Observation: Observation.code.coding (preferred),MII PR Patho Composition: Composition.section.code.coding (required) |
| [MII VS Patho Collection Method [SNOMED CT]](ValueSet-mii-vs-patho-collection-method-snomed-ct.md) | https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-collection-method-snomed-ct | ValueSet for the clinical collection method | MII PR Patho Specimen: Specimen.collection.method (extensible) |
| [MII VS Patho Composition Type KDL](ValueSet-mii-vs-patho-composition-type-kdl.md) | https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-composition-type-kdl | ValueSet for the categorization of Pathology Report documents | MII PR Patho Composition: Composition.type.coding (extensible) |
| [MII VS Patho Composition Type [Snomed CT]](ValueSet-mii-vs-patho-composition-type-snomed-ct.md) | https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-composition-type-snomed-ct | ValueSet for the types a pathology Composition can have | MII PR Patho Composition: Composition.type.coding (extensible),MII PR Patho Composition: Composition.category.coding (extensible) |
| [MII VS Patho Container Type [SNOMED CT]](ValueSet-mii-vs-patho-container-type-snomed-ct.md) | https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-container-type-snomed-ct | ValueSet for container type based on IHE PaLM's ContainerEntityClassType ValueSet | MII PR Patho Specimen: Specimen.container.type (required) |
| [MII VS Patho Media Modality [SNOMED CT]](ValueSet-mii-vs-patho-media-modality-snomed-ct.md) | https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-media-modality-snomed-ct | ValueSet with some of the main Media.modalities needed in the pathological scope | MII PR Patho Attached Image: Media.modality (extensible) |
| [MII VS Patho Problem List [SNOMED CT]](ValueSet-mii-vs-patho-problem-list-snomed-ct.md) | https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-problem-list-snomed-ct | ValueSet containing the recommended vocabulary for describing problems, according to the IHE Patient Care Coordination Technical Framework (Vol. 2) | MII PR Patho Problem List Item: Condition.code (extensible) |
| [MII VS Patho Processing Procedure [SNOMED CT]](ValueSet-mii-vs-patho-processing-procedure-snomed-ct.md) | https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-processing-procedure-snomed-ct | Specimen processing procedure | MII PR Patho Specimen: Specimen.processing.procedure (extensible) |
| [MII VS Patho Report Category HL7](ValueSet-mii-vs-patho-report-category-hl7.md) | https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-report-category-hl7 | ValueSet for the categorization of Pathology Report documents | MII PR Patho Report: DiagnosticReport.category (extensible) |
| [MII VS Patho Report Code [LOINC]](ValueSet-mii-vs-patho-report-code-loinc.md) | https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-report-code-loinc | ValueSet for the report type codes of pathology DiagnosticReports | MII PR Patho Report: DiagnosticReport.code.coding (extensible) |
| [MII VS Patho Section Types [LOINC]](ValueSet-mii-vs-patho-section-types-loinc.md) | https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-section-types-loinc | ValueSet for IHE PaLM APSR's section types | MII PR Patho Finding: Observation.category (required) |
| [MII VS Patho Service Request Code](ValueSet-mii-vs-patho-service-request-code.md) | https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/ValueSet/mii-vs-patho-service-request-code | ValueSet for a preferred set of ServiceRequest codes | MII PR Patho Service Request: ServiceRequest.code (extensible) |

