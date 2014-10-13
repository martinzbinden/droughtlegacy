## tara weights (eventually not used)
tara <- read.csv("data/soil/falcontubes/Taras_DroughtLegacy_ExpA_2014-10-13.csv")

# mean weight by tube type
library(reshape)
tapply(tara$Gewicht_g, tara$Objekt,mean)
