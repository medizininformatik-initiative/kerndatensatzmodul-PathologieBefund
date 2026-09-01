// -----------------------------------------------------------------------------
// Externe Hilfs-Beispielressourcen
// Werden aus den Patho-Beispielen referenziert (subject/performer/encounter/...).
// Ohne diese Instanzen laufen die Referenzen ins Leere und der IG-Publisher-
// Narrative-Renderer bricht ab (NPE in DiagnosticReportRenderer.populateSubjectSummary).
// -----------------------------------------------------------------------------

// ---------- Patient ----------
Instance: mii-exa-patho-patient-12345
InstanceOf: Patient
Usage: #example
* name.family = "Mustermann"
* name.given = "Max"
* gender = #male
* birthDate = "1959-08-24"

Instance: mii-exa-patho-patient-34545
InstanceOf: Patient
Usage: #example
* name.family = "Musterfrau"
* name.given = "Erika"
* gender = #female
* birthDate = "1962-03-11"

// ---------- Practitioner ----------
Instance: mii-exa-patho-practitioner-2346545
InstanceOf: Practitioner
Usage: #example
* name.family = "Schnitt"
* name.given = "Sabine"

Instance: mii-exa-patho-practitioner-765879
InstanceOf: Practitioner
Usage: #example
* name.family = "Färber"
* name.given = "Frank"

Instance: mii-exa-patho-practitioner-34456
InstanceOf: Practitioner
Usage: #example
* name.family = "Urban"
* name.given = "Ulrich"

Instance: mii-exa-patho-practitioner-21234
InstanceOf: Practitioner
Usage: #example
* name.family = "Makro"
* name.given = "Martin"

Instance: mii-exa-patho-practitioner-1234
InstanceOf: Practitioner
Usage: #example
* name.family = "Labor"
* name.given = "Lena"

// ---------- Encounter ----------
Instance: mii-exa-patho-encounter-12345
InstanceOf: Encounter
Usage: #example
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* subject = Reference(Patient/mii-exa-patho-patient-12345)

Instance: mii-exa-patho-encounter-34555
InstanceOf: Encounter
Usage: #example
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* subject = Reference(Patient/mii-exa-patho-patient-34545)

Instance: mii-exa-patho-encounter-87687
InstanceOf: Encounter
Usage: #example
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* subject = Reference(Patient/mii-exa-patho-patient-12345)

// ---------- Organization ----------
Instance: mii-exa-patho-organization-12345
InstanceOf: Organization
Usage: #example
* name = "Institut für Pathologie"

Instance: mii-exa-patho-organization-123456
InstanceOf: Organization
Usage: #example
* name = "Klinikum Musterstadt"
