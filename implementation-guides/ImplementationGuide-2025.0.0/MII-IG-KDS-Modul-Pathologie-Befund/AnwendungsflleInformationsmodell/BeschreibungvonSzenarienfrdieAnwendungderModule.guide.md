### Beschreibung von Szenarien für die Anwendung der Module

Für einen generischen Pathologiebefundbericht sind verschiedene Szenarien möglich, betreffend: 

* **Berichtsstatus**: Pathologiebefundberichte können vorläufig oder endgültig sein. In beiden Fällen bedürfen sie der expliziten Befundfreigabe durch den verantwortlichen Pathologen. 

* **Nach-, Zusatz- und Korrekturberichte**: Diese ersetzen prinzipiell die vorhandene aktuelle Version eines Befundberichtes. Dafür kann die Möglichkeit eines Informationsupdates genutzt werden, um auf den Teil des Berichtes hinzuweisen, den das Update betrifft, und um die klinische Relevanz des Updates zu klassifizieren 

* **Komplexität des Befundberichtes**: Pathologiebefundberichte können zu Einsendungen einer einzelnen Probe (Einsendung) mit einer einzigen klinischen Fragestellung (z.B. Hautexzisat, Fragestellung: Art des Hauttumors) oder zu einer Probe (Einsendung), bestehend aus mehreren Teilen (Parts, die gemäß Definition wiederum Proben sind), mit verschiedenen Untersuchungsaufträgen und Fragestellungen erstellt werden, z.B.:
    * TRUS-Prostatastanzbiopsie mit 12 Stanzen, **Fragestellung:** Prostatakarzinom? Grading?
    * Mammasegmentresektat und Sentinel-Lymphknoten, **Fragestellung:** Mammakarzinom? Lymphknotenmetastasen?
    * Zystoprostatektomie, **Fragestellung:** Prostatakarzinom? Harnblasenkarzinom?

Für komplexe Befundberichte müssen die kodierten Informationen durch den Mechanismus eines "Organizers" entsprechend organisiert werden können. Dieser Organizer-Mechanismus ist in FHIR nicht vorgesehen, weshalb in diesem Modul andere adäquate Lösungen (z.B. Grouper-Observations) genutzt worden sind. 

Um strukturierte kodierte Informationen in einen Pathologiebefundbericht aufnehmen zu können, oder um diesen ganz oder teilweise durch derartige Kodierungen aufzubauen, benötigen Pathologiesysteme entsprechende Erfassungswerkzeuge. Für das Erweiterungsmodul bieten sich dafür die im [FHIR IG Structured Data Capture](http://hl7.org/fhir/uv/sdc/STU3/index.html) beschriebenen Ressourcen [Extractable Questionnaire - Definition](http://hl7.org/fhir/uv/sdc/STU3/StructureDefinition-sdc-questionnaire-extr-defn.html) und [SDC Questionnaire Response](http://hl7.org/fhir/uv/sdc/STU3/StructureDefinition-sdc-questionnaireresponse.html) an, die eine automatische direkte Übernahme der erfassten Daten in den Befundbericht erlauben. 