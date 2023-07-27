### Datensätze inkl. Beschreibungen

Die offizielle Version des Informationsmodells für das Erweiterungsmodul Pathologiebefundbericht findet sich auf [Art-Decor](https://art-decor.org/art-decor/decor-datasets--mide-?id=2.16.840.1.113883.3.1937.777.24.1.1&effectiveDate=2018-06-05T12%3A44%3A12&conceptId=2.16.840.1.113883.3.1937.777.24.2.1113&conceptEffectiveDate=2020-01-06T11%3A50%3A48&language=de-DE). Zur Vereinheitlichung der Repräsentation wurde das Informationsmodell zusätzlich als FHIR Logical Model abgebildet: 

{{tree:MII-LM-Patho-Logical-Model}}

### Datensatz Art-Decor

Es ist zu beachten, dass das Logical Model rein auf die Abbildung der Datenelemente und deren Beschreibung abzielt. Verwendete Datentypen und Kardinalitäten sind nicht als verpflichtend anzusehen. Dies wird abschließend durch die FHIR-Profile festgelegt. Für jedes Element innerhalb des Logical Models existiert ein 1:1 Mapping auf ein Element einer konkreten FHIR Ressource. 

------

### Befundbericht

| Logisches Datenmodell | Beschreibung |
|--|--|
|Befundbericht.id | Eindeutiger Identifikation des Pathologiebefundberichts, i.d.R. die Eingangsnummer (Fall-Nr.), ergänzt durch Versionsnummer |
| Befundbericht.Identifikator | Versionsunabhängiger Identifikator des Pathologiebefundberichtes, i.d.R. die Eingangsnummer (Fall-Nr.), GUID (Global Unique Identifier) möglich |
| Befundbericht.Versionsnummer | Versionsnummer des Pathologiebefundberichtes |
| Befundbericht.Status | Status des Pathologiebefundberichtes (vorläufig, final) |
| Befundbericht.Typ | Typ des Klinischen Dokuments (LOINC 60568-3) |
| Befundbericht.Kategorie | Kategorie des Klinischen Dokuments (LOINC 27898-6) |
| Befundbericht.Datum  | Datum und Zeit der Freigabe des Befundberichts |
| Befundbericht.Titel | Titel des Befundberichts (Pathologisch-anatomische Begutachtung) |
| Befundbericht.Autor | Autor:in des Befundberichts |
| Befundbericht.Freigebender | Gesetzlich Verantwortlicher (Legal Authenticator) für den Befundbericht |
| Befundbericht.ZugehörigesDokument | Ältere Version des Befundberichts |

Für die Datensätze *Patient*, *Fall* und *Verwaltende Organisation* werden die MII-Module [Person](https://simplifier.net/medizininformatikinitiative-modulperson), [Fall](https://simplifier.net/medizininformatikinitiative-modulfall) und [Strukturdaten](https://simplifier.net/medizininformatikinitiative-modulstrukturdaten) genutzt. Sie werden daher hier nicht weiter spezifiert. 

------

### Untersuchungsauftrag

| Logisches Datenmodell | Beschreibung |
|--|--|
| Untersuchungsauftrag.Identifikation | Identifikator des Untersuchungsauftrags |
| Untersuchungsauftrag.KlinischeInformation | Klinische Informationen zu einem Fall |
| Untersuchungsauftrag.Status | Status des Auftrags (aktiv, erledigt) |
| Untersuchungsauftrag.Einsender | Ärzt:in, der/die Proben einer Patientin zur pathologisch-anatomischen Untersuchung einsendet |
| Untersuchungsauftrag.Probenentnehmer | Entnehmer einer Probe, der nicht identisch mit dem Einsender ist |
| Untersuchungsauftrag.Präparat | Eingesandtes Präparat (siehe Präparat/Probe) |
| Untersuchungsauftrag.Untersuchung | Beauftragte Untersuchung(en) |

------

### Probe
Als Basis für die Spezifikation der *Probe* wird das MII-Profil [Bioprobe - Core](https://simplifier.net/medizininformatikinitiative-modulbiobank/profilespecimenbioprobecore), aus dem Modul [Biobank](https://simplifier.net/medizininformatikinitiative-modulbiobank) genutzt.

| Logisches Datenmodell | Beschreibung |
|--|--|
| Probe | Organ oder Organteil oder eine Sammlung derselben oder Gewebe oder Zellen, die als Einsendung zur Bearbeitung und Begutachtung eingesandt werden und von der durch die Probenbearbeitung weitere Proben entstehen können |
| Probe.Identifikation | Identifikation der Probe |
| Probe.Probenherkunft | Lokalisation der Körperstelle, von der die Probe stammt|
| Probe.Entnahme-/Abnahmezeitpunkt | Datum und Zeit der Probenentnahme |
| Probe.Laboreingangszeitpunkt | Datum und Zeit des Präparateingangs |
| Probe.Entnahmeprozedur | Prozedur zur Präparatgewinnung |
| Probe.Bearbeitungsprozedur | Prozedur der Proben/Präparatbearbeitung |
| Probe.Bearbeitungsprozedur.Additiv | Eingesetztes Additiv zur Proben/Präparatbearbeitung |
| Probe.Probenidentifikation.ProbenID | ID der Probe, kann identisch mit Fall-Nr. (Accession number) sein  |
| Probe.Probenidentifikation.ParentID | ID der Elternprobe, von der die zu bearbeitende / zu untersuchende Probe stammt |
| Probe.Container | Probenbehälter im weitesten Sinn: Einsendungsgefäß, Gewebskassette, Paraffinblock, Objektträger etc. |
| Probe.Container.Typ | Art des Containers |
| Probe.Container.Additiv | Additiv im Container |
| Probe.Beobachtung | Beobachtung zur Probe |


------

### Beobachtungsberichtabschnitte

Die im Art-Decor-Schema aufgeführten Beobachtungsberichtabschnitte haben alle die gleichen folgenden Logischen Datenelemente, die sich lediglich durch die spezifischen Inhalte unterscheiden. 

| Logisches Datenmodell | Beschreibung |
|--|--|
| Beobachtungsberichtabschnitt.Identifikation | Identifikator des Berichtsteils |
| Beobachtungsberichtabschnitt.Text | Text einer Beobachtung im Berichtsteil |
| Beobachtungsberichtabschnitt.Pathologisch-anatomische Einzelbeobachtung | Semantisch annotierte (kodierte) Einheit einer generischen pathologisch-anatomische Beobachtung im Berichtsteil | 
| Beobachtungsberichtabschnitt.Eingebettetes Bild | In den Befundberichtsteil eingebettetes Bild |

Der Beobachtungsberichtabschnitt *Proben/Technische Bearbeitung* aus dem CDA-Profil APSR wird durch Probeninformationen aus dem LIS dargestellt. Diese enthalten eine Auflistung aller Proben, die vom Einsender übersandt und im Labor zu beurteilbaren (gefärbten Schnitt) Präparaten verarbeitet wurden, sodass jedes beurteilbare Objekt eine eindeutige Zuordnung seines Produktionsprozesses aufweisen kann.

Für den Textteil ist eine Gliederung nach: 

* Proben-ID 
* Elternproben-ID 
* Entnahmeprozedur 
* Bearbeitungsprozedur 

für die Probenebenen Probenteil, Block, gefärbter Schnitt (Probenteilteil, gefärbter Ausstrich, jeweils für zytologische Präparate) geeignet. 


Der Beobachtungsberichtabschnitt *Klinische Informationen* aus dem CDA-Profil APSR ist im Untersuchungsauftrag vollständig enthalten und kann aus diesem übernommen werden.


----

### Generische Pathologisch-anatomische Einzelbeobachtung

Die Generischen Pathologisch-anatomischen Einzelbeobachtungen stellen die "atomaren" kodierbaren Datenelemente im Befundbericht dar. Sie beschreiben spezifische Feststellungen zu morphologischen Charakteristika und Ergebnisse von Messungen, können Bilder einbinden oder Regions of Interest in Bilder beschreiben, auf die sich weitere Beobachtungen beziehen. 

Generische Pathologisch-anatomische Einzelbeobachtungen können in verschachtelten Konstrukten auch mit Organisatoreigenschaften verwendet werden.

| Logisches Datenmodell | Beschreibung |
|--|--|
| Generische Pathologisch-anatomische Einzelbeobachtung.Identifikation | Identifikator der generischen pathologisch-anatomischen Beobachtung |
| Generische Pathologisch-anatomische Einzelbeobachtung.Text | Displaytext einer kodierten Beobachtung |
| Generische Pathologisch-anatomische Einzelbeobachtung.Code | Code der generischen pathologisch-anatomischen Beobachtung |
| Generische Pathologisch-anatomische Einzelbeobachtung.Status | Status der generischen pathologisch-anatomische Beobachtung (vorläufig/aktiv, final) |
| Generische Pathologisch-anatomische Einzelbeobachtung.Datum | Datum und Zeit der generischen pathologisch-anatomischen Beobachtung |
| Generische Pathologisch-anatomische Einzelbeobachtung.Wert | Wert (Messwert oder Codewert) der generischen pathologisch-anatomische Beobachtung |
| Generische Pathologisch-anatomische Einzelbeobachtung.Interpretation | Kodierte Interpretation des Wertes hinsichtlich seiner Beziehung zu Schwellwerten |
| Generische Pathologisch-anatomische Einzelbeobachtung.Methode | Kodierte Methode der Beobachtung (z.B. Makroskopie, Mikroskopie, etc.) |
| Generische Pathologisch-anatomische Einzelbeobachtung.Durchführender | Durchführender der Beobachtung |
| Generische Pathologisch-anatomische Einzelbeobachtung.Autor | Autor der Beobachtung (Pathologe) |
| Generische Pathologisch-anatomische Einzelbeobachtung.Informant | Zur Beobachtung Beitragender |
| Generische Pathologisch-anatomische Einzelbeobachtung.Probe | Probe, an der die Beobachtung gemacht wurde (Einsendungsmaterial bis gefärbtes Schnittpräparat möglich) |
| Generische Pathologisch-anatomische Einzelbeobachtung.Unterbeobachtung | Weitere beitragende Beobachtung (z.B. Score-Werte, TNM-Komponenten, etc.) |
| Generische Pathologisch-anatomische Einzelbeobachtung.EingebettetesBild | Bild zur Illustration der Beobachtung |
| Generische Pathologisch-anatomische Einzelbeobachtung.RegionOfInterest | Region of Interest, auf die sich die Beobachtung bezieht (z.B. Tumoranteil im Gewebsschnitt für den z.B. Ki-67 bestimmt wurde |
| Generische Pathologisch-anatomische Einzelbeobachtung.Kommentar | Kommentar zur Beobachtung |
| Generische Pathologisch-anatomische Einzelbeobachtung.Referenz | Referenz auf ein externes Dokument oder eine externe Beobachtung, z.B. Molekularpathologie |

