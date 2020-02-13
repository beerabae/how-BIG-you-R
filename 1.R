install.packages("ggplot2")
library(ggplot2)
iris
plot(iris)

factor <- apropos("^geom*_")
factor

getwd()
data1 <- read.csv("수업용교재실습자료/사원별판매현황_홍길동.csv")
str(data1)
edit(data1)

g <- ggplot(data1, aes(x=요일,y=실적,group=이름))
g1 <- g + geom_line()
g1

days <- data1$요일
gg1_0 <- ggplot(data1, aes(x=요일,y=실적,group=이름))
gg1_1 <- gg1_0 + geom_line(linetype = "dashed", color = "red", size = 10)
gg1_2 <- gg1_1 + scale_x_discrete(limits = days)
gg1_2

data2 <- read.csv("수업용교재실습자료/사원별판매현황_전체.csv")
head(data2, 5) ; tail(data2,4)

days <- data1$요일
gg1_0 <- ggplot(data1, aes(x=요일,y=실적,group=이름))
gg1_1 <- gg1_0 + geom_line(linetype = "dashed", color =이름, size = 10)
gg1_2 <- gg1_1 + scale_x_discrete(limits = days)
gg1_2

data1
gg2_1 <- ggplot(data2, aes(x=요일,y=실적))
gg2_1
gg2_1 + geom_point() + scale_x_discrete(limit = days)


data2
days2 <- unique(data2$요일)
gg3_0 <- ggplot(data2, aes(x=요일,y=실적,fill=이름))
gg3_1 <- gg3_0 + geom_bar(stat="identity")
gg3_2 <- gg3_1 + scale_x_discrete(limits=days2)
gg3_2

#####이거 왜 안됌 166페이지
ggplot(data2,aes(x=요일,y=실적,fill=이름)) +
  geom_bar(stat="identity") +
  geom_text(aes(y=위치,labe1=paste(실적,"민원")),size=3) +
  scale_X_discrete(limit=days2)+
  guides(fill=guide_legend(reverse=F))
################
####ggplot너무 어려워서 아래 소스코드 주심
install.packages("esquisse")
library(esquisse)
esquisse::esquisser()
remotes::install_github("dreamRs/esquisse")

install.packages("GrapheR")
library(GrapheR)
run.GrapheR()

install.packages('ggedit')
library(ggedit)

install.packages("ggThemeAssist")
library(ggThemeAssist)
