plot(mtcars$mpg,mtcars$am,xlab="MPG",ylab="Manual or Automatic",main=" Comparing Car Type with MPG")

tab<- table(mtcars$am)

barplot(tab, xlab="Car Type",ylab="Count",main="No. of Manual and Automic Cars",col=rainbow(4))

install.packages("ggplot2")

library(ggplot2)

qplot(disp, am, data=mtcars,xlab="Manual or Automatic",ylab="Displacement",main=" Comparing Car Type with Disp")
