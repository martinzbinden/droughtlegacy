# automatic dataimport

getwd()

df <- read.table("data/meteo/csv/order_30666_data.txt",header = TRUE,skip=2,sep = ";",dec = ".",stringsAsFactors = F)

head(df)
str(df)
df$stn <- as.factor(df$stn)
df$date <- strptime(df$time,format="%Y%m%d%H")
df$Date <- as.Date(df$date, "%Y%m%d%H")

df <- df[df$stn!="stn",]
df <- droplevels(df)
levels(df$stn)


com <- subset(df, stn=="COM")
stb <- subset(df, stn=="SBO")
head(com)
head(stb)


stat <- function(x) c(min = min(x), max = max(x), mean = mean(x))
aggregate(rre150b0 ~ Date, com, max) 
aggregate(rre150b0 ~ Date, com, ) 

mean.difftime


fd <- aggregate(rre150b0 ~ Date, df, sum)

fd <- aggregate(rre150b0 ~ Date, df, sum)


head(fd)
max(fd$rre150b0)


#alternative:
dataframe$day <- trunc(dataframe$Date,"day")
require(plyr)
ddply(dataframe,.(day),
      summarize,
      aveDBT=mean(DBT),
      maxDBT=max(DBT),
      minDBT=min(DBT)
)

library(hydroTSM)  
