# mii-exa-patho-encounter-12345 - MII IG Modul Patho v2027.0.0-ballot.rc

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-patho-encounter-12345**

## Example Encounter: mii-exa-patho-encounter-12345

-------

**English**

-------

**status**: Finished

**class**: [ActCode: IMP](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-IMP) (inpatient encounter)

**subject**: [Max Mustermann Male, DoB: 1959-08-24](Patient-mii-exa-patho-patient-12345.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "mii-exa-patho-encounter-12345",
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "IMP",
    "display" : "inpatient encounter"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-patho-patient-12345"
  }
}

```
