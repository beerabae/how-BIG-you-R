#20/4/22 weds 
#�����ͼ��� - ���� ���� �ڵ� ����
1+1
10-13
print("������ R�� Ȱ���� ������ �����Ѵ�")

getwd()
setwd("c:/users/writer/desktop/r")
getwd()

A = "ȫ�浿"
A <- "ȫ�浿"
B <- c(1,2)
C = "����"
B <- c("�輿��","�踮��")
str(B)
DF=data.frame(A,B,C)
edit(DF)

#row �� / column = ��

m <- matrix(1:12,nrow=3)
m2<-matrix(1:12,ncol=3)
edit(m)
edit(m2)
arr = array(1:24,c(2,3,4)) 
edit(arr)

d1<-c(1,2,3,4)
d2<-c("���","�ٳ���","������","����")
d3<-c(5,6,7,8)
df<-data.frame(d1,d2,d3)
edit(df)
df
d4=c("��","��","��","��")
df=data.frame(df,d4)
df
str(df)

df$d2=as.character(df$d2)
df$d4=as.character(df$d4)

# = <- ���� �پ�� ���ص� �Ǵµ�. =�� <-�� ���� ��밡���� ��

Sys.time()
data1 = as.Date(c("2020-04-01","2020-04-11"))
str(data1)
data1
edit(data1)
data1[2]-data1[1]

date2 <- as.Date("2020-04-01")
date3 <- as.Date("2020-04-11")
date3 - date2



# library(lubridate) :�� �� �� ���� _��Ű��

library(lubridate)
install.packages("lubridate")
y=lubridate::year(data1[1])

y2=lubridate::year(date2)
m=lubridate::month(data1[2])
d=lubridate::day(data1[2])

#����Ŀ�� ���� ������(���� csv ����) -> r �� ������ �������Ѻ���

## 1. ���� �۾����� Ȯ���ϱ�
getwd()
setwd("c:/users/writer/desktop/r")

## 2. ������ �ҷ����� 
### �����Ǻ������� ù��° ������ �����Ϸ��� header = T / ù��° ���� ���Խ��� �����ͷ� �ν��Ϸ��� header= F)
### stirngASFactors = F �� ���͸� �޴°��� �������� �Ǵ��Ѵٴ� ��, �� character �� �ް� �ȴ�.- ���⼱ ��¥ �����͸� ĳ���ͷ� �޾Ƽ� �����ϱ� ���� ���. 
bakery <-read.csv("bakery1.csv", header = T, stringsAsFactors = F)
bakery
str(bakery)

## 3.�����ͺ��� - ���� �߰��ϱ� (��¥�� �����Ϸ� �ɰ���)
### $ �� ������ ���� ������ ��Ÿ�� : bakery$date �� ����Ŀ�������� �ȿ� date��� ���� �ǹ�.
### �Ǵ� ���ο� ������ �����͸� ���ÿ� �߰��ϰ� �������� ��� ���� : bakery$sex <- female ���� sex������ ���� female �� ���� 
### ����, ĳ���ͷ� �Ǿ��ִ� ������������ ��¥�� date�� �о���

bakery$date = as.Date(bakery$date)
bakery$year=lubridate::year(bakery$date)
bakery$month=lubridate::month(bakery$date)
bakery$day=lubridate::day(bakery$date)
bakery$weak=weekdays(bakery$date)


### ���θ���� �ٽ� factor�� ��������
bakery$promotion=as.factor(bakery$promotion)


