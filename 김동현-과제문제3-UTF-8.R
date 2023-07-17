#과제문제3


library(corrplot) #라이브러리에서 corrplot을 불러온다

gogogo = function(){ #gogogo에 함수를 입력한다

  homework = read.csv(route_and_name, header = TRUE) #homework를 불러오고,
  #paste 함수를 사용해서 만들었던 route_and_name을 파일경로로 입력한다
  
  cor.homework = cor(homework) #cor()을 통해 상관계수행렬을 만든다
  
  corrplot(cor.homework) #상관계수행렬을 corrplot으로 plot을 생성한다

}
gogogo() #gogogo함수를 실행한다


#다른방법

#gogogo = function(route_and_name)이 들어갈 경우(environment에 route_and_name이 없는 상태에서)

#gogogo(paste("C:\\Users\\김동현\\Downloads\\데이터파일", "homework.csv",sep = "\\"))

#마지막에
#gogogo(route_and_name)으로도 가능하다