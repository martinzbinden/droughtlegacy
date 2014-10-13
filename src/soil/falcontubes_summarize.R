#
# purpose: generate overview on prelevated falcontubes
#
# author: M. Zbinden <martin.zbinden@gmail.com>
getwd()
falcontubes <- read.csv("data/soil/falcontubes/Falcontubes_DroughtLegacy_ExpA_2014-10-13.csv")
falcontubes$FreshWeightField_g

attach(falcontubes)
ft <- plot(FreshWeightField_g, FreshWeightLab_g)
identify(FreshWeightField_g, FreshWeightLab_g, labels=row.names(tara))
falcontubes[202,]
detach(falcontubes)

match(falcontubes[(is.na(falcontubes$FreshWeightField_g)),], falcontubes[(is.na(falcontubes$FreshWeightLab_g)),]
falcontubes[is.na(falcontubes$FreshWeightField_g) is.na(falcontubes$FreshWeightLab_g)  , 1:7]

falcontubes$freshmatter <- falcontubes$FreshWeightLab_g - tara$falcontube
falcontubes$drymatter <- falcontubes$DryWeight_Lab - tara$falcontube

falcontubes$water <- falcontubes$freshmatter - falcontubes$drymatter



##needed first: tara of tube!
#falcontubes$ <- falcontubes$water / falcontubes$FreshWeightLab_g


