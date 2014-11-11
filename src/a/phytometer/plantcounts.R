##example dataset
## 11 means more than 10 -> means may not be accurate!


df <- data.frame(
  place=c(rep("ZOL",4), rep("ZOL",4), rep("THU",6)),  
  plot=c(rep(1,4), rep(2,2), rep(1,6) ),
  subplot=c(rep(2,4), rep(3,2), rep(2,6)),
  species=c(rep("linum",6), rep("linum",4), rep("silene",2)),
  rep=c(1:4,1:2, 1:4, 1:2),
  count=c(4,7,9,2,0,1,7,10,11,11,9,7)
  )

# instead read csv-file
df <- read.csv("data/a/phytometer/plancounts.R",sep = ";") # maybe more options needed, e.g. header etc.

str(df)
df

aggregate(count~place+plot+subplot+species,df,sum)

aggregate(count~place+plot+subplot+species,df,mean)
aggregate(count~place+plot+subplot+species,df,summary)

## to do: statistics (plots with at least y plants etc.)

mean(df$)
table(count~plot,df)
n


rep("c",3)
