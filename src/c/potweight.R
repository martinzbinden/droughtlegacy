pots <- read.csv("data/c/potweight/Stichprobe_Wassergehalt.csv")


#trockengewicht in g
dry <- 620

pots$water <- pots$X20141022_g - dry
pots



plot(pots~)

aggregate(pots$water,list(pots$Block),mean)
aggregate(pots$X20141022_g,list(pots$Block),mean)

aggregate(pots$water,list(pots$Block),mean)


