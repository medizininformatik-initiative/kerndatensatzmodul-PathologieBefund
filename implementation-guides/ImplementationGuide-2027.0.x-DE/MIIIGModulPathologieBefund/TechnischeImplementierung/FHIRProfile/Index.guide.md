## FHIR Profile

| Hinweis | Verpflichtende / must-support Elemente |
|---------|---------------------|
| {{render:Warning}} | Für verpflichtende oder als must-support markierten Elemente sei an dieser Stelle auf die entsprechenden [Regeln der IPS](http://hl7.org/fhir/uv/ips/STU1/design.html#must-support) verwiesen, die auch für diesen ImplementationGuide gelten. |

Die Arbeiten der Kerndatensatzspezifikationen basieren, wo möglich, auf internationalen Standards und Terminologien. Insbesondere seien hier der [Anatomic Pathology Structured Report (APSR)](https://art-decor.org/art-decor/decor-templates--psr-?section=templates&id=1.3.6.1.4.1.19376.1.8.1.1.1&effectiveDate=2014-05-13T11:57:57&language=de-DE) und die [International Patient Summary (IPS)](http://hl7.org/fhir/uv/ips/history.html) hervorgehoben. Eine Anpassung an die allgemeinen Gegebenheiten des deutschen Gesundheitswesens erfolgt durch die Verwendung der [Deutschen Basisprofile von HL7 Deutschland](https://simplifier.net/basisprofil-de-r4). 

Alle Elemente des Kerndatensatzes, angepasst an die Details und Anforderungen für die Use Cases der Medizininformatik-Initative, werden nachfolgend in Form von FHIR StructureDefinitions beschrieben. Die Notwendigkeit der Anpassung der FHIR-Profile wird in textueller Form unterhalb der jeweiligen Profile erläutert. 

## Anforderungsdokumentation

Anforderungen in dieser Spezifikation werden durch folgende in Großbuchstaben geschriebenen Schlüsselworte basierend auf [RFC-2119](https://datatracker.ietf.org/doc/html/rfc2119) gekennzeichnet:

| Deutsch                      	| Englisch    	       |
|------------------------------	|--------------------- |
| MUSS / MÜSSEN                	| MUST / SHALL         |
| DARF NICHT / DÜRFEN NICHT    	| MUST NOT / SHALL NOT |
| VERPFLICHTEND                	| REQUIRED    	       |
| SOLLTE / SOLLTEN             	| SHOULD      	       |
| SOLLTE NICHT / SOLLTEN NICHT 	| SHOULD NOT  	       |
| EMPFOHLEN                    	| RECOMMENDED 	       |
| KANN / OPTIONAL               | MAY                  |

## Verpflichtende / must-support Elemente

| Hinweis | Verpflichtende / must-support Elemente |
|---------|---------------------|
| {{render:implementation-guides/ImplementationGuide-Common/images/Warning.jpg}} | Für verpflichtende oder als must-support markierten Elemente sei an dieser Stelle auf die entsprechenden [Regeln der IPS](http://hl7.org/fhir/uv/ips/STU1/design.html#must-support) verwiesen, die auch für diesen ImplementationGuide gelten. |


## Profilübersicht

{{index:current}}

## Pathologie Observations

Alle Observations im Modul Patholgie-Befund haben das abstrakte Observation Profil **MII PR Base Observation** als gemeinsame Basis. 

{{render:ImplementationGuide-Common-images-patho-observation-dependencies-v1.0.0}}

## Gesamtübersicht aller Profile und Referenzen

{{render:guides-ImplementationGuide-Common-images-patho-profile-relationships-v1.0.0}}