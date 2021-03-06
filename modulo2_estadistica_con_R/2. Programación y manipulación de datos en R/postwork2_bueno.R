liga17_18 <- read.csv("https://www.football-data.co.uk/mmz4281/1718/SP1.csv")
liga18_19 <- read.csv("https://www.football-data.co.uk/mmz4281/1819/SP1.csv")
liga19_20 <- read.csv("https://www.football-data.co.uk/mmz4281/1920/SP1.csv")

library(dplyr)
setwd("C:/Users/Lazaro Diaz/Documents/reto3/postwork2")

# La Liga 2017/2018
str(liga17_18)
head(liga17_18)
View(liga17_18)
summary(liga17_18)

# La Liga 2018/2019
str(liga18_19)
head(liga18_19)
View(liga18_19)
summary(liga18_19)

# La Liga 2019/2020
str(liga19_20)
head(liga19_20)
View(liga19_20)
summary(liga19_20)

?lapply
?select

liga17_18.2 <- select(liga17_18, Date, HomeTeam, AwayTeam, FTHG, FTAG, FTR)
liga18_19.2 <- select(liga18_19, Date, HomeTeam, AwayTeam, FTHG, FTAG, FTR)
liga19_20.2 <- select(liga19_20, Date, HomeTeam, AwayTeam, FTHG, FTAG, FTR)

str(liga17_18.2)
str(liga18_19.2)
str(liga19_20.2)

liga17_18.2 <- mutate(liga17_18.2, Date = as.Date(Date, "%d/%m/%y"))
liga18_19.2 <- mutate(liga18_19.2, Date = as.Date(Date, "%d/%m/%Y"))
liga19_20.2 <- mutate(liga19_20.2, Date = as.Date(Date, "%d/%m/%Y"))

# Forma 1
datos_liga <- rbind(liga17_18.2, liga18_19.2, liga19_20.2)

write.csv(datos_liga, file = "datos_liga.csv")

str(datos_liga)
