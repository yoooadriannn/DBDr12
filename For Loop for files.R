for (file in file_list){
        
        # if the merged dataset doesn't exist, create it
        if (!exists("dataset")){
                dataset <- read.table(file, header=TRUE, fill = TRUE, sep="\t")
        }
        
        # if the merged dataset does exist, append to it
        if (exists("dataset")){
                temp_dataset <-read.table(file, header=TRUE, fill = TRUE, sep="\t")
                dataset<-rbind(dataset, temp_dataset)
                rm(temp_dataset)
        }
        
}

library(dplyr)
library(xlsx)

EXP <- select(dataset, Item, Status)

write.xlsx(EXP, "C:/Users/andera/Desktop/mydata.xlsx")