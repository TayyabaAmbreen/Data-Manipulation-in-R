plot(mtcars$mpg,mtcars$am,xlab="MPG",ylab="Manual or Automatic",main=" Comparing Car Type with MPG")

tab<- table(mtcars$am)

barplot(tab, xlab="Car Type",ylab="Count",main="No. of Manual and Automic Cars",col=rainbow(4))

install.packages("ggplot2")

library(ggplot2)

qplot(disp, am, data=mtcars,xlab="Manual or Automatic",ylab="Displacement",main=" Comparing Car Type with Disp")

AirPassengers
apm <- matrix(AirPassengers, ncol = 12, byrow =TRUE,  dimnames = list( as.character(1949:1960),month.abb))
array1<-c()
for (i in 1:ncol(apm))
{
  total=0
  total=total+sum(apm[,i])
  array1[i] <- total
}

month.abb[which.max(array1)]

array2<-c()
for (i in 1:nrow(apm))
{
  total=0
  total=total+sum(apm[i,])
  array2[i] <- total
}

as.character(1949:1960)[which.max(array2)]

plot(AirPassengers)

array3<-c()
price=8000
totalrev=0
p=matrix( data=NA,nrow=12,ncol = 12,byrow = TRUE)

for (i in 1:nrow(apm))
{
  for (j in 1:ncol(apm))
  {
    p[i,j]=price*(apm[i,j])
  }

  price=price+(price*(10/100))
}

array3<-c()
for (i in 1:ncol(p))
{
  total=0
  total=total+sum(p[,i])
  array3[i] <- total
}

month.abb[which.max(array3)]

array4<-c()
for (i in 1:ncol(p))
{
  total=0
  total=total+sum(p[i,])
  array4[i] <- total
}

as.character(1949:1960)[which.max(array4)]

barplot(apm,beside = TRUE,col=c("red","green","blue","orange","pink","black","yellow","grey","white","purple","brown","seagreen"))
legend("topleft",c("1949","1950","1951","1952","1953","1954","1955","1956","1957","1958","1959","1960"),fill = c("red","green","blue","orange","pink","black","yellow","grey","white","purple","brown","seagreen"))

