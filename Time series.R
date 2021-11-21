
library(tidyverse)
library(ggplot2)
library(ggthemes)
library(forecast)
library(tseries)

#load
dp<-read.csv("C:/Users/sruthi/Downloads/candy_production.csv")
dp


str(data)
## Changing column names .
colnames(data1)<-c("Period","candy_Production")


attach(data)
candydata<-ts(data,c(1972,1),c(2017,8),12)
str(candydata)



# Check for missing values
sum(is.na(candydata))

frequency(candydata)             ## Frequency of time series
cycle(candydata)                 ## Cycle of time series

## Summary of data
summary(candydata)

plot(candydata,xlab="Year", ylab = "Candy_Production ",main="Monthly US Candy Production ")

boxplot(candydata~cycle(candydata))


autoplot(candydata) + labs(x ="Year", y = "Candy_Production", title="Monthly US Candy Production ") + theme_classic()







