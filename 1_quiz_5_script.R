library(tidyverse)
library(apaTables)

my.data <- read_csv("reg_quiz2_data.csv")

#3 - Create an APA correlation table based on this data
apa.cor.table(my.data, filename = "Table1.doc")

block1 <- lm(aSuc~selfEsteem, data=my.data)
block2 <- lm(aSuc~selfEsteem + PAS, data=my.data)
apa.reg.table(block1,block2, filename = "table2.doc")

block3 <- lm(aSuc~selfEsteem, data=my.data)
block4 <- lm(aSuc~selfEsteem + NAS, data=my.data)
apa.reg.table(block3,block4, filename = "table3.doc")

block5 <- lm(aSuc~NAS + PAS, data=my.data)
block6 <- lm(aSuc~selfEsteem + NAS + PAS, data=my.data)
apa.reg.table(block5,block6, filename = "table4.doc")

# 5 - see write up in word doc