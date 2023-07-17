
#워크디렉토리 설정
setwd("C:\\Users\\김동현\\Downloads\\데이터파일")

#lib로 불러오기
lib = read.csv("2010 서울시 공공도서관 구별 통계_정리.csv")

library(ggplot2)
library(dplyr)
library(plyr)

# 서울 전체 데이터값 삭제하기
lib = lib[-1,]

# aggregate를 통해 table을 생성한다
lita = aggregate(연간대출_책수 ~ 개소, lib, mean)



# 개소가 1인 값을 불러내서
lib1 = filter(lib ,개소 == 1) 

# 각각 데이터 들을 객체에 넣어준다
lib1.1 = lib1 %>% group_by(개소) %>% 
  summarise( N=length(개소),
             Meanbook = round(mean(연간대출_책수)), 
             Maxbook = max(연간대출_책수),
             Minbook = min(연간대출_책수), 
             Sumbook = sum(연간대출_책수),
             Sdbook = round(sd(연간대출_책수), 2), 
             Sebook = round(Sdbook/sqrt(N),2),
             Cibook = round(qt(1-.05/2, N-1)*Sebook, 2)) %>%
  data.frame()


# 개소가 2인 값을 불러내서
lib2 = filter(lib ,개소 == 2) 

# 각각 데이터 들을 객체에 넣어준다
lib2.1 = lib2 %>% group_by(개소) %>% 
  summarise( N=length(개소),
             Meanbook = round(mean(연간대출_책수)), 
             Maxbook = max(연간대출_책수),
             Minbook = min(연간대출_책수), 
             Sumbook = sum(연간대출_책수),
             Sdbook = round(sd(연간대출_책수), 2), 
             Sebook = round(Sdbook/sqrt(N),2),
             Cibook = round(qt(1-.05/2, N-1)*Sebook, 2)) %>%
  data.frame() 
#colnames(lib2.1) = NULL

# 개소가 3인 값을 불러내서
lib3 = filter(lib ,개소 == 3) 

# 각각 데이터 들을 객체에 넣어준다
lib3.1 = lib3 %>% group_by(개소) %>% 
  summarise( N=length(개소),
             Meanbook = round(mean(연간대출_책수)), 
             Maxbook = max(연간대출_책수),
             Minbook = min(연간대출_책수), 
             Sumbook = sum(연간대출_책수),
             Sdbook = round(sd(연간대출_책수), 2), 
             Sebook = round(Sdbook/sqrt(N),2),
             Cibook = round(qt(1-.05/2, N-1)*Sebook, 2)) %>%
  data.frame()

#colnames(lib3.1) = NULL


# 개소가 4인 값을 불러내서
lib4 = filter(lib ,개소 == 4) 

# 각각 데이터 들을 객체에 넣어준다
lib4.1 = lib4 %>% group_by(개소) %>% 
  summarise( N=length(개소),
             Meanbook = round(mean(연간대출_책수)), 
             Maxbook = max(연간대출_책수),
             Minbook = min(연간대출_책수), 
             Sumbook = sum(연간대출_책수),
             Sdbook = round(sd(연간대출_책수), 2), 
             Sebook = round(Sdbook/sqrt(N),2),
             Cibook = round(qt(1-.05/2, N-1)*Sebook, 2)) %>%
  data.frame()

#colnames(lib4.1) = NULL


# 개소가 5인 값을 불러내서
lib5 = filter(lib ,개소 == 5) 

# 각각 데이터 들을 객체에 넣어준다
lib5.1 = lib5 %>% group_by(개소) %>% 
  summarise( N=length(개소),
             Meanbook = round(mean(연간대출_책수)), 
             Maxbook = max(연간대출_책수),
             Minbook = min(연간대출_책수), 
             Sumbook = sum(연간대출_책수),
             Sdbook = round(sd(연간대출_책수), 2), 
             Sebook = round(Sdbook/sqrt(N),2),
             Cibook = round(qt(1-.05/2, N-1)*Sebook, 2)) %>%
  data.frame()

#colnames(lib5.1) = NULL

# 개소가 7인 값을 불러내서
lib7 = filter(lib ,개소 == 7) 

# 각각 데이터 들을 객체에 넣어준다
lib7.1 = lib7 %>% group_by(개소) %>% 
  summarise( N=length(개소),
             Meanbook = round(mean(연간대출_책수)), 
             Maxbook = max(연간대출_책수),
             Minbook = min(연간대출_책수), 
             Sumbook = sum(연간대출_책수),
             Sdbook = round(sd(연간대출_책수), 2), 
             Sebook = round(Sdbook/sqrt(N),2),
             Cibook = round(qt(1-.05/2, N-1)*Sebook, 2)) %>%
  data.frame()

#colnames(lib7.1) = NULL

# 개소가 9인 값을 불러내서
lib9 = filter(lib ,개소 == 9) 

# 각각의 데이터 들을 객체에 넣어준다
lib9.1 = lib9 %>% group_by(개소) %>% 
  summarise( N=length(개소),
             Meanbook = round(mean(연간대출_책수)), 
             Maxbook = max(연간대출_책수),
             Minbook = min(연간대출_책수), 
             Sumbook = sum(연간대출_책수),
             Sdbook = round(sd(연간대출_책수), 2), 
             Sebook = round(Sdbook/sqrt(N),2),
             Cibook = round(qt(1-.05/2, N-1)*Sebook, 2)) %>%
  data.frame()

#colnames(lib9.1) = NULL

# 개소가 11인 값을 불러내서
lib11 = filter(lib ,개소 == 11) 

# 각각의 데이터 들을 객체에 넣어준다
lib11.1 = lib11 %>% group_by(개소) %>% 
  summarise( N=length(개소),
             Meanbook = round(mean(연간대출_책수)), 
             Maxbook = max(연간대출_책수),
             Minbook = min(연간대출_책수), 
             Sumbook = sum(연간대출_책수),
             Sdbook = round(sd(연간대출_책수), 2), 
             Sebook = round(Sdbook/sqrt(N),2),
             Cibook = round(qt(1-.05/2, N-1)*Sebook, 2)) %>%
  data.frame()

# rbind로 묶어준다
lib_total = rbind(lib1.1,
                  lib2.1,
                  lib3.1,
                  lib4.1,
                  lib5.1,
                  lib7.1,
                  lib9.1,
                  lib11.1)

# cbind로 lita와 묶어준다
litaa = cbind(lita, lib_total)

# ggplot을 이용해서 plot만들기
ggplot(litaa, aes(x = 개소, y = 연간대출_책수, fill = 연간대출_책수)) + #x를 개소, y와 fill을 연간대출_책수로 설정
  geom_bar(stat = "identity") + # var를 만들고
  geom_col(position = 'dodge') +
  geom_errorbar(aes(ymin = Meanbook - Cibook, # 오차를 표현한다
                    ymax = Meanbook + Cibook), 
                width = 0.2, position = position_dodge(1.5), color = "black") +
  labs(title = "공공도서관 개소 별 연간대출 책수 요약", # 타이틀과 x축 y축의 이름을 설정한다
       x = "개소",
       y = "MeanVal") +
  theme_bw() + #테마는 bw로 지정한다
  theme(legend.position = "none") # 범례를 삭제한다

##############################################
