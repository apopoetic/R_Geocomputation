library(tidyverse)
library(ggmap)
library(lubridate)

#load earthquake data
eq_ <- read_csv("C:\\Users\\ankur\\OneDrive\\
                R scripts\\R_Geocomputation\\eq.csv", na = c("", NA))
#remove rows with NA
eq <- eq_ %>% drop_na()
#convert date column to as.Date
eq$date <- dmy(eq$date)
#read India's shape file
india <- get_stamenmap(bbox = c(left = 65.2, bottom = 5.8, right = 98.5, top = 35.7), 
                       zoom = 5, maptype = "terrain-background")

ggmap(india) + geom_point(data = eq, aes(x = long, y = lat, colour = month(date), alpha = 0.25)) +
  xlab("") + ylab("") + labs(title = "Month-wise earthquakes \n detected in India in the year 2020", caption = "Source: Ministry of Earth Sciences, Govt. of India") +
  theme(plot.title = element_text(size = 10))
ggsave("C:\\Users\\ankur\\OneDrive\\R scripts\\R_Geocomputation")


