##텍스트마이닝

library(stringr)
#str_detect

v1 <- c('abc','abc1', 'acacia','banana','carrot','avocado')
ab <- str_detect(v1, 'ab')
v1[ab]

#grep

ab2 <- grep('ab', v1)
v1[ab]

#위에 둘중에 편한거 쓰면 됌

#nchar : 글자수 알려줌

nchar(v1)

#paste 합쳐줌
paste("건","국","대", sep = "----")

#strsplit
strsplit("건----국----대", split = "----")

#str_replace
str_replace("건국대 건강한 학생", "건","한")
str_replace_all("건국대 건강한 학생", "건","한")
str_replace("건국대 건강한 학생 똑똑한 학생", "학","학학학")
str_replace_all("건국대 건강한 학생 똑똑한 학생", "학","학학학")


str_replace_all("I234-123+학생", "\\D", "")

v1[7] <- "I234-123+학생"
v1[8] <- "건국대학생a^^"
v1

#^a a로시작하는것.
grep("^a", v1, value = T)
grep("^a+", v1, value = T)
grep("^[^a]", v1, value = T)
grep("[[:digit:]]", v1, value = T)


str_replace_all(v1, "[:digit:]", "")
str_replace_all("가나다라123", "[:digit:]", "")
str_replace_all("123abc가나다라힣%%%", "[가-힣]","")



#substr
substr("가나다라마바사",2,5)

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

##여기부터 안됌.....

useNIADic()
useSejongDic()




f <- readLines("좋아하는과일2.txt", encoding = "EUC-KR")
fp <- simplePos22(f)
fp 

