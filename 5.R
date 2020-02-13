##�ؽ�Ʈ���̴�

library(stringr)
#str_detect

v1 <- c('abc','abc1', 'acacia','banana','carrot','avocado')
ab <- str_detect(v1, 'ab')
v1[ab]

#grep

ab2 <- grep('ab', v1)
v1[ab]

#���� ���߿� ���Ѱ� ���� ��

#nchar : ���ڼ� �˷���

nchar(v1)

#paste ������
paste("��","��","��", sep = "----")

#strsplit
strsplit("��----��----��", split = "----")

#str_replace
str_replace("�Ǳ��� �ǰ��� �л�", "��","��")
str_replace_all("�Ǳ��� �ǰ��� �л�", "��","��")
str_replace("�Ǳ��� �ǰ��� �л� �ȶ��� �л�", "��","������")
str_replace_all("�Ǳ��� �ǰ��� �л� �ȶ��� �л�", "��","������")


str_replace_all("I234-123+�л�", "\\D", "")

v1[7] <- "I234-123+�л�"
v1[8] <- "�Ǳ����л�a^^"
v1

#^a a�ν����ϴ°�.
grep("^a", v1, value = T)
grep("^a+", v1, value = T)
grep("^[^a]", v1, value = T)
grep("[[:digit:]]", v1, value = T)


str_replace_all(v1, "[:digit:]", "")
str_replace_all("�����ٶ�123", "[:digit:]", "")
str_replace_all("123abc�����ٶ��R%%%", "[��-�R]","")



#substr
substr("�����ٶ󸶹ٻ�",2,5)

install.packages("rJava")
install.packages("hash")
install.packages("tau")
install.packages("Sejong")
install.packages("RSQLite")
install.packages("devtools")
install.packages("processx")

install.packages("KoNLP", dependencies = T)

library(KoNLP)

getwd()
setwd("C:/Users/life-402-11/Desktop/data")
getwd()

library(tidyverse)

##������� �ȉ�.....

useNIADic()
useSejongDic()




f <- readLines("�����ϴ°���2.txt", encoding = "EUC-KR")
fp <- simplePos22(f)
fp 
