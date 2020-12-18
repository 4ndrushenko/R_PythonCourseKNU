Lab6.R
================
v.yeshchenkov
2019-11-04

``` r
##1. Створити матрицю mat з 5 стовпцями та 10 строками за допомогою
##matrix з випадковими даними (функція rnorm(50)).

matrx <- matrix(rnorm(50), ncol = 5)

##2. Знайти максимальне значення в кожному стовпці.

apply(matrx, 2, max)
```

    ## [1] 2.070706 1.954430 1.144033 1.812075 1.974596

``` r
##3. Знайти середнє (mean) значення кожного стовпця.

apply(matrx, 2, mean)
```

    ## [1] -0.03643118  0.25094649 -0.51579981  0.07188730 -0.17189786

``` r
##4. Знайти мінімальне значення в кожному рядку.

apply(matrx, 1, min)
```

    ##  [1] -0.9824764 -0.5358816 -1.2265598 -0.9239229 -2.0227545 -1.6525515
    ##  [7] -1.9485144 -0.3660826 -1.0675574 -0.7006312

``` r
##5. Відсортувати кожен стовбець таблиці.

sorted_matrx <- apply(matrx, 2, sort, decreasing = F)
sorted_matrx
```

    ##             [,1]        [,2]       [,3]        [,4]       [,5]
    ##  [1,] -1.5375422 -1.65255147 -1.9485144 -1.53264231 -2.0227545
    ##  [2,] -1.2265598 -0.76920642 -1.0915066 -0.92392286 -1.0675574
    ##  [3,] -0.9824764 -0.04960250 -0.9634623 -0.74910417 -0.7886072
    ##  [4,] -0.7006312 -0.02836877 -0.8215677  0.02865250 -0.6900090
    ##  [5,] -0.5619830  0.28940934 -0.6705932  0.05594797 -0.3793401
    ##  [6,] -0.2896057  0.30206307 -0.5358816  0.32028005 -0.3660826
    ##  [7,]  0.2786887  0.31416931 -0.4671649  0.32524974  0.2634335
    ##  [8,]  1.1914751  0.81513219 -0.1485729  0.54967553  0.5966463
    ##  [9,]  1.3936164  1.33399024  0.3452324  0.83266200  0.7606965
    ## [10,]  2.0707064  1.95442989  1.1440332  1.81207455  1.9745960

``` r
##6. Знайти кількість значень < 0 для кожного стовпця. Використати свою
##функцію.

neg_num_count <- function(x) {
  return(sum(x < 0))
}

apply(matrx, 2, neg_num_count)
```

    ## [1] 6 4 8 3 6

``` r
##7. Вивести вектор з булевими значеннями TRUE та FALSE. TRUE, якщо в
##стовпці є елементи >2, FALSE – якщо немає.

any_el <- function (x) {
  return(any(x>2))
}

apply(matrx, 2, any_el)
```

    ## [1]  TRUE FALSE FALSE FALSE FALSE

``` r
##8. Створить список list1 <- list(observationA = c(1:5, 7:3), observationB =
##matrix(1:6, nrow=2)). Для цього списку знайдіть sum за допомогою lapply.

list1 <- list(observationA = c(1:5, 7:3), observationB = matrix(1:6, nrow=2))

lapply(list1, sum)
```

    ## $observationA
    ## [1] 40
    ## 
    ## $observationB
    ## [1] 21

``` r
##9. Для кожного елементу списку list1 знайдіть максимальне та мінімальне
##значення (range) за допомогою lapply та sapply.
lapply(list1, min)
```

    ## $observationA
    ## [1] 1
    ## 
    ## $observationB
    ## [1] 1

``` r
sapply(list1, max)
```

    ## observationA observationB 
    ##            7            6

``` r
##10.Для вбудованого набору даних InsectSprays знайти середнє count для
##кожного spray.

split_insects <- split(InsectSprays$count,InsectSprays$spray)

lapply(split_insects, mean)
```

    ## $A
    ## [1] 14.5
    ## 
    ## $B
    ## [1] 15.33333
    ## 
    ## $C
    ## [1] 2.083333
    ## 
    ## $D
    ## [1] 4.916667
    ## 
    ## $E
    ## [1] 3.5
    ## 
    ## $F
    ## [1] 16.66667