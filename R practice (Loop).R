i<-1
while(i<6){
  print(i)
  i=i+1
}
i

v<-c("Hello","Loop")
cnt<-2
repeat  {
  print(v)
  cnt<-cnt+1
  if(cnt>5) {
    break
  }
}


v<-LETTERS[1:4]
for(i in v){
  print(i)
}
v<-LETTERS[1:6]
for (i in v) {
  if (i=="D"){
    next
  }
  print(i)
}


#FUNCTION :


new.function<-function(a)  {
  for(i in 1:a)  {
    b<- i^2
    print(b)
    }
}
new.function(6)

new.function<-function()  {
  for (i in 1:5)  {
    print(i^2)
  }
}
new.function()


new.function<- function(a=3,b=6)  {
  result <- a*b  
  print(result)
  }
new.function()
new.function(9,5)



new.function<-function(a,b)  {
  print(a^2)
  print(a)
  print(b)
}
new.function(6,4)



getwd()


