##1. �������� ������� mat � 5 ��������� �� 10 �������� �� ���������
##matrix � ����������� ������ (������� rnorm(50)).

matrx <- matrix(rnorm(50), ncol = 5)

##2. ������ ����������� �������� � ������� �������.

apply(matrx, 2, max)

##3. ������ ������� (mean) �������� ������� �������.

apply(matrx, 2, mean)

##4. ������ ��������� �������� � ������� �����.

apply(matrx, 1, min)

##5. ³���������� ����� �������� �������.

sorted_matrx <- apply(matrx, 2, sort, decreasing = F)
sorted_matrx

##6. ������ ������� ������� < 0 ��� ������� �������. ����������� ����
##�������.

neg_num_count <- function(x) {
  return(sum(x < 0))
}

apply(matrx, 2, neg_num_count)

##7. ������� ������ � �������� ���������� TRUE �� FALSE. TRUE, ���� �
##������� � �������� >2, FALSE � ���� ����.

any_el <- function (x) {
  return(any(x>2))
}

apply(matrx, 2, any_el)

##8. �������� ������ list1 <- list(observationA = c(1:5, 7:3), observationB =
##matrix(1:6, nrow=2)). ��� ����� ������ ������� sum �� ��������� lapply.

list1 <- list(observationA = c(1:5, 7:3), observationB = matrix(1:6, nrow=2))

lapply(list1, sum)

##9. ��� ������� �������� ������ list1 ������� ����������� �� ���������
##�������� (range) �� ��������� lapply �� sapply.
lapply(list1, min)

sapply(list1, max)

##10.��� ����������� ������ ����� InsectSprays ������ ������� count ���
##������� spray.

split_insects <- split(InsectSprays$count,InsectSprays$spray)

lapply(split_insects, mean)
