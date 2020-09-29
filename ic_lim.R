ic_lim<-function(n,moyenne,ecartype,new_alpha)
{
  t.stat<-qt(new_alpha,n-1)
  se<-ecartype/sqrt(n)
  bs<- moyenne+t.stat*se
  bi<-moyenne-t.stat*se
  result<-c(bi,bs)
  return(result)
} 