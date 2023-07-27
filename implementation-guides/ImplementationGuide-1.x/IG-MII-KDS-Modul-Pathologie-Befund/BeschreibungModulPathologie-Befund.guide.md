## Beschreibung Modul Pathologie-Befund


{{render:guides-ImplementationGuide-Common-images-19-Abbildung-Pathologie-Befund-de}}

Histologische und zytologische Untersuchungen spielen bei einem Großteil von schwerwiegenden medizinischen Diagnosen eine entscheidende Rolle. Autoptische Untersuchungen sind sowohl wertvolle Quelle für neue medizinische Erkenntnisse (siehe COVID-19), als auch zentrale Elemente einer klinischen Qualitätskontrolle.  

Zentrales Dokument und Gegenstand dieses Erweiterungsmoduls ist dabei der **Befundbericht einer Pathologieeinrichtung**. Für zeitkritische Anwendungen, z.B. eine intraoperative Schnellschnittdiagnostik, können auch schon vorläufige Ergebnisse interessant sein. In der Regel werden aber sowohl in der Patientenversorgung als auch in der Forschung die finalen Pathologiebefundberichte verwendet. Aufgrund des breiten Einsatzes des Erweiterungsmoduls **Pathologie-Befund** wird auf eine Beschreibung von einzelnen Anwendungen innerhalb der einzelnen Konsortien verzichtet. 

### Abbildung in Art-Decor

{{render:implementation-guides-ImplementationGuide-Common-images-ArtDecor-ganz}}

**Pathologiebefundberichte** sind als klinische Dokumente zusammengefasste, überwiegend in Textform vorliegende Ergebnisse einer klinisch beauftragten, in einer Pathologieeinrichtung durchgeführten histo- und zytomorphologischen sowie molekularen Untersuchung oder Gruppen derartiger Untersuchungen mit einer synoptischen Bewertung. Im Sinne der [ISO/IEC-Norm 17020](https://www.din.de/de/mitwirken/normenausschuesse/nqsz/veroeffentlichungen/wdc-beuth:din21:146320816) handelt es sich dabei um Inspektionsberichte, den **"Pathologisch-anatomischen Begutachtungen"**. Die freitextlich formulierten Untersuchungsergebnisse können zusätzlich durch strukturierte Kodierungen ergänzt (semantisch annotiert) werden. Dabei gilt: **Jede strukturierte Kodierung muss auch als Text lesbar sein, aber nicht jede Textinformation muss kodiert werden.**  

Zum klinischen Auftrag sowie zu den einzelnen Untersuchungen werden jeweils verschiedene Daten erfasst, unter anderem auch, ob es sich um vorläufige oder abschließenden Untersuchungsbefunde handelt (Status) und verschiedene im Kontext wichtige Zeitpunkte. 

### Wichtige Zeitpunkte in der pathologischen Untersuchung 

Im Verlauf einer pathologischen Untersuchung von der Entnahme des Präparates beim Patienten bis zur Übermittlung des Befundes an den Einsender werden verschiedene Zeitstempel festgehalten. 

Für jede Untersuchung gibt es einen Zeitpunkt, zu dem eine Beobachtung in der Probe (z.B. das Ergebnis einer immunhistochemischen Analyse) mutmaßlich der Eigenschaft im Patienten entsprach. Wenn der Zeitpunkt der Präparatentnahme angegeben ist, wird meist dieser Zeitpunkt verwendet. Andernfalls wird zumeist behelfsmäßig der Probeneingang in der Pathologieeinrichtung gewählt. Dieses Element ist wichtig, um verschiedene Analysen im Zeitverlauf sortieren zu können. Die Präzision soll ausreichen, um auch Minuten zu erfassen. 

Das Gültigkeitsdatum gibt an, wann der Bericht freigegeben wurde. Da ein Pathologiebefundbericht häufig mehrere Analysen umfasst, sollte die Befundfreigabe mit einem expliziten Datum versehen sein. 

### Interpretationen und Kommentare

Ein wesentlicher Teil des Pathologiebefundberichtes sind die ärztlichen Interpretationen, die sog. Synopse, und die Kommentare, mit denen der befundende Pathologe dem Einsender hilft, die richtigen Schlüsse aus den Untersuchungsergebnissen zu ziehen. Die eigentliche Interpretation wird im Wesentlichen als Freitext abgespeichert. Auch hier sind zusätzliche strukturierte Kodierungen möglich. 

Mitunter beziehen sich einzelne Kommentare nicht auf den gesamten Befund, sondern nur auf einzelne Beobachtungen (z.B. „am ehesten handelt es sich …“, „… entspricht am ehesten einem …“). Diese Kommentare sollten als Notiz gespeichert werden.  

## Beobachtungsberichtabschnitte

Der Pathologiebefundbericht gliedert sich in mehrere Abschnitte, die jeweils die pathologisch-anatomischen Beobachtungen bezüglich ihrer Untersuchungs- und Interpretationsebene zusammenfassen.

### Abbildung der Beobachtungsberichtabschnitte 

{{render:ImplementationGuide-Common-images-ArtDecor-Beobachtungsberichtabschnitt}}

## Untersuchungsauftrag

Mit dem Untersuchungsauftrag des Einsenders werden den Patholog:innen zusammen mit den entnommenen Proben auch Informationen zu diesen, zur Anamnese, zu dem aktuellen Untersuchungsanlass und zu den gewünschten Untersuchungen mitgeteilt. Diese werden in der Regel recht allgemein gehalten, da es sich bei diesem Auftrag um eine Konsultation und nicht um eine Auftragsleistung handelt. Diese Informationen werden im Pathologiebefundbericht in einem speziellen Abschnitt (s.o.) referenziert.

Aus einem (oder mehreren) Untersuchungsaufträgen zu einer Patientin wird mit den zugehörigen Proben in der Pathologieeinrichtung ein Fall, das "Service Event", kreiert. Die Fallnummer wird meist als Eingangsnummer (**Accession number**) bezeichnet.

### Abbildung des Untersuchungsauftrags

{{render:guides-ImplementationGuide-Common-images-ArtDecor-Untersuchungsauftrag}}


## Proben

Als Einsendung (Probe) wird das vom Einsender von Patient:in während einer diagnostischen oder therapeutischen Prozedur entnommene Körpermaterial (Gewebe, Zellen, Flüssigkeiten) bezeichnet, welches das Wurzelelement aller Proben im Bearbeitungsprozess ist. Die bei dessen Bearbeitung im Pathologielabor entstehenden Einheiten (Block, Gewebsschnitt) sind ebenfalls Proben. Im Rollenverständnis besteht zwischen diesen Bezeichnungen kein prinzipieller Unterschied. In der Regel befinden sich Proben in oder auf Containern (Einsendungsgefäß, Kapsel, Objektträger/Deckglas), meist in Verbindung mit Additiven (Fixationsmittel, Gewebshärter, Eindeckungsmedien) 

### Abbildung der Probe 

{{render:implementation-guides-ImplementationGuide-Common-images-ArtDecor-Probe}}
