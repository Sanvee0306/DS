arr<-array(c(1:6),dim=c(2,4,3))
arr
arr[,,1]
arr[1,,1]
arr[,c(1,3),c(1,3)]
arr[1,2,3]
arr[1,,c(1,3)]

list<-list(Id=c(1,2,3,4),name=c('D','k','l','s'),marks=c(9,9.5,8,8.5))
x<-matrix(c(1:5),nrow=5,ncol=5,byrow=T,dimnames=list(c('c1','c2','c3','c4','c5'),c('c1','c2','c3','c4','c5')))
x
list2<-list(list,x,arr)
list2
list2[[2]]
class(list2)

df<-data.frame(Id=c(1,2,3,4),names=c('C','D','L','S'),marks=c(9,9.5,8,8.5))
df

df2<-data.frame(Id=c(5,6,7,8),names=c('A','T','V','P'),marks=c(7,9.5,8.5,7.5))
df2
df2<-dataframe(Id=c(5,6,7,8))
df[,1]
df$names
df$Id[1]
rbind(df,df2)
cbind(df,df2)


#FACTORS
k<-c("red","green","blue","blue","red","red")
class(k)
factor_k<-factor(k)
class(factor_k)
factor_k
l<-c(1,2,3,4,4,5,3,2,5,1)
l
class(l)
factor_l<-factor(l)
class(factor_l)
factor_l
ls()
ls(pattern="factor")
ls(all.name=TRUE)


var1<-1
ls(pattern="factor")
rm(list=ls(pattern="factor"))



#ARIHMATIC OPERATORS

n<-c(1,2.4,5)
o<-c(3,4.7,9.1)
p<-c(1.9,2,7)

n+o
n+o+p

n-o
n-o-p
x<-5
y<-10
x*y
x<-10
y<-3
x/y
x%%y


q<-c(1,3,4,3,2)
r<-c(2,4,4,5,2)
q[1]>r[2]
q==r
q>=r
q<=r
q!=r


x<-c(TRUE,FALSE,0,6)
y<-c(FALSE,TRUE,FALSE,TRUE)
!x
x&y
x&&y
x|y
x||y


v1<-c(3,1,TRUE,2+3i)
v2<-c(3,1,TRUE,2+3i)
v3=c(3,1,FALSE,2+3i)
v1
v2
v3

c(3,1,TRUE,2+3i)->v4
c(3,1,TRUE,2+3i)->v5
v4
v5
v7<-c(8,9,10)
v8<-c(12,13,14)
t<-1:10
t
v7%in%t
v8%in%t
t%in%v7
v9<-matrix(c(2,6,5,1,10,4),nrow=2,ncol=3,byrow=TRUE)
v9
t(v9)
v9t<-v9%*%t(v9)
v9t

