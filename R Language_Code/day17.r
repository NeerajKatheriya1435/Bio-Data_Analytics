
# library(DESeq2)
# 
# counts <- matrix(c(
#   10,20,30, 12,22,32,
#   14,25,35, 18,58,38
# ), nrow=3)
# 
# # print(counts)
# 
# # Add column names (samples)
# colnames(counts) <- c("S1","S2","S3","S4")
# 
# # Add row names (genes) - optional but good practice
# rownames(counts) <- c("Gene1","Gene2","Gene3")
# print(counts)
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
# 
# dds <- DESeq(dds)
# 
# res <- results(dds)
# print(res)

# library(edgeR)
# 
# # Example with replicates (IMPORTANT)
# counts <- matrix(c(
#   10,20,30, 12,22,32,   # Control (2 samples)
#   15,25,35, 18,28,38    # Treated (2 samples)
# ), nrow=3)
# 
# group <- factor(c("Control","Control","Treated","Treated"))
# 
# dge <- DGEList(counts=counts, group=group)
# 
# dge <- calcNormFactors(dge)
# 
# design <- model.matrix(~group)
# 
# dge <- estimateDisp(dge, design)
# 
# fit <- glmFit(dge, design)
# 
# lrt <- glmLRT(fit)
# 
# p<-topTags(lrt)
# 
# print(p)

#topTable(fit)

# gr <- GRanges(seqnames = "chr1",
#               ranges = IRanges(start = c(100, 200),
#                                end = c(150, 250)))
# 
# 
# print(gr)

# BiocManager::install("Biostrings")
library(Biostrings)

dna <- DNAString("ATGCGTACGTTAG")

# Count nucleotides
# p1<-alphabetFrequency(dna)

# print(p1)
# Find pattern
# p<-matchPattern("CGT", dna)

# print(p)
# 1. Create a DNA sequence
dna_seq <- DNAString("ATGCAT")

print(dna_seq)
# 2. Get the complement (Result: "TACGTA")
comp_seq <- complement(dna_seq)

print(comp_seq)

# 3. Get the reverse (Result: "TACGTA")
# rev_seq <- reverse(dna_seq)




