# Use the given link below and locate the bank marketing dataset. Data Set Link

setwd("C:/Users/Denis/R Studio/Assignment/Session11/Banking Dataset")

library(readxl)
library(lattice)
library(readr)
library(dplyr)
library(reshape2)
library(ggplot2)


MyData <- read.csv(file = 'bank-additional-full.csv', header = T, sep = ';')
head(MyData)

df_MyData <- as.data.frame(MyData)
df_MyData
head(df_MyData)
colnames(df_MyData)

# Perform the below operations:
# a. Is there any association between Job and default?

xyplot(job ~ default, data = df_MyData,
       xlab = "Job",
       ylab = "Default",
       main = "Relation between Job and Default")

# b. Is there any significant difference in duration of last call between people having housing loan or not?

xyplot(duration ~ housing, data = df_MyData,
       xlab = "Duration of last call",
       ylab = "Housing loan",
       main = "Relation between Duration of last call and Housing loan")

# c. Is there any association between consumer price index and consumer?

xyplot(cons.price.idx ~ cons.conf.idx, data = df_MyData,
       xlab = "CPI",
       ylab = "CCI")

# d. Is the employment variation rate consistent across job types?

#No it is not consistent
xyplot(emp.var.rate ~ job, data = df_MyData,
      xlab = "EVR",
      ylab = "Job")


# e. Is the employment variation rate same across education?

#No it is not consistent
xyplot(emp.var.rate ~ education, data = df_MyData,
       xlab = "EVR",
       ylab = "Education")


#   f. Which group is more confident?



