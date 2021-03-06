## 1. ������� add2(x, y), ��� ������� ���� ���� �����.

add2 <- function(x,y) {
  return(x+y)
}

add2(1,2)

## 2. ������� above(x, n), ��� ������ ������ �� ����� n, �� ������� ��
## ������� �������, �� ����� n. �� ������������ n = 10.

above <- function(vector, n = 10) {
  return(vector[vector > n])
}

above(c(1,6,15,7,2,12))

## 3. ������� my_ifelse(x, exp, n), ��� ������ ������ x, ������� �� ����
##�������� �� ��������� exp � n, �� ������� �������� �������, ��
##���������� ���� expression. ���������, my_ifelse(x, �>�, 0) ������� ��
##�������� x, �� ����� 0. Exp ���� ���������� �<�, �>�, �<=�, �>=�, �==�.
##���� exp �� ������� �� � ����� � ��� ������, ����������� ������ x.

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

## . ������� columnmean(x, removeNA), ��� ��������� ������� ��������
## (mean) �� ������� ������� �������, ��� data frame. ������� ��������
## removeNA �����, �� �������� NA ��������. �� ������������ ��
## ������� TRUE.

columnmean <- function(x, removeNA = TRUE) {
  for(i in seq_len(ncol(x))) {
    print(mean(x[,i], na.rm = removeNA))
  }
}

columnmean(matrix(c(1,2,3,4,5,6), ncol = 3))
