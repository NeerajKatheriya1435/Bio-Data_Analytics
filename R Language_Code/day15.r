

data <- data.frame(
  sample_id = 1:8,
  gene = c("BRCA1", "BRCA1", "TP53", "TP53", "EGFR", "EGFR","BRCA1", "TP53"),
  condition = c("Control", "Treated", "Control", "Treated", "Control","Treated","Treated","Treated"),
  expression = c(5, 12, 8, 15, 10, 18,34,8)
)

# data <- read.csv("data.csv")
# print(data)

# install.packages(readxl)

# library(readxl)

# data <- read_excel("mydata.xlsx")
# print(data)

# data <- read.table("newdata.txt", header = TRUE)
# print(data)

# write.csv(data, "output.csv", row.names = FALSE)

# write.table(data, "output2.txt", row.names = FALSE)

# save(data, file = "data12345.RData")

# my_env <- new.env()
# load("data123.RData", envir = my_env)
# # Access data within that environment
# print(my_env$variable_name )
# getwd()
print(summary(data))