# automatic dataimport

getwd()
meteoswiss_rain <- read.table("data/meteo/csv/order_30666_data.txt",header = TRUE,skip=2,sep = ";",dec = ".",stringsAsFactors = F,)

meteoswiss_rain <- meteoswiss_rain[meteoswiss_rain$stn!="stn",]
meteoswiss_rain <- droplevels(meteoswiss_rain)
levels(meteoswiss_rain$stn)

head(meteoswiss_rain)
str(meteoswiss_rain)
meteoswiss_rain$datetime <- strptime(meteoswiss_rain$time,format="%Y%m%d%H")

meteoswiss_rain$stn <- as.factor(meteoswiss_rain$stn)
meteoswiss_rain$daytime <- format(meteoswiss_rain$datetime, "%H:%M:%S")
meteoswiss_rain$date <- as.Date(meteoswiss_rain$datetime, "%Y%m%d%H")
meteoswiss_rain$rre150b0 <- as.numeric(meteoswiss_rain$rre150b0)
meteoswiss_rain$rre150h0 <- as.numeric(meteoswiss_rain$rre150h0)
meteoswiss_rain$rre024i0 <- as.numeric(meteoswiss_rain$rre024i0)

meteoswiss_rain <- aggregate(cbind(rre150b0,rre150h0,rre024i0)~date+stn,meteoswiss_rain,sum)

plot(rre150b0~stn+date,meteoswiss_rain)

## import drought legacys own data
droughtlegacy_rain <- read.table("data/meteo/xls/Drought_Legacy_rain_20141012.csv",header = TRUE,sep = ",",dec = ".",stringsAsFactors = F,)

droughtlegacy_rain$date <- as.Date(droughtlegacy_rain$DATE, "%d.%m.%Y")
droughtlegacy_rain$BER <- as.numeric(droughtlegacy_rain$BER)
droughtlegacy_rain$THU <- as.numeric(droughtlegacy_rain$THU)
droughtlegacy_rain$VIS <- as.numeric(droughtlegacy_rain$VIS)
droughtlegacy_rain$BRI <- as.numeric(droughtlegacy_rain$BRI)
droughtlegacy_rain$BIN <- as.numeric(droughtlegacy_rain$BIN)
droughtlegacy_rain$ULR <- as.numeric(droughtlegacy_rain$ULR)
droughtlegacy_rain$COM <- as.numeric(droughtlegacy_rain$COM)
droughtlegacy_rain$SBO <- as.numeric(droughtlegacy_rain$SBO)

droughtlegacy_rain <- droughtlegacy_rain[7:15]
str(droughtlegacy_rain)

library(reshape2)
droughtlegacy_rain <- melt(droughtlegacy_rain,id.vars = "date",variable.name = "stn",value.name = "precip")
head(droughtlegacy_rain)

droughtlegacy_rain

for (date in droughtlegacy_rainm$date) {
  droughtlegacy_rain[droughtlegacy_rain$date == date,] - fd[fd$date == date,] 
}


library(ggplot2)
plot(precip~date,droughtlegacy_rainm)
ggplot(meteoswiss_rain, )

qplot(date, precip, droughtlegacy_rainm)

      

#t_maxmin=ddply(t_air,.(Datum),summarize,Datum=Datum[which.max(T_Luft)],max.value=max(T_Luft),min.value=min(T_Luft))

df <- as.ts(droughtlegacy_rain)

barplot(droughtlegacy_rain$BER)
ts()

dg <- as.ts(meteoswiss_rain)
barplot(meteoswiss_rain$rre150b0)
barplot(droughtlegacy_rain$precip)


df - dg



