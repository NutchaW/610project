library(cdcfluview)
library(tidyverse)
library(rnoaa)

# retrieving all years at state level
# can create a larger region level if we need to
dattest<-ilinet(region=c("state"),years = NULL)
# this is at a national level....what happens when we have different information at different levels of hierarchy?
agedis<-age_group_distribution(years=NULL)
# loaded rnoaa in case we need humidity data
#### different geographic level....
dattest1<-ilinet(region=c("national"),years = NULL)
dattest2<-ilinet(region=c("census"),years = NULL)
dattest3<-ilinet(region=c("hhs"),years = NULL)
