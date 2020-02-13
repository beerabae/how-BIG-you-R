1+1
getwd()
setwd("C:/Users/life-402-37/Desktop/data")

################ R의 기초 #######################
print("hello world")
A <- 1
A <- 2
A <- c(1,2)
B <- "홍길동"
B <- c("홍길동","김철수")
C <- c(25,26)


m <- matrix(1:12, nrow = 3)
m

arr <- array(1:24, c(2,3,4))
arr

d1 <- c(1,2,3,4)
d2 <- c("Kim","Lee","Choi","Park")
d3 <- c("남","여","여","남")
DF2 <- data.frame(d1,d2,d3)
DF2
DF2$d4 <- as.character(DF2$d2)

Sys.time()
date1 <- as.Date("2018-10-12")
date2 <- as.Date("2017-11-11")
date1 - date2

install.packages("lubridate")
library(lubridate)

date1_y <- year(date1)
date1_m <- month(date1)
date1_d <- day(date1)
date1_wd <- weekdays(date1)

getwd()
setwd("C:/Users/life-402-37/Desktop/data")
bakery <- read.csv("bakery1.csv",
                   header = T,
                   stringsAsFactors = F)
install.packages("lubridate")
library(lubridate)
head(bakery)
str(bakery)
bakery$date <- as.Date(bakery$date)
bakery$promotion <- as.factor(bakery$promotion)
bakery$year <- year(bakery$date)
bakery$month <- month(bakery$date)
bakery$day <- day(bakery$date)
bakery$weekday <- weekdays(bakery$date)
edit(bakery)
head(bakery)

month <- c(1,2,3,4,5,6,7)
season <- c("겨울","겨울","봄","봄","봄","여름","여름")
seasontb <- data.frame(month, season)
seasontb

str(bakery)

bakery2 <- merge(bakery, seasontb, by = 'month', all.x = T)

quarter <- c(1,1,1,2,2,2,3,3,3,4,4,4)
quartertb <- data.frame(month, quarter)

bakery3 <- merge(bakery2, quartertb, by = 'month', all.x = T)
str(bakery3)

ana1 <- bakery3[,c(7,8)]
ana2 <- bakery3[,c("smoothie","coffee")]
ana3 <- data.frame(bakery3$smoothie, bakery3$coffee)
head(bakery3)

install.packages("tidyverse")
library(tidyverse)

a <- select(bakery3 , cookie, coffee, smoothie)
b <- filter(bakery3, season == "봄")
head(b,5)
head(a,3)

bak <- select(filter(bakery3, cake<50) , cookie, smoothie, coffee)
bak <- bakery3 %>% filter(cake < 50) %>% select(cookie, smoothie, coffee)
bak
str(bak)
arrange(bak, desc(smoothie))
bak %>% arrange(desc(smoothie))


spring <- select(filter(bakery3, season =="봄"), cookie, smoothie)
spring <- bakery3 %>% filter(season == "봄") %>% select(cookie, smoothie)
summer <- bakery3 %>% filter(season == "여름") %>% select(cookie, smoothie)

par(mfrow = c(4, 4))
plot(spring)
plot(summer)

install.packages("Rcmdr")
library(Rcmdr)

student <- read.csv("example_studentlist.csv", header = T, stringsAsFactors = F)
student %>% str()
survey <- read.csv("example_survey.csv", header = T, stringsAsFactors = F)
str(survey)



sale <- read.csv("수업용교재실습자료/사원별판매현황.csv")


library(dplyr)

select(sale, 홍길동, 전우치)
filter(sale, 홍길동 >= 70)
arrange(sale, 홍길동)
sale$홍전 <- sale$홍길동 + sale$전우치
mutate(sale, 홍전2 = 홍길동 + 전우치)

vote <- read.csv("수업용교재실습자료/후보자별지역별예상지지율.csv")
head(vote,5)
filter(vote, 지역 == "경기도")
select(filter(vote, 예상지지율 > 50),이름,지역)
arrange(filter(vote, 지역 == "서울시"), desc(예상지지율))
edit(sale)

#################2-12 실습#######################
getwd()
[1] "C:/Users/life-402-11/Documents"
> setwd("C:/Users/life-402-11/Desktop/data")
getwd()

