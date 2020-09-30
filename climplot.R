climplot<-function(df){
  par(mar=c(5, 4, 4, 6) + 0.1)
  barplot(df$MeanPlu,names.arg = df$Mois,axes=FALSE,las=2,col="blue",xlab="Mois",main="Pluviométrie et Température")
  axis(side =2, ylim=c(0,max(df$MeanPlu)),ylab="Pluviométrie",las=2)
  mtext("Pluviométrie(mm)",side=2,line=2.5)
  par(new=TRUE)
  plot(df$Temp,type="b",ylim=c(0,100),axes=FALSE,xlab="",ylab="",col="red",lwd=2)
  axis(4,col="black",las=1,ylim=c(0,100))
  mtext("Température(oC)",side=4,line=2.5)
  legend("top",legend="Température",bty="n",
         text.col="red",lty=1,col="red")
}