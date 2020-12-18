Lab3.R
================
v.yeshchenkov
2019-11-04

``` r
## 1. Функція add2(x, y), яка повертає суму двох чисел.

add2 <- function(x,y) {
  return(x+y)
}

add2(1,2)
```

    ## [1] 3

``` r
## 2. Функція above(x, n), яка приймає вектор та число n, та повертає всі
## елементі вектору, які більше n. По замовчуванню n = 10.

above <- function(vector, n = 10) {
  return(vector[vector > n])
}

above(c(1,6,15,7,2,12))
```

    ## [1] 15 12

``` r
## 3. Функція my_ifelse(x, exp, n), яка приймає вектор x, порівнює всі його
##елементи за допомогою exp з n, та повертає елементи вектору, які
##відповідають умові expression. Наприклад, my_ifelse(x, “>”, 0) повертає всі
##елементи x, які більші 0. Exp може дорівнювати “<”, “>”, “<=”, “>=”, “==”.
##Якщо exp не співпадає ні з одним з цих виразів, повертається вектор x.

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
```

    ## [1]  8  9 10

``` r
## . Функція columnmean(x, removeNA), яка розраховує середнє значення
## (mean) по кожному стовпцю матриці, або data frame. Логічний параметр
## removeNA вказує, чи видаляти NA значення. По замовчуванню він
## дорівнює TRUE.

columnmean <- function(x, removeNA = TRUE) {
  for(i in seq_len(ncol(x))) {
    print(mean(x[,i], na.rm = removeNA))
  }
}

columnmean(matrix(c(1,2,3,4,5,6), ncol = 3))
```

    ## [1] 1.5
    ## [1] 3.5
    ## [1] 5.5
