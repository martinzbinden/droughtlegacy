pots <- read.csv("data/c/potweight/Stichprobe_Wassergehalt.csv")

#Wassergehalt in g (ungenau, da unterschiedliche ursprüngliche Füllmenge)
dry <- 620
pots$water <- pots$X20141022_g - dry


#Wasserverlust über 44 Stunden (2014-10-22 14:00:00 bis 2014-10-24 10:00:00)
pots$waterdelta <- pots$X20141022_g - pots$X20141024_g
plotpots <- aggregate(pots$waterdelta,list(pots$Block),summary)

#Standort des Verfahrens im Treibhaus
plotpotsx <- aggregate(pots$x,list(pots$Block),mean)
plotpotsy <- aggregate(pots$y,list(pots$Block),mean)