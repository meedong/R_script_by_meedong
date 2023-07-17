
n = 10 #n을 10으로 설정한다
m = matrix(nrow = n, ncol = n) #m을 matrix함수를 사용해서 
#행과 열이 n개인 행렬로 설정한다
repeat{ 
for( i in 1:n){ #반복문 for을 사용해서 i를 1부터 n까지로 설정한다
  for( j in 1:n){ #위와 마찬가지로 for을 사용해서 j를 1부터 n까지로 설정한다
    m[i,j] = i %% j #행렬m의 원소가 
    #행번호를 열번호로 나눈 나머지가 들어가도록 설정한다
   print(m) #m을 출력한다
    Sys.sleep(0.2) #0.2초의 간격을 두고 입력이 되게끔한다
  }
}
break
}

