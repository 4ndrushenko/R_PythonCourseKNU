##1. Створити матрицю mat з 5 стовпцями та 10 строками за допомогою
##matrix з випадковими даними (функція rnorm(50)).

matrx <- matrix(rnorm(50), ncol = 5)

##2. Знайти максимальне значення в кожному стовпці.

apply(matrx, 2, max)

##3. Знайти середнє (mean) значення кожного стовпця.

apply(matrx, 2, mean)

##4. Знайти мінімальне значення в кожному рядку.

apply(matrx, 1, min)

##5. Відсортувати кожен стовбець таблиці.

sorted_matrx <- apply(matrx, 2, sort, decreasing = F)
sorted_matrx

##6. Знайти кількість значень < 0 для кожного стовпця. Використати свою
##функцію.

neg_num_count <- function(x) {
  return(sum(x < 0))
}

apply(matrx, 2, neg_num_count)

##7. Вивести вектор з булевими значеннями TRUE та FALSE. TRUE, якщо в
##стовпці є елементи >2, FALSE – якщо немає.

any_el <- function (x) {
  return(any(x>2))
}

apply(matrx, 2, any_el)

##8. Створить список list1 <- list(observationA = c(1:5, 7:3), observationB =
##matrix(1:6, nrow=2)). Для цього списку знайдіть sum за допомогою lapply.

list1 <- list(observationA = c(1:5, 7:3), observationB = matrix(1:6, nrow=2))

lapply(list1, sum)

##9. Для кожного елементу списку list1 знайдіть максимальне та мінімальне
##значення (range) за допомогою lapply та sapply.
lapply(list1, min)

sapply(list1, max)

##10.Для вбудованого набору даних InsectSprays знайти середнє count для
##кожного spray.

split_insects <- split(InsectSprays$count,InsectSprays$spray)

lapply(split_insects, mean)
