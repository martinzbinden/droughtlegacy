# automatic dataimport

#Binn
# Beispiel: BIN <- "http://www.meteoschweiz.admin.ch/files/metweb/verlaufsgrafiken/TagVerlaufRegen.BIN.gif"
stations <- c("BER", "THU", "VIS", "BRI", "BIN", "ULR", "COM", "SBO")
baseurl <- "http://www.meteoschweiz.admin.ch/files/metweb/verlaufsgrafiken/TagVerlaufRegen"
destfile.folder <- "meteodata/"
destfile.suffix <- "gif"

getrain(stations, baseurl, destfile.folder, destfile.suffix)

getrain <- function(stations, baseurl, destfile.folder, destfile.suffix) {
  result <- ""
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


download.file(url, destfile, method, quiet = FALSE, mode = "w",
              cacheOK = TRUE,
              extra = getOption("download.file.extra"))
