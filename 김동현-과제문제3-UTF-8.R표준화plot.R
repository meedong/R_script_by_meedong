
### 13주차 과제 2번 ###

### 3번 ###

#워크디렉토리 설정
setwd("C:\\Users\\김동현\\Downloads\\데이터파일")

#lib로 불러오기
lib = read.csv("2010 서울시 공공도서관 구별 통계_정리.csv")

library(ggplot2)
library(dplyr)
library(ggradar)
# 서울 전체 데이터값 삭제하기
li3 = lib[-1,]

# 개소group 변수 추가
li3$개소group = factor(li3$개소)

# 개소 수에 따른 개소group 변수 만들기
li3$개소group = cut(li3$개소, breaks = c(0, 3, 6, 40), #1,2개, 3~5개, 6부터 40까지로 설정
                  labels = c("1-2", "3-5", "7-11"), right = FALSE) #라벨 생성


library(GGally)

# ggparcoord를 사용해서 plot만들기
ggparcoord(li3, columns = c("도서관_방문자수", "연간대출_책수", "좌석수", "도서", "자료실_이용자수"),
           groupColumn = "개소group", order = "anyClass", #groupColumn은 새로생성한 변수인 개소group으로,
           # 변수 배열기준은 anyclass로 지정
           scale = "std", showPoints = TRUE, #표준화 기준을 std로 지정
           title = "표준화 척도", alphaLines = 0.3) +
           labs(x = "") + #x축 label 삭제하기
           theme_minimal()

