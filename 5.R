##ÅØ½ºÆ®¸¶ÀÌ´×

library(stringr)
#str_detect

v1 <- c('abc','abc1', 'acacia','banana','carrot','avocado')
ab <- str_detect(v1, 'ab')
v1[ab]

#grep

ab2 <- grep('ab', v1)
v1[ab]

#À§¿¡ µÑÁß¿¡ ÆíÇÑ°Å ¾²¸é ‰Î

#nchar : ±ÛÀÚ¼ö ¾Ë·ÁÁÜ

nchar(v1)

#paste ÇÕÃÄÁÜ
paste("°Ç","±¹","´ë", sep = "----")

#strsplit
strsplit("°Ç----±¹----´ë", split = "----")

#str_replace
str_replace("°Ç±¹´ë °Ç°­ÇÑ ÇĞ»ı", "°Ç","ÇÑ")
str_replace_all("°Ç±¹´ë °Ç°­ÇÑ ÇĞ»ı", "°Ç","ÇÑ")
str_replace("°Ç±¹´ë °Ç°­ÇÑ ÇĞ»ı ¶È¶ÈÇÑ ÇĞ»ı", "ÇĞ","ÇĞÇĞÇĞ")
str_replace_all("°Ç±¹´ë °Ç°­ÇÑ ÇĞ»ı ¶È¶ÈÇÑ ÇĞ»ı", "ÇĞ","ÇĞÇĞÇĞ")


str_replace_all("I234-123+ÇĞ»ı", "\\D", "")

v1[7] <- "I234-123+ÇĞ»ı"
v1[8] <- "°Ç±¹´ëÇĞ»ıa^^"
v1

#^a a·Î½ÃÀÛÇÏ´Â°Í.
grep("^a", v1, value = T)
grep("^a+", v1, value = T)
grep("^[^a]", v1, value = T)
grep("[[:digit:]]", v1, value = T)


str_replace_all(v1, "[:digit:]", "")
str_replace_all("°¡³ª´Ù¶ó123", "[:digit:]", "")
str_replace_all("123abc°¡³ª´Ù¶óÆR%%%", "[°¡-ÆR]","")



#substr
substr("°¡³ª´Ù¶ó¸¶¹Ù»ç",2,5)

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

##¿©±âºÎÅÍ ¾È‰Î.....

useNIADic()
useSejongDic()




f <- readLines("ÁÁ¾ÆÇÏ´Â°úÀÏ2.txt", encoding = "EUC-KR")
fp <- simplePos22(f)
fp 

