                                                                      #20/4/22 weds 
#빅데이터수업 - 완전 기초 코드 연습
1+1
10-13
print("문과도 R을 활용한 빅데이터 공부한다")

getwd()
setwd("c:/users/writer/desktop/r")
getwd()

A = "홍길동"
A <- "홍길동"
B <- c(1,2)
C = "배비라"
B <- c("배셀라","배리라")
str(B)
DF=data.frame(A,B,C)
edit(DF)

#row 행 / column = 열

m <- matrix(1:12,nrow=3)
m2<-matrix(1:12,ncol=3)
edit(m)
edit(m2)
arr = array(1:24,c(2,3,4)) 
edit(arr)

d1<-c(1,2,3,4)
d2<-c("사과","바나나","오렌지","수박")
d3<-c(5,6,7,8)
df<-data.frame(d1,d2,d3)
edit(df)
df
d4=c("가","나","다","라")
df=data.frame(df,d4)
df
str(df)

df$d2=as.character(df$d2)
df$d4=as.character(df$d4)

# = <- 쓸때 뛰어쓰기 안해도 되는듯. =과 <-는 같이 사용가능한 듯

Sys.time()
data1 = as.Date(c("2020-04-01","2020-04-11"))
str(data1)
data1
edit(data1)
data1[2]-data1[1]

date2 <- as.Date("2020-04-01")
date3 <- as.Date("2020-04-11")
date3 - date2



# library(lubridate) :연 월 일 분할 _패키지

library(lubridate)
install.packages("lubridate")
y=lubridate::year(data1[1])

y2=lubridate::year(date2)
m=lubridate::month(data1[2])
d=lubridate::day(data1[2])

#베이커리 매출 데이터(엑셀 csv 파일) -> r 로 데이터 변형시켜보기

## 1. 현재 작업공간 확인하기
getwd()
setwd("c:/users/writer/desktop/r")

## 2. 데이터 불러오기 
### 엑셀의변수명을 첫번째 열에서 제외하려면 header = T / 첫번째 열에 포함시켜 데이터로 인식하려면 header= F)
### stirngASFactors = F 는 팩터를 받는것을 거짓으로 판단한다는 뜻, 즉 character 로 받게 된다.- 여기선 날짜 데이터를 캐릭터로 받아서 변형하기 위해 사용. 
bakery <-read.csv("bakery1.csv", header = T, stringsAsFactors = F)
bakery
str(bakery)

## 3.데이터변형 - 변수 추가하기 (날짜를 연월일로 쪼개기)
### $ 는 데이터 안의 변수를 나타냄 : bakery$date 는 베이커리데이터 안에 date라는 변수 의미.
### 또는 새로운 변수와 데이터를 동시에 추가하고 싶을때도 사용 가능 : bakery$sex <- female 없던 sex변수에 없던 female 값 생김 
### 먼저, 캐릭터로 되어있는 기존데이터의 날짜를 date로 읽어줌

bakery$date = as.Date(bakery$date)
bakery$year=lubridate::year(bakery$date)
bakery$month=lubridate::month(bakery$date)
bakery$day=lubridate::day(bakery$date)
bakery$weak=weekdays(bakery$date)


### 프로모션은 다시 factor로 변경해줌
bakery$promotion=as.factor(bakery$promotion)

                                                                      # 20/04/25 sat


## (2) 변수추가하기 : 계절 변수 (월별 계절을 정해주기)
### 테이블 조인해주는 merge 함수 사용
month = c(1,2,3,4,5,6,7,8,9,10,11,12)
seoson = c("겨울","겨울","봄","봄","봄","여름","여름","여름","가을","가을","가을","겨울")
seosontb = data.frame(month,seoson)
seosontb

edit(bakery)

### TIP. 잘못 데이터가 들어갔을 때 삭제하는 방법 : R의 데이터프레임은 행과 열을 가지고 있다
###[1, 3] 은 1행 3열을 의미/ [2,] 은 '2행'을 의미
### 행또는 열 삭제는 (-) 기호 : 13,14열을 삭제하고 싶으면 보존할 행은 남겨두고 x <- x[,-c(13:14)] 또는 x[,-c(13,14)]

bakery = bakery[,-c(13,14)]
bakery = bakery[,-1]
head(bakery)

##열을 합쳐줄때 cbind도 있지만, 이 함수는 행의 갯수와 관찰치가 같아야 함. 따라서  merge를 써줌
bakery = cbind(bakery,seosontb)
## 블로그의 도움으로 해봄 / ?? 왜자꾸 month 가 1열로 갈까여?
bakery = merge(x=bakery,y=seosontb,by= "month",all.x = T)
edit(bakery)

quarter=c(1,1,1,2,2,2,3,3,3,4,4,4)
quartertb=data.frame(quarter,month)
bakery= merge(x=bakery,y=quartertb,by="month")
head(bakery)
    #20/04/26 sun
##컴퓨터 키면 lubridate 패키지를 다시 설치또는 실행 해줘야 함 ????????????????
install.packages(lubridate)
library("lubridate")
bakery = bakery[,-c(13,14)]
head(bakery)

                  #빅데이터에서 각 변수를 뽑아서 작은 데이터로 만들기/ 두개 같은 방식임
data4 = bakery[,c(3,13)]
data4_1 = bakery[,c("cake","seoson")]
data4_2 = data.frame(bakery$cake,bakery$seoson)

data5 = bakery[,c(4,8)]
data6 =  bakery[,c("smoothie","cookie")]

                                    # R을 이용한 데이터시각화

## plot() 함수 : x 와 y 의 2개 축을 기준으로 좌표를 찍듯이 그리는 컨셉을 가진 함수
##대표적으로 산점도 표현시에 간단하게 구현 가능. 일반적 함수라 용도에 맞게 변경하여 사용가능.
## plot() 함수는 x, y 인자 2개를 기본적으로 받음. 

### cake와 seoson 간의 관계를 대략적으로 살펴볼 수 있는 산점도 도출????
### 수량형변수가 아닌 seoson과 promotion의 경우 산점도로 표시 되기 힘든 것 같음. 일단 계절인데 숫자로 나옴!!
plot(data4)
plot(data5)

## 수량형 변수인 smoothie 와 cookie 판매량 관계는 설명됨. smoothie 200개 팔릴때 cookie가 400~600개 팔리는 경향이 있음.
plot(data6)


                #새로운 패키지 [tidyverse] : r을 쉽게 사용하기 위한 세계관을 만듬
##설치가 안될때는, 크랜에서 직접 설치해와야 함!
install.packages(tidyverse)
library(tidyverse)
bakery4 = as.tibble()


a <- select(bakery, cookie, coffee, smoothie)
b= filter(bakery, promotion=="없음")
c= filter(bakery, seoson=="가을")
##head함수는 원하는 행수만 보여줌
##b데이타에 5개 행만 보여줌
head(b,5)
head(a,3)
head(c,6)

##filter 함수 : 데이터에서 범위에 속하는 해당 데이터만 골라내기, / select 함수 : 해당 데이터만 골라내기
##두 장식 같은 논리
bake <- select(filter(bakery, cake<50), cookie, coffee)
bake <- bakery %>% filter(cake<50) %<% select(cookie, coffee)

bake
str(bake)

## arrange함수 : 원하는 배열 설정/ desc 내림차순 표시 (큰수->작은수)
## 두 방식 같은 논리
arrange(bake, desc(coffee))
bake %>% arrange(desc(coffee))

fall <- select(filter(bakery, seoson=="가을"), cookie, coffee)
winter<- bakery %>% filter(seoson=="겨울") %>% select(cookie, coffee)

##영역 분할/결합 방법 1 : par(mfrow = ), par(mfcol = )
##2개 이상의 다수의 그래프를 결합하는 방법 
## par(mfrow = c(4,2))다수의 그래프를 4행 2열로 표시 (순서는 첫행 왼쪽->오른쪽-> 다시 둘째행 왼쪽->오른쪽 순으로 읽음) 

par(mfrow = c(2, 2))
plot(fall)
plot(winter)


                          #사원별판매현황 데이터(엑셀 csv 파일) -> r 로 데이터 변형시켜보기

getwd()

sale <- read.csv("data/사원별판매현황.csv")
library(dplyr)

select(sale, 홍길동)
filter(sale, 전우치 >= 70)
## arrange함수 (데이터, 변수) : 해당변수 오름차순/ desc(데이터, 변수) : 해당변수 내림차순
arrange(sale, desc(전우치))
arrange(sale, 홍길동)
##두방식 같은 논리
sale$일지매와전우치 <- sale$일지매 + sale$전우치
mutate(sale, 일지매와전우치2=일지매+전우치)

             #후보자별지역별예상지지율 데이터 / 실제 실습파일 암호걸려있어서 못함. 소스만 받아옴
vote <- read.csv("수업용교재실습자료/후보자별지역별예상지지율.csv")
head(vote,5)
filter(vote, 지역 == "경기도")
select(filter(vote, 예상지지율 > 50),이름,지역)
arrange(filter(vote, 지역 == "서울시"), desc(예상지지율))
edit(sale)




                                    #20/04/17 mon [빅데이터분석 2/12  3일차 수업 복습]
                                  #기존에 있는 연습패키지 "nycflights13" 의  flights데이터 분석해보기 

install.packages("tidyverse")
library(tidyverse)

install.packages("nycflights13")
library(nycflights13)
flights
str(flights)

feb3 <- filter(flights, month==2, day==3)
sep9<-filter(flights, month==9,day==9)
oct10<-filter(flights,month==10,day==10)
delay<- filter(flights, dep_delay>200 | arr_delay>200)

select(flights, year,month,day)
select(flights, dep_delay,arr_delay)
## 2개 같은 논리
A<- flights[,c(1:9)]
B<-select(flights, year : arr_delay)

##  dim(x) 함수 : dim은 dataframe의 길이를 관측할 때 사용하며, 행과 열의 개수를 모두 출력합니다.
##같은 논리이기 때문에 결과 값 (행,열) 개수가 같다는 것을 알 수있다. 
dim(A);dim(B)

## str(x) 함수 : 모든변수를 왼쪽 세로축기준으로 보여주는 도구이다. (빅데이터의 경우 변수가 생략되어서 보여질 때가 있다.)
str(flights)

## select 함수와 everything() 함수를 결합하면 원하는 컬럼을 맨앞으로 두고 정렬 가능
select(flights, hour,minute,time_hour, everything() )

## select 함수와 contain 함수를 같이 사용하여 특정 값이 포함된 컬럼 선택
select(flights, contains("Time"))
## 데이터에 $~ 하면 자동으로 변수가 삽입된다. 
flights$number<- 2
## names(x) 함수 : 데이터의 변수명만 보여준다.
names(flights)

## 활성화 시작 attach(데이터 프레임 이름), 끝 detach(데이터 프레임 이름): 다수의 R 명령문 입력 시 적합
##데이터 프레임 이름을 지정하지 않으면 R은 어디에서 변수를 가져와야 할지 알지 못함. 
## 따라서 데이터프레임$변수명 형식으로 객제 지정해주어야 R이 이해함.
## 명령이 적을때 $ 사용, 명령문 많아지면 with(x), 공통적으로 다수 사용할때 attach(x)와 detach(x) 사용

attach(flights)

## 데이터프레임을 생략할수는 있지만, 다만, delay1 변수명을 r기존데이터프레임에 새로추가하고 싶다면, 기존데이터프레임$새변수명 해줘야함.
flights$delay1<- arr_delay-dep_delay
flights<-mutate(flights, delay2=arr_delay-dep_delay)

