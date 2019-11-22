library(cdcfluview)
library(tidyverse)
library(rnoaa)

# retrieving all years at state level
# can create a larger region level if we need to
dattest<-ilinet(region=c("state"),years = NULL)
dattest<-ilinet(region=c("hhs"),years = NULL)

# this is at a national level....what happens when we have different information at different levels of hierarchy?
dagedis<-age_group_distribution(years=NULL)
# loaded rnoaa in case we need humidity data

fluSeason = dattest[which(!(dattest$week %in% c(17:41))),]
fluSeasonSmall = fluSeason[-which(fluSeason$region %in% c("Florida","Virgin Islands","Puerto Rico","Commonwealth of the Northern Mariana Islands")),]
