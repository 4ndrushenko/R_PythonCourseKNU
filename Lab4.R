data <- read.csv("C:/Users/H3lgi/Documents/RLabs/R_data.csv")

## 1. як≥ назви стовпц≥в файлу даних?

names(data)

## 2. ¬ивед≥ть перш≥ 6 строк фрейму даних

head(data, 6)

## 3. —к≥льки спостер≥гань (строк) в дата фрейм≥?

nrow(data)

## 4. ¬ивед≥ть останн≥ 10 строк дата фрейму.

tail(data, 10)

## 5. як багато значень ЂNAї в стовпц≥ ЂOzoneї?

sum(is.na(data$Ozone))

## 6. яке середнЇ (mean) стовпц€ ЂOzoneї. ¬иключити ЂNAї значенн€.

mean(data$Ozone, na.rm = TRUE)

## 7. ¬ивед≥ть частину набору даних (subset) з≥ значенн€м ЂOzoneї > 31 та
##ЂTempї > 90. яке середнЇ (mean) значень ЂSolar.Rї в цьому набор≥ даних
##(subset)?

subs_value <- subset(data, Temp>90 & Ozone>31, select=c(Solar.R, Ozone, Temp))
subs_value
mean(subs_value$Solar.R)

## 8. яке середнЇ значенн€ (mean) дл€ ЂTempї дл€ червн€ (ЂMonthї дор≥внюЇ
##6)?

mean(data$Temp[which(data$Month == 6)])

## 9. яке максимальне значенн€ ЂOzoneї дл€ травн€ (ЂMonthї дор≥внюЇ 5)?

max(data$Ozone[which(data$Month == 5)], na.rm = T)