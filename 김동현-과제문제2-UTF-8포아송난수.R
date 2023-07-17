#과제문제2



#포아송 난수200개 생성
rpo = rpois(200,20)

#표본정규분포난수 200개 생성
rno = rnorm(200, mean = 5, sd = sqrt(10))


#cbind를 사용해서 rpo와 rno를 합치기
hap = cbind(rpo,rno)

#scale()을 사용해서 standard scaling하기, centering과 scaleing은 TRUE
scale.hap = scale(hap, center = TRUE, scale = TRUE)

#standard scaling을 한 rpo와 rno각각 지정하기
scale.rpo = scale.hap[,1]
scale.rno = scale.hap[,2]

#standard scaling한 scale.hap에서의 rpo의 히스토그램그리기
hist(scale.rpo)

#standard scaling한 scale.hap에서의 rno의 히스토그램그리기
hist(scale.rno)

#standard scaling한 rpo와 rno의 평균구하기
mean.rpo = mean(scale.rpo)
print(mean.rpo)
mean.rno = mean(scale.rno)
print(mean.rno)

#정규화한 rpo와 rno의 분산구하기
var.rpo = var(scale.rpo)
print(var.rpo)
var.rno = var(scale.rno)
print(var.rno)
