df <- read.table("Assignment 6 Dataset.txt", header = TRUE, sep = ",")

#install.packages("pryr")
require(pryr)
require(ISLR)
require(boot)
#install.packages("plyr")
library(data.table)
library(plyr)

#Sort Dataframe
sexSorted = ddply(df, "Sex", transform, Grade.Average = mean(Grade))

#Print to new file
write.table(sexSorted, "Sorted_Average", sep = ',')

#Filter by names
filteredDF = subset(df, grepl("[iI]", df$Name))

#Create filtered table
write.table(filteredDF, "DataSubset", sep = ",")