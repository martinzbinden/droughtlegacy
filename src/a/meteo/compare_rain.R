## compare manually registered data with meteoswiss IDAweb data

## get IDAweb hourly data, convert to daily sums according "drought legacy" rules
source get_rainmm.R

## import drought legacys own data
dlrain_d <- read.table("data/a/meteo/protocol/Drought_Legacy_rain_20141012.csv",header = TRUE,sep = ",",dec = ".",stringsAsFactors = F,)

dlrain_d$date <- as.Date(dlrain_d$DATE, "%d.%m.%Y")
for (stn in c("BER","THU","VIS","BRI","BIN","ULR","COM","SBO")) {
  print(paste("as numeric:",stn,sep = " "))
  dlrain_d[,stn] <- as.numeric(dlrain_d[,stn])
}

dlrain_d <- dlrain_d[c(15,7:14)]
str(dlrain_d)

library(reshape2)
dlrain_d_l <- melt(dlrain_d,id="date",variable.name = "stn",value.name = "precip")
head(dlrain_d_l)

dl <- dlrain_d_l[dlrain_d_l$date >= datefrom & dlrain_d_l$date <= dateto,]
dl$stn <- factor(dl$stn, levels=sort(unique(as.character(dl$stn))))
outdl <- dcast(dl,date~stn)

sum(abs(out$COM - outdl$COM),na.rm = T)
sum(out$COM - outdl$COM,na.rm = T)/nrow(out)
sqrt(sum((out$COM - outdl$COM)^2,na.rm = T))