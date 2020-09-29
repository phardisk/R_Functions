creduit<-function(moyenne,ecartype,valeur,comp)
{
  ## comp= 1 if P(X<x)
  if(comp==1)
  { 
    #print(paste("Voici le résultat pour X<=",valeur))
    return(paste("Pour X <=",valeur,'le résultat est',pnorm((valeur-moyenne)/ecartype)))
    
  }
  ## comp= 0 if P(X>x)
  else
  {
    paste("X>=",valeur)
    return(paste("Pour X >=",valeur,'le résultat est',pnorm((valeur-moyenne)/ecartype,lower.tail=FALSE)))
  } 
}