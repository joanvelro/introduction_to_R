# cmd + enter --> execute
# ctrl + l ---> clean console

rm(list=ls())

getwd()
setwd("/Users/joseangelvelasco/Google Drive/Data Science/R/files/intro_r/sesion2") 

# Exercise 1
poll1 <- scan("poll1.txt")
load("poll2.Rdata")


table(poll1)
table(poll2)

poll <- c(poll1, poll2)

table(poll)

barplot(table(poll))
table(poll)/length(poll)
pie(table(poll)/length(poll))


# Exercise 2
rm(list=ls())
load("shine.Rdata")

length(shine)
summary(shine)
mean(shine)
median(shine)
which.max(table(shine))

kurtosis <- function(x){
  sum((x-mean(x))^4)/ (length(x)*var(x)^2)-3  
} 

asymmetry <- function(x){
  sum((x-mean(x))^3)/ (length(x)*sqrt(var(x))^3) 
}

kurtosis(shine)
asymmetry(shine)
