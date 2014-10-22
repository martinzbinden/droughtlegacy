# automatic dataimport

getwd()
#Binn
# Beispiel: BIN <- "http://www.meteoschweiz.admin.ch/files/metweb/verlaufsgrafiken/TagVerlaufRegen.BIN.gif"
stations <- c("BER", "THU", "VIS", "BRI", "BIN", "ULR", "COM", "SBO")
baseurl <- "http://www.meteoschweiz.admin.ch/files/metweb/verlaufsgrafiken/TagVerlaufRegen"
destfile.folder <- "data/meteo/gif/"
destfile.suffix <- "gif"


getrain <- function(stations, baseurl, destfile.folder, destfile.suffix) {
  result <- ""
  destfile.folder <- paste(destfile.folder,Sys.Date(),"/",sep="")
  dir.create(destfile.folder, showWarnings = TRUE, recursive = FALSE)
  for (station in stations) {
    #station <- "BER"
    url <- paste(baseurl, station, destfile.suffix,sep=".")
    destfile.name <- paste(destfile.folder,station,Sys.Date(),sep="")
    destfile <- paste(destfile.name,destfile.suffix,sep=".")
    download.file(url, destfile,quiet=F)
    result <- append(result, destfile)
  }
  return(destfile)
}

getrain(stations, baseurl, destfile.folder, destfile.suffix)


