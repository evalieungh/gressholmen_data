###############################
#  Gressholmen data handling  #
###############################

# Script by Eva Lieungh

# Data: occurrence.txt
# downloaded from https://ipt.gbif.no/resource?r=geco-plant-habitat-specialists-15-patches

# Read data
occ <- read.table('dwca-geco-plant-habitat-specialists-15-patches-v1.13/occurrence.txt', sep = '\t', header = TRUE)
evt <- read.table('dwca-geco-plant-habitat-specialists-15-patches-v1.13/event.txt',sep = '\t', header = TRUE)

# calculate total habitat patch size
sum(evt[,evt$year==2009]$sampleSizeValue) # sum of patch sizes
print(evt$sampleSizeUnit[1]) # unit

# calcualte mean habitat patch size
mean(evt[,evt$year==2009]$sampleSizeValue) # mean patch size
print(evt$sampleSizeUnit[1]) # unit
