#과제문제1

#function을 사용해서 if standard일때, (x-mean(x))/sd(x)를
# 적용하고 그렇지 않을때 minmax를 적용하게 함수 만들기
slow = function(x, method = "standard"){
    if(method == "standard"){
    result = (x-mean(x))/sd(x)
    }else if(method == "minmax"){
      result = (x-min(x))/max(x)-min(x)
    }
}



#예로 iris데이터의 Sepal.Width입력해보기

#Sepal.Width 객체에 iris데이터 지정
Sepal.Width = iris$Sepal.Width

#Sepal.Width를 standard scaling하기
re = slow(Sepal.Width, "standard")
print(re)
