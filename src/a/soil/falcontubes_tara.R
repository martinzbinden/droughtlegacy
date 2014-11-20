## tara weights (eventually not used)
tara <- read.csv("data/a/soil/falcontubes/Tar")

# mean weight by tube type
library(reshape)
tapply(tara$Gewicht_g, tara$Objekt,mean)
