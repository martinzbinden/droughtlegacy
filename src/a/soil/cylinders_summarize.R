#
# purpose: generate overview on prelevated cylinder probes
#
# author: M. Zbinden <martin.zbinden@gmail.com>

cylinders <- read.csv("data/a/soil/cylinders/Cylinders_DroughtLegacyExpA.csv",na.strings=c("NA",""))
cylindersreplacement <- read.csv("data/a/soil/cylinders/CylindersReplacement_DroughtLegacyExpA.csv")


row.has.na <- apply(cylinders$place,1,function(x) {any(is.na(x))})

cylinders[!row.has.na]

apply
cylinders <-  cylinders[complete.cases(cylinders$plot),]




trialdesign <- read.csv("data/a/trialdesign.csv")
str(trialdesign)
merge(x=cylinders,y=trialdesign,by=c("plot","place"))

library(sqldf)
##inner join
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

str(cylinders)
cylinders[,1:10]

freshmatter_3  <- cylinders$FreshWeightLab2Brutto_g - cylinders$Tara_g - cylinders$AluTara_g
freshmatter_2 <- cylinders$FreshWeightFieldLab_g - cylinders$Tara_g 
freshmatter <- cylinders$FreshWeightField_g - cylinders$Tara_g

drymatter <- cylinders$DryWeight_Lab - cylinders$Tara_g - cylinders$AluTara_g
water <- freshmatter - drymatter
watercontent <- water / freshmatter

plot(watercontent ~ cylinders$Place)

plot(freshmatter, freshmatter_2)
plot(freshmatter, freshmatter_3)
barplot(watercontent)



