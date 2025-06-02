## References

The information model for the Pathology Findings extension module contains references to the following projects:

* [IHE Anatomic Pathology Structured Report (APSR)](https://wiki.ihe.net/index.php/Anatomic_Pathology_Structured_Report) 

* [International Patient Summary (IPS)](http://hl7.org/fhir/uv/ips/history.html)

The individual references to the APSR ART-DECOR project can be found in the corresponding data elements of the Pathology report extension module.

In addition, the module builds on version R4 of the [HL7 FHIR core specification](http://hl7.org/fhir/r4), in particular the corresponding resources [DiagnosticReport](http://hl7.org/fhir/r4/diagnosticreport.html), [ServiceRequest](http://hl7.org/fhir/r4/servicerequest.html), [Specimen](http://hl7.org/fhir/r4/specimen.html) and [Observation](http://hl7.org/fhir/r4/observation.html). The content takes into account the requirements of [DIN EN ISO/IEC 17020:2012](https://www.din.de/de/mitwirken/normenausschuesse/nqsz/veroeffentlichungen/wdc-beuth:din21:146320816) and technical criteria for their application for accreditation in pathology/neuropathology ([DAkkS 71 SD 4 001 | Revision: 1.6](https://www.dakks.de/files/Dokumentensuche/Dateien/71%20SD%204%20001_Anforderungskatalog%20Pathologie_20170428_v1.6.pdf)). 

This specification was designed based on the description of the MII core dataset in the [Version from March 10, 2017](https://www.medizininformatik-initiative.de/sites/default/files/inline-files/MII_04_Kerndatensatz_1-0.pdf) and the dataset description in [Art-Decor](https://art-decor.org/art-decor/decor-project--mide\-).

In addition, due to the proximity to the care structures in the hospital, there are references from and to the [ISiK Spezifikation](https://simplifier.net/packages/de.gematik.isik-basismodul/4.0.1).

