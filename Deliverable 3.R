library(tidyverse)
library(tidyr)
Seattle <- read_csv("~/Desktop/My R stuff on Side/Seattle Crime info/Seattle.csv")
library(lubridate)
Seattleclean <- subset(Seattle, select = 
                         c("Summary Offense Code", "Summarized Offense Description", "District/Sector", "Month", "Year"))
removed.old <- filter(Seattleclean, Year >= 2008)
arranged <- arrange(removed.old, Year, Month)
names(arranged)[1] <- "Offense Code"
names(arranged)[2]<- "Offense"
names(arranged)[3]<-"District"
install.packages("mapproj")
install.packages("ggmap")
install.packages("DeducerSpatial")
require(ggmap)
require(maps)
ggplot(data = arranged, aes(x= 
