
#airquality = read.csv('path/airquality.csv',header=TRUE, sep=",")
airquality<- datasets::airquality
####Top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)
######Columns
airquality[,c(1,2)]

df<-airquality[,-6]
print(df)
summary(airquality[,1])

airquality$Ozone

summary(airquality$Wind)

###########Summary of the data#########

summary(airquality)
summary(airquality$Wind) 

#####################
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type="p")
plot(airquality)
# points and lines 
plot(airquality$Wind, type= "l") # p: points, l: lines,b: both
plot(airquality$Wind, xlab = 'Index', 
     ylab = "Ozone Concentration", main = 'Ozone levels in NY city',
     col = 'blue')

# Horizontal bar plot
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        ylab = 'ozone levels', col= 'blue',horiz =F,axes=T)
#Histogram
hist(airquality$Temp)
hist(airquality$Temp, 
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.', col='blue')

#Single box plot
boxplot(airquality$Wind,main="Boxplot")

boxplot.stats(airquality$Wind)$out  #gives the value of outlair



# Multiple box plots
boxplot(airquality[,1:4],main='Multiple')
#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot "o" - box around the plot,"n"- No box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=1, bty="o")
plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col='green',horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main='Multiple Box plots')

print(max(airquality$Ozone, na.rm=TRUE))
print(length(airquality$Ozone)) #dim for the size of data frame
print(min(dim(airquality)))

#var
#skewness
#kurtosis
b<-3
hist(airquality[,b])
sd(airquality[,b],na.rm = T)
var(airquality[,b],na.rm = T)
skewness(airquality[,b],na.rm = T)
kurtosis(airquality[,b],na.rm = T)

##Home work
#e_quakes<-datasets::quakes
#summary(e_quakes)
#Load Packages















