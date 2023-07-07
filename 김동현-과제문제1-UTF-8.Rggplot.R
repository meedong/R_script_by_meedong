
### 통데이 13주차 과제 ###

### 1번 ###

#워크디렉토리 설정
setwd("C:\\Users\\김동현\\Downloads\\데이터파일")

#lib로 불러오기
lib = read.csv("2010 서울시 공공도서관 구별 통계_정리.csv")

library(ggplot2)
library(dplyr)

# 서울 전체 데이터값 삭제하기
lib = lib[-1,]

# li3을 order를 통해 오름차순으로 정리하기
li1 = lib[order(lib$직원수_계),]

# 구를 factor형 변수로 만들어주기
li1$구 = factor(li1$구, level = li1$구)

li1 %>% 
  ggplot(aes(x = 구, group=1)) +
  # ggplot(aes(x = 구, y = 직원수_계, group = 1)) +
  # geom_line(aes(x = 구, y = 직원수_남자, group = 1)) +
  # geom_line(aes(x = 구, y = 직원수_여자, group = 1)) +
  geom_area(aes(y = 직원수_계, fill = '직원수_계'), 
            alpha = .5, color = 'black') +
  geom_area(aes(y = 직원수_여자, fill = '직원수_여자'), 
            alpha = .5, color = 'black') +
  geom_area(aes(y = 직원수_남자, fill = '직원수_남자'), 
            alpha = .5, color = 'black') +
  theme_minimal() +
  scale_fill_manual(values=c('black','blue','red'))
