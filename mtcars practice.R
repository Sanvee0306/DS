setwd("path")
data= read.csv(file.choose)
library(dplyr)
data()
data(mtcars)
View(mtcars)
?mtcars
head(mtcars)
str(mtcars)
summary(mtcars)


#FILTER  OR  SUBSET

filter(mtcars,cyl==8,gear==5)
filter(mtcars,cyl==8 & gear==5)
select(mtcars,mpg,cyl,gear)
select(mtcars,"carb",mpg:disp,"gear")
select(mtcars,mpg:disp,contains("ge"),contains("carb"))

select(mtcars,c(-gear,-carb))
select(mtcars,-mpg:-disp)
select(mtcars,-contains("ge"))
filter(select(mtcars,gear,carb,cyl),cyl==8)
head(select(mtcars,starts_with("c")))



#Arrange : Reorder rows

arrange(mtcars,cyl)
arrange(select(mtcars,"cyl","gear"),cyl)
arrange(select(mtcars,"cyl","gear"),desc(cyl))


#MUTATE  :  ADD NEW VARIABLE

temp <-mtcars
temp$new_variable <- temp$hp + temp$wt
view(temp)
temp$new_variable <- 0
view(temp)
str(temp)
temp$new_variable <- NULL
view(temp)
str(temp)



#dplyr APPROACH


temp <- mutate(temp,mutate_new=temp$hp+temp$wt)
view("temp")
str("temp")


#DISTICT()

distinct(mtcars["cyl"])
distinct(mtcars[c("cyl","gear")])
c(1,2,3,NA,NULL)
sum(10,20,NA)
mean(c(2,2,2,2,NA),na.rm=T)
sum(10,20,NA)
sum(10,20,NA,na.rm=T)

table(mtcars$cyl)


data("iris")
view("iris")
rowSums(iris[,-5])
colSums(iris[,-5])
rowMeans(iris[,-5])
colMeans(iris[,-5])
unique(iris$Species)
data("iris")
length("iris")
length(iris[,1])
data("iris")
View("iris")
which(iris$Petal.Width==.2)
range<-function(x)  {
  max(x,na.rm=T)-min(x,na.rm=T)
}

range(iris$Sepal.Length)  
range(iris$Sepal.Width)

var(iris$Sepal.Length,na.rm=T)
var(iris$Sepal.Width,na.rm=T)

sd(iris$Sepal.Length,na.rm=T)
sd(iris$Sepal.Width,na.rm=T)

