rm(list=ls())
getwd()
setwd("/Users/joseangelvelasco/Google Drive/Data Science/R/files/intro_r/sesion2") 

poll <-c("yes", "no", "no", "yes", "ns/nc", "yes", "no", "yes", "ns/nc", "no")
table(poll)

table(poll)/length(poll)

grades <- c(1, 3, 2, 5, 1, 2, 3, 4, 2, 3, 4, 3, 5, 3, 4, 5, 2, 3, 4, 2)
table(grades)

barplot(table(grades), xlab="Grades",ylab="Frequency")
pie(table(grades),main="Grades")

pieces <- c(2, 3, 12, 23, 0, 4, 12, 4, 13, 2, 0, 2, 1, 4, 0, 2)
table(pieces)
stem(pieces)

mean(pieces)
median(pieces)
which.max(table(pieces))

pieces <- c(pieces, 150)
mean(pieces)
median(pieces)
which.max(table(pieces))

var(pieces)
sd(pieces)
quantile(pieces,.5)
quantile(pieces,c(.25,.5,.75))
summary(pieces)
IQR(pieces)

ls()

write.csv(grades, file = "grades.csv")
write.csv(pieces, file = "pieces.csv")
write.csv(poll, file = "poll.csv")

write(grades, file = "grades.txt")
write(pieces, file = "pieces.txt")
write(poll, file = "poll.txt")

wait <- scan("wait.txt")
summary(wait)
plot(wait, xlab = "Observations", ylab = "Time", main = "Waiting time to XXX")
barplot(table(wait), main = 'Bar plot')
hist(wait, breaks=30, main = 'Histogram')
hist(wait, probability = TRUE, breaks = 30, main = 'Relative frequencies Histogram')

asymmetry = sum((wait-mean(wait))^3)/ (length(wait)*sqrt(var(wait))^3)
asymmetry
if (asymmetry<0){print("asymmetry to the left")}
if (asymmetry>0){print("asymmery to the right")} 
if (asymmetry==0){print("Centred data")}

asymmetry <- function(x){
  sum((x-mean(x))^3)/ (length(x)*sqrt(var(x))^3) 
}

asymmetry(wait)

kurtosis = sum((wait-mean(wait))^4)/ (length(wait)*var(wait)^2)-3
kurtosis
if (kurtosis<0){
  print("kurtosis: Platicutica")
}
if (kurtosis>0){
  print("kurtosis: Leptocurtica")
} 
if (kurtosis<0.1 && kurtosis>-0.1){
  print("kurtosis: Mesocurtica")
}
if (kurtosis==0){
  print("Non-kurtosis")
}

kurtosis <- function(x){
  sum((x-mean(x))^4)/ (length(x)*var(x)^2)-3  
} 
kurtosis(wait)

q1 = quantile(wait,.25)
q2 = quantile(wait,.50)
q3 = quantile(wait,.75)
iqr <- IQR(wait)
lower = min(c(q1-1.5*iqr,q3+1.5*iqr))
lower = min(c(q1-1.5*iqr,q3+1.5*iqr))
fivenum(wait)
boxplot(wait, horizontal = TRUE, notch = TRUE)
