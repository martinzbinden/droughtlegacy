#
# purpose: generate overview on prelevated cylinder probes
#
# author: M. Zbinden <martin.zbinden@gmail.com>

cylinders <- read.csv("data/a/soil/cylinders/Cylinders_DroughtLegacyExpA.csv",na.strings=c("NA",""))
cylindersreplacement <- read.csv("data/a/soil/cylinders/CylindersReplacement_DroughtLegacyExpA.csv")

cylinders <-  cylinders[complete.cases(cylinders$plot),]
cylinders <- rbind(cylinders, cylindersreplacement)

str(cylinders)
str(cylindersreplacement)

trialdesign <- read.csv("data/a/trialdesign.csv")
str(trialdesign)
trialdesign <- trialdesign[trialdesign$subplot == 1 ,]
df <- merge(x=cylinders,y=trialdesign,by=c("plot","place"),  )

df$freshmatter <- df$field_g - df$tara_cylinder_g
df$drymatter <- df$dry_cup_g - df$tara_cylinder_g - df$tara_cup_g
df$water <- df$freshmatter - df$drymatter
df$watercontent <- df$water / df$freshmatter

head(df)
str(df)
df[,1:9]
levels(df$place)
df[,20:10]
plot(watercontent ~ place, df)
plot(watercontent ~ treatment, df)



## plot
library(ggplot2)
qplot(treatment, watercontent, data=df, geom="boxplot", facets= ~place)




## alternative to merge: sqldf
##inner join
library(sqldf)
df3 <- sqldf("SELECT nr_cylinder, nr_cap, tara_cylinder_g, place, plot, herbicide, fungicide FROM cylinders JOIN trialdesign USING(place,plot)")

##left join
df3 <- sqldf("SELECT nr_cylinder, nr_cap, tara_cylinder_g, place, plot, herbicide, fungicide FROM cylinders LEFT JOIN trialdesign USING(place,plot)")

if(!require(data.table))
{install.packages("data.table")}

dt1 <- data.table(cylinders, key="place")
dt2 <- data.table(trialdesign, key="place")
joined.cylinders.trialdesign <- dt1[dt2]

if(!require(dplyr))
{install.packages("dplyr")}


freshmatter_3  <- cylinders$FreshWeightLab2Brutto_g - cylinders$Tara_g - cylinders$AluTara_g
freshmatter_2 <- cylinders$FreshWeightFieldLab_g - cylinders$Tara_g 




