## Installing required packagesyes
install.packages("foreign", dependencies = TRUE) # for importing SPSS data
install.packages("car", dependencies = TRUE) # for recoding functions
install.packages("chron", dependencies = TRUE) # for changing time information
install.packages("pastecs", dependencies = TRUE) # for basic descriptives
install.packages("dplyr", dependencies = TRUE) # for basic descriptives

## Loading required packages
require(foreign)
require(car)
require(chron)
require(pastecs)
library("dplyr")

iat.2007_2015 = read.csv("/Users/vikramkarthikeyan/Documents/Kenny/IAT-Gender-Career-R/dataset/2007-2015.csv", header = TRUE)

iat.2007_2015 <- iat.2007_2015[c("session_id", "session_status", "date", "year", "month", "day", "age",
             "sex","D_biep.Male_Career_all", "countrycit", 
             "countryres","ethnicityomb","raceomb")]


iat.2016 = read.csv("/Users/vikramkarthikeyan/Documents/Kenny/IAT-Gender-Career-R/dataset/2016.csv", header = TRUE)
iat.2017 = read.csv("/Users/vikramkarthikeyan/Documents/Kenny/IAT-Gender-Career-R/dataset/2017.csv", header = TRUE)
iat.2018 = read.csv("/Users/vikramkarthikeyan/Documents/Kenny/IAT-Gender-Career-R/dataset/2018.csv", header = TRUE)

iat.2007_2016 <- bind_rows(iat.2007_2015, iat.2016)
iat.2007_2017 <- bind_rows(iat.2007_2016, iat.2017)
iat.2007_2018 <- bind_rows(iat.2007_2017, iat.2018)

write.csv(iat.2007_2018, file = "/Users/vikramkarthikeyan/Documents/Kenny/IAT-Gender-Career-R/dataset/cleaned-2007-2018.csv")



