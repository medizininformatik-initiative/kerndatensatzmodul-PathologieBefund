// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

// Aliases
//Alias: LOINC = http://loinc.org/
//Alias: v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203 

// Profile definition
Logical: LogicalModelPathologieBefundbericht
Title: "LogicalModel Pathologie Befundbericht"
Description: "tbd"

// set to draft
* ^status = #draft

* Identifikation 1..* SU Identifier "Der Identifikator eines Pathologiebefundberichts (z.B. E/20/12345.1) ist eineindeutig und wird meist aus der Eingangsnummer (Fall-Nummer) abgeleitet. Er sollte zusammengesetzt werden aus der Set-ID (z.B. E/20/12345), unter der alle Versionen eines Befundberichts erfasst werden, und der Versionsnummer (z.B. 1). Es ist allerdings auch möglich, einen UID (Unique identifier) oder GUID (Global Unique Identifier) zu verwenden, der keine Ableitung aus der Fallnummer darstellt. Üblicherweise wird die Fall-Nummer als Set-ID verwendet."
* Status 1..1 SU code "Status des Pathologiebefundberichts."
* Dokumentationsdatum 1..1 SU dateTime "Zeitpunkt, an dem der Pathologiebefundbericht  dokumentiert (verifiziert und freigegeben) wurde."
* Untersuchungsauftrag 1..1 BackboneElement "Untersuchungsauftrag" "Auftrag zur Untersuchung einer Probe/eines Materials / einer Gruppe von Proben/einer Gruppe von Materialien."
  * klinischeInformation 1..* BackboneElement "klinischeInformation" "Klinische Informationen zu einem Fall"
    * Fragestellung 0..1 SU string "Fragestellung zum Fall"
    * Anamnese 0..* SU string "Anamnestische Angaben zum Fall"
    * Ueberweisungsgrund 0..* SU string "Überweisungsgrund"
    * DiagnoseKodiert 0..* SU Reference(Condition) "Diagnose nach gültiger ICD-10-GM " // setze MII Diagnoseprofil
  * AuftragsID 1..* BackboneElement "AuftragsID" "ID des Untersuchungsauftrags."
    * AuftragsgruppenID 0..1 SU Identifier "ID einer Auftragsgruppe, bestehend aus mehreren Untersuchungsaufträgen"
    * AuftragsIDAuftraggeber 0..1 SU Identifier "Auftrags-ID vom Auftraggeber vergeben"
    * AuftragsIDAuftragnehmer 0..1 SU Identifier "Auftrags-ID vom Auftragnehmer (Pathologie) vergeben, oft identisch mit Fall-Nr."  
  * Status 1..1 SU code "Status des pathologischen Untersuchungsauftrages"
  * Untersuchung 0..* SU CodeableConcept "Beauftragte Untersuchung in kodierter Form"
  * Einsender 0..* SU Reference(Practitioner or Organization) "Arzt, der Proben eines Patienten zur pathologisch-anatomischen Untersuchung einsendet und der der Empfänger des Pathologiebefundberichtes ist."
  * Probenentnehmer 0..* SU Reference(Practitioner or Organization) "Entnehmer einer Probe, der nicht identisch mit dem Einsender ist."
* Proben 1..* BackboneElement "Probe" "Von einem Patienten gewonnenes Physisches Objekt oder Sammlung physischer Objekte, die als Einheit betrachtet werden, in der Pathologieeinrichtung eindeutig identifiziert sind und als Gegenstand einer oder mehrerer Prozeduren im Workflow gelten. Ein Einsendungspräparat (syn. Material, nur für Abrechnungszwecke verwendet, syn. Probe) resultiert aus einer Probengewinnungsprozedur und kann in mehreren Containern enthalten sein. Im Pathologielabor werden die Einsendungspräparate (Case), die aus mehreren Teilen (Parts) bestehen können, beginnend mit dem Zuschnitt, meist als  Proben bezeichnet. Proben können einen oder mehrere Bearbeitungsschritte üblicherweise zu Blöcken und gefärbten Schnitten haben."
  * ProbenID 0..1 SU Identifier "Eindeutiger Identifikator für die Probe (Einsendungspräparat). Formal oft identisch mit der Falleingangsnummer (Accession identifier)."
  * Status 0..1 SU code "Status der Probe hinsichtlich der Verfügbarkeit"
  * Probenart 1..1 SU CodeableConcept "Art der Probe"
  * Laboreingangszeitpunkt 0..1 SU dateTime "Zeitpunkt des Eingangs der Probe im Labor"
  * Entnahme 1..1 BackboneElement "Entnahme" "Prozedur zur Probengewinnung an Patient:in"
    * Entnahmemethode 0..1 SU CodeableConcept "Klinische Methode (Prozedur) der Probengewinnung (an Patient:in)"
    * Herkunft 0..1 SU CodeableConcept "Lokalisation der Körperstelle, von der die Probe stammt."
    * EntnahmeZeitpunkt 0..1 SU dateTime "Zeitpunkt der Ent- / Abnahme der Probe"
    * Eigenschaften 0..1 SU CodeableConcept "Beobachtungen zu Eigenschaften des Einsendungspräparats / der Probe, z.B. Abmessungen, Randbeziehungen, Markierungen etc., die vom Einsender mitgeteilt werden."
  * Bearbeitung 0..* BackboneElement "Bearbeitung" "Prozedur der Probenbearbeitung im Labor"
    * Bearbeitungsprozedur 1..1 SU CodeableConcept "Kodierte Prozedur der Probenbearbeitung in der Pathologie"
    * Elternprobe 1..1 SU Reference(Specimen) "Referenz auf den Gegenstand der Bearbeitungsprozedur / auf die Elternprobe"
    * Additive 0..* SU Reference(Substance) "Additive bei der Probenbearbeitung (Fixationsmittel, Einbettungs- und Eindeckungsmedien, Färbungen)"
    * Beschreibung 0..1 SU string "Textuelle Beschreibung der Probenbearbeitung."
  * Container 1..* BackboneElement "Container" "Physikalisches Objekt, das Proben enthält oder trägt. Probenbehälter im weitesten Sinn: Einsendungsgefäß, Gewebskassette, Paraffinblock, Objektträger etc."
    * ContainerID 1..* SU Identifier "Identifikation des Containers, kann von Proben-ID verschieden sein"
    * ContainerTyp 0..1 SU CodeableConcept "Typ des Containers"
    * Additive[x] 0..1 SU CodeableConcept or Reference(Substance) "Additive im Container: Fixative im Einsendungsgefäß, Paraffin im Block, Einbettungsmedium auf dem Objektträger"
* Beobachtungsberichtabschnitt 1..* BackboneElement "Beobachtungsberichtabschnitt" "Bericht über eine Beobachtung (Abschnitt eines Befundberichts), die zu einem Befund führt. Dieser Berichtsabschnitt kann generische kodierte anatomisch-pathologische Beobachtungen (Befunde) enthalten. Im Berichtsabschnitt *Materialbearbeitung* kann die gesamte Probengewinnung und -bearbeitung detailliert kodiert werden. Im Berichtsabschnitt *Diagnostische Schlussfolgerung* muss mindestens eine kodierte Beobachtung enthalten sein."
  //* Probenbearbeitung 0..* BackboneElement "Probenbearbeitung" "Die Sektion enthält die Beschreibung der eingesandten Präparate und der Proben einschließlich der Prozeduren um ein Präparat zu gewinnen und eine Probe zu bearbeiten, sowie die eineindeutige Identifikation aller Proben im Bearbeitungs- und Beobachtungsprozess (Routineworkflow als auch zusätzliche Verfahren)."
    //* Materialbericht 1..1 
  * IntraoperativeBegutachtung 0..1 BackboneElement "IntraoperativeBegutachtung" "Die Intraoperative Begutachtungssektion (Schnellschnitt) enthält die intraoperative Diagnose für jedes übersandte Material, die Materialidentifikation und -beschreibung und Informationen über Proben, die für weitere Untersuchungen (z.B. Flowzytometrie, Molekularpathologie, Elektronenmikroskopie) abgeleitet wurden."
    * Text 0..1 SU string "Text einer intraoperativen Beobachtung."
    * Einzelbeobachtung 0..* SU Reference(Observation) "Semantisch annotierte atomare Einheit einer generischen pathologisch-anatomischen Beobachtung"
    * EingebettetesBild 0..* SU Reference(Media) "tbd"
  * MakrokopischeBeurteilung 0..1 BackboneElement "MakroskopischeBeurteilung" "Die Makroskopische Beurteilungssektion enthält die Beschreibung der Proben, des Zuschnitts und der makroskopische Befunde, verlinkt zu Makrobildern und Skizzen von Zuschnittssituationen. Sie sollte auch Informationen über Gewebsgele enthalten, die für zusätzliche Studien bereitgestellt oder an Biobanken gesandt wurden."
    * Text 0..1 SU string "Makroskopischer Begutachtungstext"
    * Einzelbeobachtung 0..* SU Reference(Observation) "Semantisch annotierte atomare Einheit einer generischen pathologisch-anatomische Beobachtung"
    * EingebettetesBild 0..* BackboneElement "EingebettetesBild" "tbd"
      * BildID 1..* SU id "tbd"
      * MakroBild 1..* SU Attachment "tbd"
      * Skizze 0..* SU Attachment "tbd"
  * MikroskopischeBeurteilung 0..1 BackboneElement "MikrokopischeBeurteilung" "tbd"
    * Text 0..1 SU string "tbd"
    * Einzelbeobachtung 0..* SU Reference(Observation) "tbd"
    * EingebettetesBild 0..* BackboneElement "EingebettetesBild" "tbd"
      * BildID 1..* SU id "tbd"
      * MikroBild 1..* SU Attachment "tbd"
      * ROI 0..* SU Attachment "Region-of-interest"
  * ZustätzlicheBeobachtung 0..1 BackboneElement "ZusätzlicheBeobachtung" "tbd"
    * Text 0..1 SU string "tbd"
//* Beobachtungsberichtabschnitt

