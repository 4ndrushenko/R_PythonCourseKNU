data <- read.csv("C:/Users/H3lgi/Documents/RLabs/R_data.csv")

## 1. �� ����� �������� ����� �����?

names(data)

## 2. ������� ����� 6 ����� ������ �����

head(data, 6)

## 3. ������ ����������� (�����) � ���� �����?

nrow(data)

## 4. ������� ������� 10 ����� ���� ������.

tail(data, 10)

## 5. �� ������ ������� �NA� � ������� �Ozone�?

sum(is.na(data$Ozone))

## 6. ��� ������� (mean) ������� �Ozone�. ��������� �NA� ��������.

mean(data$Ozone, na.rm = TRUE)

## 7. ������� ������� ������ ����� (subset) � ��������� �Ozone� > 31 ��
##�Temp� > 90. ��� ������� (mean) ������� �Solar.R� � ����� ����� �����
##(subset)?

subs_value <- subset(data, Temp>90 & Ozone>31, select=c(Solar.R, Ozone, Temp))
subs_value
mean(subs_value$Solar.R)

## 8. ��� ������� �������� (mean) ��� �Temp� ��� ������ (�Month� �������
##6)?

mean(data$Temp[which(data$Month == 6)])

## 9. ��� ����������� �������� �Ozone� ��� ������ (�Month� ������� 5)?

max(data$Ozone[which(data$Month == 5)], na.rm = T)