########################
#    infer absences    #
########################

# Script by Eva Lieungh

# Data: occurrence.txt
# downloaded from https://ipt.gbif.no/resource?r=geco-plant-habitat-specialists-15-patches
# data version 1.11

# transform the occurrence data set from presence-only to presence-absence data
# --------------------------------------------------------------------------------

# load packages
library(dplyr) # for left_join() and select()

# read in the data file
presencedata <- read.table('Data/occurrence.txt', sep = '\t', header = TRUE)
presencedata <- presencedata[,c('scientificName','occurrenceRemarks','occurrenceStatus')] # keep only these columns

# create a data frame with all possible combinations of species, patch and year as absences
scientificName <- sort(c(unique(presencedata$scientificName), # all the species with presence data
             'Centaurea scabiosa L.', # add the species that were looked for and not found
             'Myosurus minimus L.', 
             'Odontites litoralis Fr.',
             'Saxifraga granulata L.',
             'Saxifraga osloënsis Knaben'))
occurrenceRemarks <- c(paste(
  (paste(rep('p',45), as.character(c(rep(1:15,3))), sep = '')), # patches p1:p15 repeated 3 times
  as.character(c(rep(2009,15),rep(2019,15),rep(2020,15))), # years
  sep = '-'
  )) # the occurrenceRemarks column combines patch number and year into e.g. p1-2009 for patch 1 surveyed in year 2009.
occurrenceStatus <- c(rep('absent',2205)) # mark everything as absent, then overwrite with presences in next step

data <- data.frame(scientificName = c(rep(scientificName, each = 45)), # repeat each species 45 times (15 patches * 3 yrs)
                   occurrenceRemarks = c(rep(occurrenceRemarks, 49)), # repeat patch-year combinations for the 49 species
                   occurrenceStatus)

# overwrite the relevant rows with presence data
data <- left_join(data,presencedata, by = c('occurrenceRemarks','scientificName')) # join the presence data into the full data frame
data$occurrenceStatus.y[is.na(data$occurrenceStatus.y)] <- data$occurrenceStatus.x[is.na(data$occurrenceStatus.y)] # replace NAs in the presence column (.y) with absences from our temporary column (.x) created above
data <- data %>% select(scientificName,
                        occurrenceRemarks,
                        occurrenceStatus = occurrenceStatus.y)

# if necessary, recode 'present'/'absent' into 1/0
#data$occurrenceStatus <- ifelse(data$occurrenceStatus == 'present', 1, 0)

# save as new .txt file
write.table(data,'occurrence_pa.txt') 

# this data can be joined to patch-level data in the event.txt file by the occurrenceRemarks = locationRemarks columns of patch-year combinations.

