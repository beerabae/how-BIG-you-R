install.packages("nycflights13")
library(nycflights13)
flights
names(flights)

attach(flights)
plot(flights$dep_delay)
plot(dep_delay, arr_delay, pch = as.integer(origin, na.rm = T))

class
boxplot(flights$dep_delay)
boxplot(iris$Sepal.Length)
#분포를 보여줌 이상값이 많이 존재함.

boxplot(dep_delay ~ origin, col = "red" )

hist(dep_delay)
hist(dep_delay, breaks = 200, xlim = c(0,40))

par(mfrow = c(2,2))
table(flights$origin)

##여기서 어태치 써줬기 때문에 플라이트 안쓰고 계속 하는거임
library(tidyverse)

c1 <- filter(flights, origin == "EWR")
c2 <- filter(flights, origin == "JFK")
c3 <- filter(flights, origin == "LGA")

flights
str(flights)

par(mfrow = c(1,1))
par(mfrow = c(2,2))

hist(c1$dep_delay, breaks = 1000, xlim = c(0,50))
hist(c2$dep_delay, breaks = 1000, xlim = c(0,50))
hist(c3$dep_delay, breaks = 1000, xlim = c(0,50))


d1 <- filter(flights, month == 1)
d2 <- filter(flights, month == 5)
d3 <- filter(flights, month == 7)

hist(d1$dep_delay, breaks = 1000, xlim = c(0,50))
hist(d2$dep_delay, breaks = 1000, xlim = c(0,50))
hist(d3$dep_delay, breaks = 1000, xlim = c(0,50))
