Lab1.R
================
v.yeshchenkov
2019-11-04

``` r
## Створити змінні базових (atomic) типів

int <- 1L
double <- 2.5
bool <- TRUE
char <- "a"
compl <- 1+1i

int
```

    ## [1] 1

``` r
class(int)
```

    ## [1] "integer"

``` r
double
```

    ## [1] 2.5

``` r
class(double)
```

    ## [1] "numeric"

``` r
bool
```

    ## [1] TRUE

``` r
class(bool)
```

    ## [1] "logical"

``` r
char
```

    ## [1] "a"

``` r
class(char)
```

    ## [1] "character"

``` r
compl
```

    ## [1] 1+1i

``` r
class(compl)
```

    ## [1] "complex"

``` r
## Створити вектори, які: містить послідовність з 5 до 75; містить числа 3.14,
## 2.71, 0, 13; 100 значень TRUE.

first <- c(5:75)
second <- c(3.14, 2.71, 0, 13)
third <- as.logical(c(1:100))

first
```

    ##  [1]  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
    ## [24] 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50
    ## [47] 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73
    ## [70] 74 75

``` r
second
```

    ## [1]  3.14  2.71  0.00 13.00

``` r
third
```

    ##   [1] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
    ##  [15] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
    ##  [29] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
    ##  [43] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
    ##  [57] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
    ##  [71] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
    ##  [85] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
    ##  [99] TRUE TRUE

``` r
## Створити наступну матрицю за допомогою matrix, та за допомогою cbind або rbind

matrix_vector <- c(0.5, 3.9,0,2,1.3,131,2.2, 7,3.5,2.8,4.6,5.1)
first_matrix <- matrix(matrix_vector, ncol=3)

first_matrix
```

    ##      [,1]  [,2] [,3]
    ## [1,]  0.5   1.3  3.5
    ## [2,]  3.9 131.0  2.8
    ## [3,]  0.0   2.2  4.6
    ## [4,]  2.0   7.0  5.1

``` r
## method 2
first_row <- c(0.5, 1.3, 3.5)
second_row <- c(3.9,131,2.8)
third_row <- c(0,2.2,4.6)
fourth_row <- c(2,7,5.1)
second_matrix <- rbind(first_row,second_row,third_row,fourth_row)

second_matrix
```

    ##            [,1]  [,2] [,3]
    ## first_row   0.5   1.3  3.5
    ## second_row  3.9 131.0  2.8
    ## third_row   0.0   2.2  4.6
    ## fourth_row  2.0   7.0  5.1

``` r
## 4. Створити довільний список (list), в який включити всі базові типи.

lst <- list("a", TRUE, 5L, 1.3, 1i)

lst
```

    ## [[1]]
    ## [1] "a"
    ## 
    ## [[2]]
    ## [1] TRUE
    ## 
    ## [[3]]
    ## [1] 5
    ## 
    ## [[4]]
    ## [1] 1.3
    ## 
    ## [[5]]
    ## [1] 0+1i

``` r
## 5. Створити фактор з трьома рівнями «baby», «child», «adult».

fctr <- factor(levels = c("baby", "child", "adult"))

fctr
```

    ## factor(0)
    ## Levels: baby child adult

``` r
## 6. Знайти індекс першого значення NA в векторі 1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11. Знайти кількість значень NA.

vctr <- c(1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11)
na_first_position <- min(which(is.na(vctr)))
na_count <- sum(is.na(vctr))

na_first_position
```

    ## [1] 5

``` r
na_count
```

    ## [1] 3

``` r
## 7. Створити довільний data frame та вивести в консоль.

data_frame <- data.frame(first =(1:3), second=c(1i,2i,3i))
data_frame
```

    ##   first second
    ## 1     1   0+1i
    ## 2     2   0+2i
    ## 3     3   0+3i

``` r
## 8. Змінити імена стовпців цього data frame.

colnames(data_frame) <- c("numeric", "complex")

data_frame
```

    ##   numeric complex
    ## 1       1    0+1i
    ## 2       2    0+2i
    ## 3       3    0+3i
