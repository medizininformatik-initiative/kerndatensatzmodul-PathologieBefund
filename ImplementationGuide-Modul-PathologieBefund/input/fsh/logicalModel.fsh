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
* Status 1..1 SU code "Status des Pathologiebefundberichts. * vorläufig * final"
* Dokumentationsdatum 1..1 SU dateTime "Zeitpunkt, an dem der Pathologiebefundbericht  dokumentiert (verifiziert und freigegeben) wurde."
* Untersuchungsauftrag 1..1 BackboneElement "Untersuchungsauftrag" "Auftrag zur Untersuchung einer Probe/eines Materials / einer Gruppe von Proben/einer Gruppe von Materialien."
  * klinischeInformation 1..* BackboneElement "klinischeInformation" "Klinische Informationen zu einem Fall"
    * Fragestellung 0..1 SU string "Fragestellung zum Fall"
    * Anamnese 0..* SU string "Anamnestische Angaben zum Fall"
    * Ueberweisungsgrund 0..* SU string "Überweisungsgrund"
    * DiagnoseKodiert 0..* SU Reference(Condition) "tbd" // setze MII Diagnoseprofil
  * AuftragsID 1..* BackboneElement "AuftragsID" "tbd"
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
    * Entnahme 0..* BackboneElement "Entnahme" "Prozedur zur Probengewinnung an Patient:in"
      * Entnahmemethode 0..1 SU CodeableConcept "Klinische Methode (Prozedur) der Probengewinnung (an Patient:in)"
      * Herkunft 0..1 SU CodeableConcept "Lokalisation der Körperstelle, von der die Probe stammt."
      * EntnahmeZeitpunkt 0..1 SU dateTime "Zeitpunkt der Ent- / Abnahme der Probe"
      * Eigenschaften 0..1 SU CodeableConcept "Beobachtungen zu Eigenschaften des Einsendungspräparats / der Probe, z.B. Abmessungen, Randbeziehungen, Markierungen etc., die vom Einsender mitgeteilt werden."
//* Beobachtungsberichtabschnitt

