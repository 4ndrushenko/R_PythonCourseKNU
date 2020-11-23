## 1. ‘ункц≥€ add2(x, y), €ка повертаЇ суму двох чисел.

add2 <- function(x,y) {
  return(x+y)
}

add2(1,2)

## 2. ‘ункц≥€ above(x, n), €ка приймаЇ вектор та число n, та повертаЇ вс≥
## елемент≥ вектору, €к≥ б≥льше n. ѕо замовчуванню n = 10.

above <- function(vector, n = 10) {
  return(vector[vector > n])
}

above(c(1,6,15,7,2,12))

## 3. ‘ункц≥€ my_ifelse(x, exp, n), €ка приймаЇ вектор x, пор≥внюЇ вс≥ його
##елементи за допомогою exp з n, та повертаЇ елементи вектору, €к≥
##в≥дпов≥дають умов≥ expression. Ќаприклад, my_ifelse(x, У>Ф, 0) повертаЇ вс≥
##елементи x, €к≥ б≥льш≥ 0. Exp може дор≥внювати У<Ф, У>Ф, У<=Ф, У>=Ф, У==Ф.
##якщо exp не сп≥впадаЇ н≥ з одним з цих вираз≥в, повертаЇтьс€ вектор x.

my_ifelse <- function(x,exp,n) {
  allowed_expressions <- c('<', '>', '<=', '>=', '==')
  if (exp %in% allowed_expressions) {
    expression = paste('x',exp ,'n')
    return(x[eval(parse(text = expression))])
  } else {
    return(x)
  }
  
}

my_ifelse(c(1,5,8,2,9,10),">",5)

## . ‘ункц≥€ columnmean(x, removeNA), €ка розраховуЇ середнЇ значенн€
## (mean) по кожному стовпцю матриц≥, або data frame. Ћог≥чний параметр
## removeNA вказуЇ, чи видал€ти NA значенн€. ѕо замовчуванню в≥н
## дор≥внюЇ TRUE.

columnmean <- function(x, removeNA = TRUE) {
  for(i in seq_len(ncol(x))) {
    print(mean(x[,i], na.rm = removeNA))
  }
}

columnmean(matrix(c(1,2,3,4,5,6), ncol = 3))
