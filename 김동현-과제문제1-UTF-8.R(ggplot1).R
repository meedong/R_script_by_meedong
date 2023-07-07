### 10주차 과제 1번 ###


setwd("C:\\Users\\김동현\\Downloads\\데이터파일")

lib = read.csv("2010 서울시 공공도서관 구별 통계_정리.csv")



# lib 데이터에서 서울전체 데이터인 1행을 삭제한다
lib = lib[-1,]

# 그중 개소만 뽑아서 데이터프레임을 만든다
lib1 = data.frame(lib$개소)

# 라이브러리를 통해 ggplot2와 dplyr을 불러온다
library(ggplot2)
library(dplyr)

#ggplot으로 plot만들기
ggplot(lib1 , aes(x =lib.개소)) +
  geom_bar() +
  theme_bw() + #테마는 bw로 지정
  xlab("개소") + # x축의 이름은 개소, y축은 count라 생략
  ggtitle("구별 공공도서관 개수 요약")  # ggplot의 이름을 지정
