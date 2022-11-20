source("http://thegrantlab.org/misc/cdc.R")

head(cdc$height)
tail(cdc$weight, 20)

library(ggplot2)
library(tidyverse)

#Scatter ploting
ggplot(cdc, aes(x = height, y = weight)) + 
  geom_point() + 
  labs(x = "Height (inches)", y = "Weight (pounds)") +
  geom_smooth()

cor.test(cdc$height, cdc$weight)

#Metrics transformation, histogram, and BMI
height_m <- cdc$height * 0.0254
weight_kg <- cdc$weight * 0.454

ggplot(cdc, aes(x = weight_kg)) + 
  geom_histogram(binwidth = 8)

bmi = weight_kg / (height_m ^ 2)
cdc2 <- cbind(cdc, height_m, weight_kg, bmi)

ggplot(cdc2, aes(x = height, y = bmi)) + geom_point() +
  labs(x = "Height (inches)", y = "BMI (kg/m^2)") +
  geom_smooth()

cor.test(cdc2$height, cdc2$bmi)

#Logical count and subset
head(bmi >= 30, 100)

round(sum(bmi >= 30) / length(bmi) * 100, 1)

cdc[567, 6]
cdc[1:10, 6]
cdc[1:10,]

cdc[1:100, c("height", "weight")]

sum_gender <- sum(as.integer(cdc[bmi >= 30, "gender"]))
nbmi30 <- sum(bmi >= 30)
nmale <- 2 * nbmi30 - sum_gender
nmale
