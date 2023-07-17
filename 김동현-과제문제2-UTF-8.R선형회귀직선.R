
### 13주차 과제 2번 ###

### 2번 ###

#워크디렉토리 설정
setwd("C:\\Users\\김동현\\Downloads\\데이터파일")

#lib로 불러오기
lib = read.csv("2010 서울시 공공도서관 구별 통계_정리.csv")

library(ggplot2)
library(dplyr)

# 서울 전체 데이터값 삭제하기
li2 = lib[-1,]

# x축에 넣을 변수인 자료실이용자수에 log10변환을 해주고
li2$자료실_이용자수 = log10(li2$자료실_이용자수)

# y축에 들어갈 변수인 연간대출책수에도 로그변환을 해준다
li2$연간대출_책수 = log10(li2$연간대출_책수)

# filter를 통해 자료실이용자수가 10만이하인 구들만 뽑아낸다
lili = lib %>%
  filter(자료실_이용자수 <= 100000)

# lili데이터도 로그화해준다
lili$연간대출_책수 = log10(lili$연간대출_책수)
lili$자료실_이용자수 = log10(lili$자료실_이용자수)

# plot을 그려준다
li2 %>%
  ggplot(aes(x = 자료실_이용자수, y = 연간대출_책수, fill = 도서, group = 1)) +
  geom_smooth(method= lm) +
  geom_point(shape = 22, size = 5) +
  scale_fill_gradient(low = "lightblue", high = "red") +
  geom_label(data = lili, aes(label = 구), hjust = -.5, color = "black")
