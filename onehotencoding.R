
#iris를 불러오고 iris에서 각각의 변수를 객체에 저장하기
data(iris)
Sepal.Length = iris$Sepal.Length
Sepal.Width = iris$Sepal.Width
Petal.Length = iris$Petal.Length
Petal.Width = iris$Petal.Width


#min_max객체에 fuctiodn을 사용해서 minmax scaling 공식 입력하기
min_max = function(x){
  (x-min(x))/max(x)-min(x)
}

#각각 변수들을 min_max function에 대입하기
minmax_Sepal.Length= min_max(Sepal.Length)
minmax_Sepal.Width= min_max(Sepal.Width)
minmax_Petal.Length= min_max(Petal.Length)
minmax_Petal.Width= min_max(Petal.Width)

#Species를 one-hot encoding 하기
Species = iris$Species
onehot.Species= data.frame(model.matrix(~Species -1, data = iris))

#결과들을 합치기
result = cbind(minmax_Sepal.Length, 
           minmax_Sepal.Width, 
           minmax_Petal.Length, 
           minmax_Petal.Width, 
           onehot.Species)

print(result)
