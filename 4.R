###���� 20-02-13

rm(list = ls())

##�ι��̷���Ʈ ������� �ϱ�

getwd()
setwd("C:/Users/life-402-11/Desktop/data")
getwd()

###sql  �����԰� �ٿ� �޾ƿ�.

data <- read.csv("DB_trans_online_data.csv")

head(data_shin)
str(data_shin)
data_shin2 <- data_shin[ , c(1, 2, 3, 5, 6, 7, 9, 13, 14, 15, 20, c(25:40))]
dim(data_shin);dim(data_shin2)
names(data_shin2)

plot(summarize(group_by(select(data_shin2,�ð���,�����), �ð���), sale = mean(�����, na.rm = T))

str(data_shin2)

plot(summarize(group_by(select(data_shin2,����,��ǰ����), ����), day_p = mean(��ǰ����, na.rm =T))

     ### D�� �ȵ�??!
     
         
data_shin2 %>%
  select(�ð���, �����) %>%
  group_by(�ð���) %>%
  summarize(sale = mean(�����, na.rm = T)) %>%
  plot(ylim = c(0, 100000))     

install.packages("rpivotTable")
library(rpivotTable)          
rpivotTable(data_shin2)

data_shin2$����� <- as.numeric(data_shin2$�����)
str(data_shin2)

data_shin2 <- filter(data_shin2, �� != "null")

##"" �ƹ��͵� ���������� ��������, != ~�� �ƴѰ��� filter ��󳻶�. �� null�� �����

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