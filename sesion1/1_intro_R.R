# cmd + enter --> execute

license() # see the license of R
citation() # how to cite when you are using R
demo() # open demos
demo(lm.glm) # Some generalized linear modelling examples from 
help() # help

getwd() 

setwd("/Users/joseangelvelasco/Google Drive/Data Science/R")

# basic operations
x <- 2
y <- 10
z = x + y
k = sqrt(z)^3 
print('k:=sqrt(x+y)^3')
print(k)


ls() # list of variables
rm(x) # delete the variable "x"
rm(list=ls()) # clean all variables
nombre<-"Alfredo"
mode(nombre) 
a <- TRUE
mode(a)

b <- 5+3i
mode(b)

c <- 1.3e4
mode(c)

d <- sqrt(2)
mode(d)

vector <-c(123,89,142,118,109)

names(vector)<-c("Lunes","Martes", "Miercoles","Jueves","Viernes")
vector

vector[1]
vector['Lunes']

sum(vector)
length(vector)
mean_value = sum(vector)/length(vector)
mean_value
mean(vector)
range(vector)
cumsum(vector)
diff(vector)
sort(vector)
n = length(vector)
variance = sum( sum((mean(vector)-vector)^2)/(length(vector)-1))
variance
var(vector)

vector[length(vector)]
vector[1:3]
vector[c(1,3,5)]
vector[-1]
vector["Martes"]
vector>100

vector[vector>100]

sum(vector>100)

plot(vector, asp = 0.05 , type = 'o')
plot(vector,type="b",asp = 0.05)

write(vector,"vector.csv",ncolumns=1)

rm(list=ls())
ls()
vector<-scan("vector.csv")

save(vector,file="vector.Rdata")

rm(list=ls())
ls()
load("vector.Rdata")
vector

save.image(file="intro_R_workspace.Rdata")
