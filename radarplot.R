


#워크디렉토리 설정
setwd("C:\\Users\\김동현\\Downloads\\데이터파일")

#lib로 불러오기
lib = read.csv("2010 서울시 공공도서관 구별 통계_정리.csv")

library(ggplot2)
library(dplyr)
#devtools::install_github("ricardo-bion/ggradar", dependencies = TRUE)

# 서울 전체 데이터값 삭제하기
li4_1 = lib[-1,]

# 개소가 5인 데이터만 뽑아서 li4객체에 다시 저장
li4_1 = filter(li4_1, 개소 == 5)

# lil객체에서 데이터를 변환해준다
lil <- li4_1 %>%
mutate_at(vars(-구, -개소), ~./max(.)*1)

# li4객체에 변환된 데이터인 lil에서 필요한 데이터를 데이터 프레임으로 묶는다
li4 = data.frame(lil$구,
                 lil$좌석수,
                 lil$도서,
                 lil$도서관_방문자수,
                 lil$자료실_이용자수,
                 lil$연간대출_책수)

# 바뀐 열이름을 다시 바꿔준다
colnames(li4) = c("구", "좌석수", "도서", "도서관_방문자수", "자료실_이용자수", "연간대출_책수")

# ggradar 패키지를 통해legend이름을 "구"로 바꿔주고 아래로 옮겨준다
ggradar(li4,
        legend.title = "구",
        legend.position = "bottom")

