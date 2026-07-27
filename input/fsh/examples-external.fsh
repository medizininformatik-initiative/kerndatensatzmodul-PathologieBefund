// -----------------------------------------------------------------------------
// Externe Hilfs-Beispielressourcen
// Werden aus den Patho-Beispielen referenziert (subject/performer/encounter/...).
// Ohne diese Instanzen laufen die Referenzen ins Leere und der IG-Publisher-
// Narrative-Renderer bricht ab (NPE in DiagnosticReportRenderer.populateSubjectSummary).
// -----------------------------------------------------------------------------

// ---------- Patient ----------
Instance: mii-exa-patient-12345
InstanceOf: Patient
Usage: #example
* id = "12345"
* name.family = "Mustermann"
* name.given = "Max"
* gender = #male
* birthDate = "1959-08-24"

Instance: mii-exa-patient-34545
InstanceOf: Patient
Usage: #example
* id = "34545"
* name.family = "Musterfrau"
* name.given = "Erika"
* gender = #female
* birthDate = "1962-03-11"

// ---------- Practitioner ----------
Instance: mii-exa-practitioner-2346545
InstanceOf: Practitioner
Usage: #example
* id = "2346545"
* name.family = "Schnitt"
* name.given = "Sabine"

Instance: mii-exa-practitioner-765879
InstanceOf: Practitioner
Usage: #example
* id = "765879"
* name.family = "Färber"
* name.given = "Frank"

Instance: mii-exa-practitioner-34456
InstanceOf: Practitioner
Usage: #example
* id = "34456"
* name.family = "Urban"
* name.given = "Ulrich"

Instance: mii-exa-practitioner-21234
InstanceOf: Practitioner
Usage: #example
* id = "21234"
* name.family = "Makro"
* name.given = "Martin"

Instance: mii-exa-practitioner-1234
InstanceOf: Practitioner
Usage: #example
* id = "1234"
* name.family = "Labor"
* name.given = "Lena"

// ---------- Encounter ----------
Instance: mii-exa-encounter-12345
InstanceOf: Encounter
Usage: #example
* id = "12345"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* subject = Reference(Patient/12345)

Instance: mii-exa-encounter-34555
InstanceOf: Encounter
Usage: #example
* id = "34555"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* subject = Reference(Patient/34545)

Instance: mii-exa-encounter-87687
InstanceOf: Encounter
Usage: #example
* id = "87687"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* subject = Reference(Patient/12345)

// ---------- Organization ----------
Instance: mii-exa-organization-12345
InstanceOf: Organization
Usage: #example
* id = "12345"
* name = "Institut für Pathologie"

Instance: mii-exa-organization-123456
InstanceOf: Organization
Usage: #example
* id = "123456"
* name = "Klinikum Musterstadt"
