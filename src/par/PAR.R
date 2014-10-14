require(RAtmosphere)
sza<-SZA('2014-09-24 14:00',Latb=46,Lon=7)
z <- as.POSIXct('2014-06-30 10:45:00', tz="PDT")
sza<-SZA("2010-06-30 9:45",Lat=46.77,Lon=117.2)

sza_m = acos(sin(0.816)*sin(0.4) + cos(0.816)*cos(0.4)*cos(0.2618 * (9.75 - 11.87)))
sza_m_deg = sza_m * 180 / pi

sza
sza_m_deg
90 - sza

z <- as.POSIXct('2014-06-30 9:45:00', tz="GMT")
as.POSIXlt(z)

zz <- as.POSIXct(z, "GMT")

as.POSIXct(Sys.time(), "America/LosAngeles")

y <- as.POSIXlt('2014-06-30 9:45:00 GMT', "GMT")

as.POSIXlt(y,"CEST")

sza

t<-Sys.time()+seq(-3600*12,3600*12,,by=1800)
plot(t,SZA(t,Lat=0,Lon=0),
     main='SZA',
     xlab='Time',
     ylab='SZA [°deg]')



#sza: sun zenith angle
#pla: parmeter lot angle


#t = T / S # Tau = Transmitted / sum of PAR

#Korrekturfaktor aus geschnittener Fläche:
k = 1 / (T / S) = S/T

k = 900/1000
  
k = PAR_ext / PAR_int

#correct ungeschnittene Flächen:
T_k = T_g * k

#Hangneigung abschätzen (in Sonnenrichtung):
slope = acos(k)*180/pi

slope = acos(ext)


cos(pi)
cos(0)



