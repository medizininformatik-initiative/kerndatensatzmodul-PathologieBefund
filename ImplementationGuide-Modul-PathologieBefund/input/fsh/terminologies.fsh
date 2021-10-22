// ValueSets of Specimen
ValueSet: Probenart
Id: Probenart
Title: "Probenart"
Description: "Art der Probe"
* include codes from system $SCT where concept is-a #123038009

ValueSet: Entnahmemethode
Id: Entnahmemethode
Title: "Entnahmemethode"
Description: "Klinische Methode der Probengewinnung an Patient:in"
* include codes from system $SCT where concept is-a #118292001
// Specimen Collection 17636008 oder Removal 118292001? 

ValueSet: Koerperstelle
Id: Koerperstelle
Title: "Koerperstelle"
Description: "Lokalisation der Körperstell von der die Probe stammt"
* include codes from system $SCT where concept is-a #123037004

ValueSet: Bearbeitungsprozedur
Id: Bearbeitungsprozedur
Title: "Bearbeitungsprozedur"
Description: "Kodierte Prozedur der Probenbearbeitung in der Pathologie"
* include codes from system $SCT where concept is-a #108252007

// ValueSet: Faerbesubstanzen
// Id: Faerbesubstanzen
// Title: "Faerbesubstanzen"
// Description: "tbd"
// * 

// ValueSet: Container
// Id: Container
// Title: "Container"
// Description: "tbd"
// * $SCT#434746001 "Specimen vial (physical object)"
// * $SCT#434464009 "Tissue cassette (physical object)"
// * $SCT#434708008 "Tissue cassette for microarray (physical object)"
// * $SCT#433466003 "Microscope slide (physical object)"
// * $SCT#433453003 "Specimen container component (physical object)"

// * $DICOM#A-01024 "Specimen vial"
// * $DICOM#A-0101B "Microscope slide"
// * $DICOM#A-01023 "Specimen container"
// * $DICOM#A-01021 "Electron microscopy grid"
// * $DICOM#A-01025 "Specimen well"

// ValueSet: Additive
// Id: Additive
// Title: "Additive"
// Description: "Additive bei der Probenbearbeitung (Fixationsmittel, Einbettungs- und Eindeckungsmedien, Färbungen)"
// * $SCT#434746001 "Specimen vial (physical object)"
// * $SCT#434464009 "Tissue cassette (physical object)"
// * $SCT#434708008 "Tissue cassette for microarray (physical object)"
// * $SCT#433466003 "Microscope slide (physical object)"
// * $SCT#433453003 "Specimen container component (physical object)"
// // level 1
// * $SCT#430863003 "Tissue embedding medium (substance)"
// // level 2
// * $SCT#311731000 "Paraffin wax (substance)"
// * $SCT#433469005 "Frozen section embedding medium (substance)"
// * $SCT#61088005 "Plastic (substance)"
// * $SCT#10249006 "Agar (substance)"
// * $SCT#65345002 "Epoxy resin (substance)"
// * $SCT#427811002 "Polymethyl methacrylate (substance)"
// // level 1
// * $SCT#433472003 "Microscope slide coverslip (physical object)"
// * $SCT#430862008 "Microscope slide mounting medium (substance)"
// // level 0
// * $DICOM#CID8101 "Container type"
// // level 1
// * $DICOM#A-01024 "Specimen vial"
// * $DICOM#A-0101B "Microscope slide"
// * $DICOM#A-01023 "Specimen container"
// * $DICOM#A-01021 "Electron microscopy grid"
// * $DICOM#A-01025 "Specimen well"
// // level 0
// * $DICOM#CID8114 "Fixatives"
// * $DICOM#CID8102 "Container Component Types"
// * $DICOM#CID8115 "Specimen Embedding Media"

// TODO: Abschnittstypen