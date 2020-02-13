###수업 20-02-13

rm(list = ls())

##인바이러먼트 사라지게 하기

getwd()
setwd("C:/Users/life-402-11/Desktop/data")
getwd()

###sql  선생님거 다운 받아옴.

data <- read.csv("DB_trans_online_data.csv")

head(data_shin)
str(data_shin)
data_shin2 <- data_shin[ , c(1, 2, 3, 5, 6, 7, 9, 13, 14, 15, 20, c(25:40))]
dim(data_shin);dim(data_shin2)
names(data_shin2)

plot(summarize(group_by(select(data_shin2,시간대,매출액), 시간대), sale = mean(매출액, na.rm = T))

str(data_shin2)

plot(summarize(group_by(select(data_shin2,요일,상품수량), 요일), day_p = mean(상품수량, na.rm =T))

     ### D왜 안돼??!
     
         
data_shin2 %>%
  select(시간대, 매출액) %>%
  group_by(시간대) %>%
  summarize(sale = mean(매출액, na.rm = T)) %>%
  plot(ylim = c(0, 100000))     

install.packages("rpivotTable")
library(rpivotTable)          
rpivotTable(data_shin2)

data_shin2$매출액 <- as.numeric(data_shin2$매출액)
str(data_shin2)

data_shin2 <- filter(data_shin2, 연 != "null")

##"" 아무것도 적혀지있지 않은것이, != ~가 아닌것을 filter 골라내라. 즉 null값 사라짐

install.packages("ggplotgui")
library(ggplotgui)
ggplot_shiny(mtcars)


install.packages("esquisse")
library(esquisse)
esquisse::esquisser()
remotes::install_github("dreamRs/esquisse")

install.packages("rattle")
library(rattle)
rattle()
install.packages("RGtk2")
install.packages("bitops")

str(mtcars)
mtcars <- mtcars
rpivotTable(mtcars)

library(rattle)
rattle()


install.packages("rpivotTable")
library(rpivotTable)          
data()
iris
?iris
names(iris)
rpivotTable(iris)
