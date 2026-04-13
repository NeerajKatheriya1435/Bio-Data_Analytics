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

# library(edgeR)
# 
# library(DESeq2)
# 
# counts <- matrix(c(
#   10,20,30, 12,22,32,
#   14,16,35, 18,58,38
# ), nrow=3)
# 
# 
# # colnames(counts) <- c("S1","S2","S3","S4")
# # rownames(counts) <- c("Gene1","Gene2","Gene3")
# 
# # Add column names (samples)
# colnames(counts) <- c("S1","S2","S3","S4")
# 
# # Add row names (genes) - optional but good practice
# rownames(counts) <- c("Gene1","Gene2","Gene3")
# 
# coldata <- data.frame(
#   condition = factor(c("Control","Control","Treated","Treated"))
# )
# 
# # VERY IMPORTANT
# rownames(coldata) <- colnames(counts)
# 
# dds <- DESeqDataSetFromMatrix(countData = counts,
#                               colData = coldata,
#                               design = ~ condition)
# dds <- DESeq(dds)
# 
# res <- results(dds)
# print(res)



# Example with replicates (IMPORTANT)
# counts <- matrix(c(
#   10,20,30, 12,22,32,   # Control (2 samples)
#   15,25,35, 18,28,38    # Treated (2 samples)
# ), nrow=3)
# 
# print(counts)
# group <- factor(c("Control","Control","Treated","Treated"))
# 
# # print(group)
# dge <- DGEList(counts=counts, group=group)
# 
# # print(dge)
# 
# dge <- calcNormFactors(dge)
# # print(dge)
# design <- model.matrix(~group)
# # print(design)
# dge <- estimateDisp(dge, design)
# print(dge)
# fit <- glmFit(dge, design)
# 
# lrt <- glmLRT(fit)
# 
# p<-topTags(lrt)

# print(p)

library(edgeR)

# Example with replicates (IMPORTANT)
counts <- matrix(c(
  10,20,30, 12,22,32,   # Control (2 samples)
  15,25,35, 18,28,38    # Treated (2 samples)
), nrow=3)

group <- factor(c("Control","Control","Treated","Treated"))

dge <- DGEList(counts=counts, group=group)

dge <- calcNormFactors(dge)

design <- model.matrix(~group)

dge <- estimateDisp(dge, design)

fit <- glmFit(dge, design)

lrt <- glmLRT(fit)

p<-topTags(lrt)
print(p)
