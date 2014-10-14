#
# purpose: generate overview on prelevated cylinder probes
#
# author: M. Zbinden <martin.zbinden@gmail.com>

cylinders <- read.csv("data/soil/cylinders/Cylinders_DroughtLegacy_ExpA_2014-10-13.csv")
cylindersreplacement <- read.csv("data/soil/cylinders/CylindersReplacement_DroughtLegacy_ExpA_2014-10-13.csv")
cylinders[na.exclude(cylinders$Plot),]
cylinders <-  
  cylinders[is.na(Plot) != T,]


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


