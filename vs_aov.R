vs_aov<-function(data,formula)
{
  aov1 <- aov(formula, data = data)
  res<-residuals(aov1)
  pred<-fitted(aov1)
  par(mfrow=c(1,2))
  plot(pred,res,ylab = "Valeurs résiduelles",xlab='Valeurs prédites',
       main=' Valeurs prédites VS Valeurs résiduelles \n (Homogénéité de la variance)',cex.main = 1)
  qqnorm(res, ylab = "Quantiles observés",
         xlab = "Quantiles théoriques",
         main = "Graphique quantile-quantile de normalité \n (Normalité des résidus)",
         cex.main = 1)
  qqline(res)
}