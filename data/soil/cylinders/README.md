## Hinweise: ##
- Die leeren Zylinder bilden zusammen mit ihren Deckeln eine feste Einheit (gleiche Nummern), für welche das Tara-Gewicht vorgängig erhoben wurde (unterschiedliche Herkunft = unterschiedliche Leergewichte).


## Dateibeschreibungen ##
|Dateiname  					|Beschreibung
|---------					|-------------
|Cylinders_DroughtLegacyExpA.csv		| Zylinderproben für Bodenphysik
|CylindersReplacement_DroughtLegacyExpA.csv	| Tuben statt Zylinder für Thun, Tuben T1, T2, T3, ... (Zylinder wegen Steinen nicht möglich)
		
		

##Wertezuweisungen##
|Variable	|Wert		|Bedeutung
|--------	|-------	|-----------
|errorcode	|0		|alles o.k.
|		|1		|undefinierterter Fehler
|		|10		|Probe nicht erhoben
|		|11		|Probe nicht erhoben (Steine)
|		|12		|Probe nicht erhoben (Auslassung)
|		|20		|Feldaufzeichnung/-Wägung fehlt/verloren
|		|21		|Probe fehlt/verloren
|		|22		|Laborwägung weicht mehr als 0.2g ab von Feldwägung
|		|30		|Probe anders erhoben
|		|31		|Probe anders erhoben (Tube statt Zylinder)
|		|51		|Zylinder defekt
|		|52		|Zylinder nicht auffindbar
|		|53		|Zylinderinhalt zu klein
|		|54		|Zylinderinhalt nachträglich verrringert
|		|55		|Zylinderinhalt beträchtlich gestört/zerfallen
|		|56		|Zylinderinhalt nachträglich leicht ausgeebnet


##Parameter##
|			|Einheit	|Beschreibung
|------------		|------------	|---------------
|nr_cylinder		|number		|Zylindernummer
|nr_cap			|number		|Nummer Zylinderdeckel	
|tara_cylinder_g	|gram (g)	|Zylindertara inkl. Deckel
|tara_cup_g		|gram (g)	|Tara Aluminiumschalen für Trockenschrank. Gleiche Nummer wie Zylinder.
|field_g		|gram (g)	|Frischgewicht im Feld, inkl. tara_cylinder_g
|fieldlab_g		|gram (g)	|Frischgewicht im Feld, inkl. tara_cylinder_g
|tara_cup_g		|gram (g)	|Leergewicht Aluminiumschale  
|adhesive_g		|gram (g)	|Entferntes Klebeband (zur Transportsicherung)
|dry_cup_g		|gram (g)	|Trockengewicht nach Trocknung 24h bei 105°C
|dry_cup_g_measureend	|gram (g)	|Trockengewicht (Überprüfung erste Wägungen am Ende aller Wägungen, ca. 30 Minuten nach Beginn)
|dry_cup_g_3days	|gram (g)	|Trockengewicht (nochmalige Wägung nach 3 Tagen)


## Journal ##
2014-08-... Probenahme eines Zylinders mit natürlich gelagertem Boden
	In der Mitte jedes Plots wurde auf einem ungestörten Stück Boden von ca. 15x15 cm die oberste Boden- und Vegetationsschicht entfernt (ca. 4 cm tief). Gemäss Anleitung wurde dann der Probenahme-Zylinder  eingeschlagen und ausgegraben. Wenn möglich, wurden die Zylinder mit Hilfe eines Messers fertig präpariert, bis er flach war und genau 100cm³ enthielt. Wo dies auf Grund der extremen Trockenheit nicht praktikabel schien (bröckelie Probe), wurde überständiges Material grosszügig stehen gelassen. Nach einer ersten Wägung im Feld wurden locker sitzende Zylinderdeckel anschliessend mit Klebeband fixiert, um ein Herausfallen insbesondere von trockener Erde zu vermeiden. Teilweise wurde am gleichen Abend eine zweite Messung auf einem stabilen Tisch durchgeführt.  Für den Transport und die Aufbewahrung wurden mehrere Zylinder ortsweise in Plastikbeutel verpackt.

2014-10-9 Trockenschrank 105°C 24h
	Die vorsichtig ausgepackten Proben wurden nach Entfernung von allfälligen Klebebandresten auf eine Aluminiumschale gestellt, für welche zuvor das Tara ermittelt wurde. Die Zylinder wurden dabei mit der runden Seite nach unten in einen der beiden zugehörigen Deckel gestellt, der andere Deckel wurde daneben in die Aluminiumschale gelegt.

2014-10-10 Wägung
	Die Probenzylinder wurden mit Deckeln und Aluschale auf der Mettler PM4800 gewogen.

2014-10-13 Kontrolle und Instandsetzung der Probenzylinder
	
