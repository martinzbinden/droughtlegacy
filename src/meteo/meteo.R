# automatic dataimport

getwd()

df <- read.csv("data/meteo/csv/order_30666_data.txt",header=TRUE,row.names=NULL)
df <- read.csv("data/meteo/csv/order_30666_data.txt",header=FALSE,row.names=NULL)


colnames(df) <- c(colnames(df)[-1],"x")


head(df)
