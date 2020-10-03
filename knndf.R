library(class)
knndf<-function(train,test,labels_train,labels_test,valuek){
    mt<-matrix(ncol =5, byrow = FALSE,
       dimnames = list("",c("k","VN","VP","FP","FN")))
for (k in valueK){
    test_pred <- knn(train, test,
                        cl =labels_train, k=k)
mat<-table(labels_test,test_pred)
vec<-c(k,mat[1,1],mat[2,2],mat[2,1],mat[1,2])
mt<-rbind(mt,vec)   
}
df<-as.data.frame(mt,row.names="")
df<-df[-1,]
return(df)
}