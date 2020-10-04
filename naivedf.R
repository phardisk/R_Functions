library(e1071)
naivedf<-function(train,train_labels,test,test_labels,laplace){
    mt<-matrix(ncol =5, byrow = FALSE,
       dimnames = list("",c("laplace","VN","VP","FP","FN")))
for (value in laplace){
sms_classifier <- naiveBayes(train,train_labels,laplace =value)
sms_test_pred <- predict(sms_classifier,test)
mat<-table(sms_test_pred,test_labels)
vec<-c(value,mat[1,1],mat[2,2],mat[2,1],mat[1,2])
mt<-rbind(mt,vec)   
}
df<-as.data.frame(mt,row.names="")
df<-df[-1,]
return(df)
}