Plausibilitätsinformation PI
----------------------------

|Codewert	| bit 	| Bedeutung
|-----------	|----	|--------------
|0		| 0	| physikalisch unmögliche Werte oder offensichtlich falsch (harte Limite verletzt, zu grosse Variation)   
|		|	| 
|256		| 8	| Aggregierung aus unsicheren Daten 
|2048		| 11	| aus zahlreichen zu anderen Daten inkonsistenten Daten aggregierter Wert (innerhalb Station)
|4096		| 12	| aus zahlreichen im räumlichen Vergleich inkonsistenten Daten aggregierter Wert


Kombinationen:
4352: bits 8 + 12
2304: bits 8 + 11
6144: bits 11 + 12
6400: bits 8, 11, 12


Mutationsinformation MI
-----------------------
für aggregierte Werte
|MI | Bedeutung
|---|------------
|-11 | 11% der Zehnminutenwerte modifiziert


