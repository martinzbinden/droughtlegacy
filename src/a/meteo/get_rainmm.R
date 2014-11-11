## Aus Zehnminutenwerten die Tageswerte für die Stationen BER,THU,VIS,ULR,Binn,COM,SBO berechnen.
## Methode: Stampfli A. 2014 für Projekt "drought legacy":
## Werte aus Internetdiagramm 01:00 bis 00:00 (entspricht 00:40 – 24:30) 
## d.h. 00:00 Wert zu Vortag

### BEGINN BENUTZEREINGABEN

datefrom <- "2014-06-01" 
dateto <- "2014-10-29"

idaweb_file <- "data/a/meteo/meteoswiss/csv/order_30833_data.txt"
out_file <- "data/a/meteo/protocol/rain.csv"


### ENDE BENUTZEREINGABEN


### BEGINN HAUPTPROGRAMM
source("src/a/meteo/get_raingraphics.R")
library(reshape2)

## Datenimport und Faktorendefinition
msrain_zl <- read.table(idaweb_file, header = TRUE, skip=2, sep = ";", dec = ".", stringsAsFactors = F,) 
msrain_zl$time <- as.POSIXct(strptime(msrain_zl$time,format="%Y%m%d%H%M"),tz="GMT")
msrain_zl$localtime <- format(msrain_zl$time,tz="Europe/Zurich")
msrain_zl$stn <- as.factor(msrain_zl$stn)
msrain_zl$rre150z0 <- as.numeric(msrain_zl$rre150z0)

## Massgebendes Datum zu 10-Min-Werten zuweisen und für Datum und Station aggregieren
msrain_zl$date <- as.Date(ifelse(format(as.POSIXct(msrain_zl$localtime), format="%H:%M:%S") < "00:40:00",  as.Date(msrain_zl$localtime)- 1, as.Date(msrain_zl$localtime)), origin="1970-01-01")                          
msrain_d <- aggregate(rre150z0~date+stn,msrain_zl,sum)


## zusätzlich Stundensummen berechnen (:40 bis :40)
msrain_zl$hour <- ifelse(format(as.POSIXct(msrain_zl$localtime), format="%M") < "40",  as.POSIXct(msrain_zl$localtime) - as.POSIXct("01:00:00"), as.POSIXct(msrain_zl$localtime))
msrain_h <- aggregate(cbind(rre150z0)~hour+stn+time,msrain_zl,sum)


## Daten für angegebenen Datumbereich aufbereiten und ausgeben
ms <- msrain_d[msrain_d$date >= datefrom & msrain_d$date <= dateto,]
out <- dcast(ms,date~stn)
out <- out[,c("date","BER","THU","VIS","BRI","BIN","ULR","COM","SBO")]

write.csv(out,out_file)
### ENDE HAUPTPROGRAMM


