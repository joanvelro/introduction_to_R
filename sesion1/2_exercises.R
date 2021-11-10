# cmd + enter --> execute
# ctrl + l ---> clean console

rm(list=ls())

getwd()
setwd("/Users/joseangelvelasco/Google Drive/Data Science/R/files/intro_r/sesion1") 

# Exercise 1
data <- read.csv(file="kilometers.csv", header=TRUE, sep=",")

plot(data[['kilometers']])

diff(data[['kilometers']])
length(data[['kilometers']])
mean(diff(data[['kilometers']]))
sd(diff(data[['kilometers']]))
summary(diff(data[["kilometers"]]))

# Exercise 2
kilometers <- c(55311, 55631, 55912, 56215, 56499, 56826, 57145, 57442)

diff(kilometers)

mean(kilometers)

mean(diff(kilometers))

boxplot(diff(kilometers),boxwex=0.5,main = "Kilometeres per deposit")

summary(diff(kilometers))

sd(diff(kilometers))

# Exercise 3

rainings05 <- c(124,60,34,29,31,40,30,18,21,10,24,26)
rainings06 <- c(69,44,31,15,58,16,99,86,51,0,39,52)

names(rainings05) <- c("Oct","Nov","Dic","Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep")
names(rainings06) <- c("Oct","Nov","Dic","Jan","Feb","Mar","pr","May","Jun","Jul","Aug","Sep")

sum(rainings05)
sum(rainings06)

cumsum(rainings05)
cumsum(rainings06)

which.max(rainings05)
which.max(rainings06)

which.min(rainings05)
which.min(rainings06)

mean(rainings05)
mean(rainings06)

mean(c(rainings05,rainings06))

plot(rainings05)
plot(rainings06)
plot(c(rainings05,rainings06))


diference0506 =  rainings05 - rainings06
plot(diference0506)

# Exercise 4

rm(list=ls())
data <- read.csv(file="load_demand.csv")
plot(data[['load']])

length(data[['load']])
summary(data[["load"]])
quantile(data[["load"]],.75) 
max(data[["load"]])
min(data[["load"]])
