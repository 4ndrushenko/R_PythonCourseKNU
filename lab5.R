##Написати функцію pmean, яка обчислює середнє значення (mean)
##забруднення сульфатами або нітратами серед заданого переліка
##моніторів. Ця функція приймає три аргументи: «directory», «pollutant»,
##«id». Directory – папка, в якій розміщені дані, pollutant – вид забруднення,
##id – перелік моніторів. Аргумент id має значення за замовчуванням 1:332.
##Функція повинна ігнорувати NA значення.

pmean <- function(directory, pollutant, id = 1:332) {

  v <- vector(mode="numeric", length=0)
  
  for(i in id){
    fileStr <- paste("C:/Users/H3lgi/Documents/RLabs/",directory, "/",sprintf("%03d", as.numeric(i)), ".csv", sep = "")
    myData <- read.csv(fileStr)
    
    num <- myData[[pollutant]]
    
    v <- append(v, num)
  }
  mean(v, na.rm = T)
}

pmean("specdata", "sulfate", 1:10)
pmean("specdata", "nitrate")

##2. Написати функцію complete, яка виводить кількість повних спостережень
##(the number of completely observed cases) для кожного файлу. Функція
##приймає два аргументи: «Directory» та «id» та повертає data frame, в
##якому перший стовпчик – ім’я файлу, а другий – кількість повних
##спостережень.

complete <- function(directory, id = 1:332) {
  
  result_dataframe <- data.frame(id=numeric(),
                   nobs=numeric(),
                   stringsAsFactors=FALSE) 
  for(i in id){
    fileStr <- paste("C:/Users/H3lgi/Documents/RLabs/",directory, "/",sprintf("%03d", as.numeric(i)), ".csv", sep = "")
    myData <- read.csv(fileStr)
    completed_cases <- complete.cases(myData)
    cases_count <- length(completed_cases[completed_cases == TRUE])
    
    newRow <- data.frame(name=i, cases_count=cases_count)
    result_dataframe <- rbind(result_dataframe, newRow)
  }
  return(result_dataframe)
}

complete("specdata", 1)
complete("specdata", c(2, 4, 8, 10, 12))
complete("specdata", 50:60)

##3. Написати функцію corr, яка приймає два аргументи: directory (папка, де
##знаходяться файли спостережень) та threshold (порогове значення, за
##замовчуванням дорівнює 0) та обчислює кореляцію між сульфатами та
##нітратами для моніторів, кількість повних спостережень для яких більше
##порогового значення. Функція повинна повернути вектор значень
##кореляцій. Якщо ні один монітор не перевищує порогового значення,
##функція повинна повернути numeric вектор довжиною 0. Для обчислення
##кореляції між сульфатами та нітратами використовуйте вбудовану функцію 
##«cor» з параметрами за замовчуванням.

corr <- function(directory, threshold = 0) {
  completed_cases <- complete(directory)
  r <- completed_cases[completed_cases$cases_count > threshold,]
  correlation <- numeric()
  
  for(i in r$name){
    fileStr <- paste("C:/Users/H3lgi/Documents/RLabs/",directory, "/",sprintf("%03d", as.numeric(i)), ".csv", sep = "")
    myData <- read.csv(fileStr)
    correlation <- append(correlation, cor(myData$sulfate, myData$nitrate, use="na.or.complete"))
  }
  return(correlation)
}

cr <- corr("specdata", 150)
head(cr); summary(cr)

cr <- corr("specdata", 400)
head(cr); summary(cr)

cr <- corr("specdata", 5000)
head(cr); summary(cr) ; length(cr)