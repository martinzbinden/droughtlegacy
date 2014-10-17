Bodenproben Drought Legacy
-------------------------

Zweck:  Bestimmung der Bodenfeuchte zum Zeitpunkt der Probenahme, evtl. weitere bodenphysikalische Eigenschaften

##Generelle Hinweise ##
- Verwendete Waage: Mettler PM4800 DeltaRange (Landwirtschaftslabor), Kalibration +/- 0.02 g kontrolliert  

- Gewichtsangaben inklusive Behälter mit Deckel (Tubes oder Zylinder). 



##Datenformat##
gernerell: ''place plot.hole''

|Variable   | Einheit       | Beschreibung
|-------    |---------      |----------------
|place      | factor        | Ortskürzel (z.B. SOM, CAS, siehe Projektbeschreibung)
|plot	      | factor	      | plot number (1-6)
|hole       | factor        | hole number (1-3)
|depth      | factor/cm     | Tiefenbereich der Probenahme / obere Grenze
|maxdepth		| cm            | unter Probentiefe (falls von Standard abweichend)



##Wertezuweisungen
|Variable   | Wert      | Bedeutung
|--------   |---------- |-----------
|hole       |1	        |uphill (only on dry plots)
|           |2	        |middle
|           |3	        |downhill (only on dry plots)
|depth		  |5	        |5(-20) cm 
|           |25	        |25(-40) cm
|           |45	        |45(-60) cm



##Parameter##
|             | Einheit       | Beschreibung
|-------      |---------      |----------------
|freshmatter  |gram (g)       | Frischsubstanz
