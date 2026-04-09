# library(tidyr)
# 
# data <- data.frame(
#   gene = c("BRCA1", "TP53"),
#   control = c(5, 8),
#   treated = c(12, 15)
# )
# 
# print(data)
# 
# long_data <- data %>%
#   pivot_longer(cols = control:treated,
#                names_to = "condition",
#                values_to = "expression")
# 
# print(long_data)

# install.packages("BiocManager")
# BiocManager::install("DESeq2")

# library(DESeq2)
# # Sample count data
# counts <- matrix(c(100,120,300,350,
#                    50,60,40,30),
#                  nrow=2, byrow=TRUE)
# 
# rownames(counts) <- c("Gene1", "Gene2")
# colnames(counts) <- c("S1","S2","S3","S4")
# 
# print(counts)

library(edgeR)

counts <- matrix(c(10,20,30,15,25,35), nrow=3)
group <- factor(c("Control","Treated"))

dge <- DGEList(counts=counts, group=group)

dge <- calcNormFactors(dge)

dge <- estimateDisp(dge)

et <- exactTest(dge)

topTags(et)
