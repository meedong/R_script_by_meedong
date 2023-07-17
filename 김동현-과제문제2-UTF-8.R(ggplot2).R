### 10주차 과제 2번 ###

#워크디렉토리 설정
setwd("C:\\Users\\김동현\\Downloads\\데이터파일")

#lib로 불러오기
lib = read.csv("2010 서울시 공공도서관 구별 통계_정리.csv")

library(ggplot2)
library(dplyr)

# 서울 전체 데이터값 삭제하기
lib = lib[-1,]

# li3객체에 구, 연간대출_책수, 개소만 뽑아서 데이터프레임만들기
li3 = data.frame(lib$구, lib$연간대출_책수, lib$개소)

# li3을 order를 통해 오름차순으로 정리하기
li3 = li3[order(li3$lib.연간대출_책수),]

# 구를 factor형 변수로 만들어주기
li3$lib.구 = factor(li3$lib.구, level = li3$lib.구)

# ggplot을 이용해서 plot만들기
ggplot(li3 , aes(x = lib.구, y = lib.연간대출_책수, fill = lib.개소)) +
  geom_bar(stat = "identity") +
  theme_bw() +
  labs(title = "구별 공공도서관 연간대출 책수 (오름차순)",
       x = "구",
       y = "연간 대출 책 수",
       fill = "개소") +
  coord_flip()

