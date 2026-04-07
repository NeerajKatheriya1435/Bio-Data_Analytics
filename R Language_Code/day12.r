# library(dplyr)

# data <- data.frame(
#   sample_id = 1:6,
#   gene = c("BRCA1", "BRCA1", "TP53", "TP53", "EGFR", "EGFR"),
#   condition = c("Control", "Treated", "Control", "Treated", "Control",
#                 "Treated"),
#   expression = c(5, 12, 8, 15, 10, 18)
# )

# newData<-data %>% distinct(gene)

# print(data)
# print(newData)
# newdata<-data %>% rename(GeneName = gene)
# print(newdata)
# countgene<-data %>% count(gene)
# print(countgene)
# p<-data %>% mutate(
#   level = case_when(
#     expression > 12 ~ "High",
#     expression > 8 ~ "Medium",
#     TRUE ~ "Low"
#   )
# )

# annotation <- data.frame(
# gene = c("BRCA1", "TP53", "EGFR"),
# functions = c("DNA Repair", "Tumor Suppressor", "Growth Receptor")
# )

# p<-left_join(data, annotation, by = "gene")

# print(p)