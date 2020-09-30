library(rvest)
library(httr)
library(stringr)
library(dplyr)



extractTable<-function(site,xpath)
{
  tableau.site <-content(html_session(site)$response)%>%
    html_nodes(xpath=xpath)%>%
    html_table(fill=TRUE)
  return(tableau.site)
}