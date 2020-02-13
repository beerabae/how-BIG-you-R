install.packages("ggplot2")
library(ggplot2)
iris
plot(iris)

factor <- apropos("^geom*_")
factor

getwd()
data1 <- read.csv("�����뱳��ǽ��ڷ�/������Ǹ���Ȳ_ȫ�浿.csv")
str(data1)
edit(data1)

g <- ggplot(data1, aes(x=����,y=����,group=�̸�))
g1 <- g + geom_line()
g1

days <- data1$����
gg1_0 <- ggplot(data1, aes(x=����,y=����,group=�̸�))
gg1_1 <- gg1_0 + geom_line(linetype = "dashed", color = "red", size = 10)
gg1_2 <- gg1_1 + scale_x_discrete(limits = days)
gg1_2

data2 <- read.csv("�����뱳��ǽ��ڷ�/������Ǹ���Ȳ_��ü.csv")
head(data2, 5) ; tail(data2,4)

days <- data1$����
gg1_0 <- ggplot(data1, aes(x=����,y=����,group=�̸�))
gg1_1 <- gg1_0 + geom_line(linetype = "dashed", color =�̸�, size = 10)
gg1_2 <- gg1_1 + scale_x_discrete(limits = days)
gg1_2

data1
gg2_1 <- ggplot(data2, aes(x=����,y=����))
gg2_1
gg2_1 + geom_point() + scale_x_discrete(limit = days)


data2
days2 <- unique(data2$����)
gg3_0 <- ggplot(data2, aes(x=����,y=����,fill=�̸�))
gg3_1 <- gg3_0 + geom_bar(stat="identity")
gg3_2 <- gg3_1 + scale_x_discrete(limits=days2)
gg3_2

#####�̰� �� �ȉ� 166������
ggplot(data2,aes(x=����,y=����,fill=�̸�)) +
  geom_bar(stat="identity") +
  geom_text(aes(y=��ġ,labe1=paste(����,"�ο�")),size=3) +
  scale_X_discrete(limit=days2)+
  guides(fill=guide_legend(reverse=F))
################
####ggplot�ʹ� ������� �Ʒ� �ҽ��ڵ� �ֽ�
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