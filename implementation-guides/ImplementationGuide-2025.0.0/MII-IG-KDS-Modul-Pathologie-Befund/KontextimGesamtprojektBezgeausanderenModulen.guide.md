## Kontext im Gesamtprojekt / Bezüge aus anderen Modulen

Das Erweiterungsmodul **Pathologie-Befund** bildet Pathologiebefunde ab, die typischerweise in einer Pathologieeinrichtung eines Klinikums erhoben werden. Diese Befunde spielen in einigen Use Cases der MII eine zentrale Rolle: 

* Pathologiebefundberichte aus Routineuntersuchungen sind essentiell für Diagnosefindung und Therapieüberwachung bei den meisten Erkrankungen 

* Pathologiebefundberichte sind ein wichtiger Bestandteil vieler klinischer Studien 

### Bezüge innerhalb der MII

Ein Pathologiebefundbericht ist dabei immer der [Person](https://simplifier.net/medizininformatikinitiative-modulperson) zugeordnet, von welcher die *Proben* entnommen wurden und auf einen [Versorgungsstellenkontakt](https://simplifier.net/medizininformatikinitiative-modulfall) bezogen. Bei dem *Versorgungsstellenkontakt* handelt es sich um einen pathologieeinrichtungspezifischen *(Abteilungs)kontakt*, die sogenannte Einsendung, der alle Untersuchungsaufträge zu Proben einer Person, die in einem zeitlichen und fachlichen Zusammenhang entnommen wurden, zusammenfasst. Dieser *Versorgungsstellenkontakt* muss nicht identisch mit dem Untersuchungsauftrag sein. Wenn eine Probe eines Falles in einer Biobank für weitere Untersuchungen verwahrt wird, kann diese Probe mit den Profilen im Erweiterungsmodul [Bioproben](https://simplifier.net/medizininformatikinitiative-modulbiobank) abgebildet werden. Die Ergebnisse aus einem Pathologiebefundbericht können als einzelne Elemente in verschiedenen anderen Modulen, z.B. zur Tumordokumentation, wieder eingebunden sein. 

Andererseits können Befundberichte aus anderen Disziplinen (z.B. aus den Modulen [Molekulargenetischer Befundbericht](https://simplifier.net/medizininformatikinitiative-modulomics) oder [Labor](https://simplifier.net/medizininformatikinitiative-modullabor) ganz oder auszugsweise in Pathologiebefundberichte aufgenommen und im Sinne einer synoptischen Bewertung interpretiert werden.

Weiterhin kann eine Beziehung zum Modul [Diagnose](https://simplifier.net/medizininformatikinitiative-moduldiagnosen) bestehen. Eine Diagnose kann von einem Untersuchungsauftrag (z.B. als Teil der klinischen Angaben/Anamnese) referenziert werden. Diese kann aber auch selber auf einen Befund referenzieren, wenn dieser als Evidenz z.B. zum Staging der gestellten Diagnose dienen soll. 

### Bezüge außerhalb der MII

Da es sich bei Pathologie Systeme um sogenannte Subsysteme im Krankenhaus handeln kann, ist eine Kompatibilität zu [ISiK](https://simplifier.net/packages/de.gematik.isik-basismodul/2.0.5) essenziell für die Umsetzung der Pathologie Profile der Medizininformatik Initiative. So wird für die Bündelung der Pathologie Ressourceninstanzen eine Composition/Bundle verwendet, welche vom ISiK Profil [ISiKBerichtSubsysteme](https://simplifier.net/packages/de.gematik.isik-basismodul/2.0.5/files/1973955) erbt. 

 