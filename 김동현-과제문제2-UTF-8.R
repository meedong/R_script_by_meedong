#과제문제2



    #과제1번 이후2번문제
gogo = function(n = 5,m = 5){ #gogo라는 객체에 function을 사용해서 함수를 만든다
  
  
  if (n != round(n)){ #if함수를 사용해서 n과
    if(m != round(m)) #m이 정수가 아닐경우 함수를 정지하게 한다
      stop()
  }
  
  fib = numeric(n) #fib을 숫자값으로 설정한다
  fib[1] = 1 #피보나치 수열의 첫항과
  fib[2] = 1 #둘째항은 1이므로 둘다 1로 설정한다
  for (i in 3:n){ #for 문을 사용해서 i를 3부터 n까지로 설정한다
    fib[i] = fib[i-1] + fib[i-2] #피보나치 수열의 성질을 적용한다
  }
  
  mat = matrix(ncol = n, nrow = m) #mat matrix함수를 사용한다
  vec = fib[1:n] #vec함수를 피보나치 수열로 설정한다
  
  for(i in 1:m){ #for문을 사용해서 i를 1부터 m까지로 설정하고
    for(j in 1:n){ #j를 1부터 n까지로 설정한다
      mat[i,j] = i %% j #비어있는 행렬에 행번호를 열번호로 나눈 나머지값을 넣어준다
    }
  }
  
  result = list(mat = mat, vec = vec) #result객체에 list를 사용해서 mat과 vec을 묶어주면서
  #mat은 mat으로, vec은 vec으로 표기되게끔한다
}

result = gogo(m = 12, n = 9) #result값을 gogo함수에 m에12, n에 9값을 넣어준 값으로 저장한다
print(result) #result를 출력한다


#과제문제2번

route_and_name = paste("C:\\Users\\김동현\\Downloads\\데이터파일", "homework.csv",sep = "\\")
#route_and_name에 paste함수를 사용해서 파일저장경로와 파일명을 붙인다
write.csv(result[[1]], route_and_name, row.names = FALSE)
#write.csv함수를 사용해서 matrix만 뽑아서 저장한다
