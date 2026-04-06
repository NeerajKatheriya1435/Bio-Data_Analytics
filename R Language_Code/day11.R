# install.packages("dplyr")
library(dplyr)


data <- data.frame(
  sample_id = 1:6,
  gene = c("BRCA1", "BRCA1", "TP53", "TP53", "EGFR", "EGFR"),
  condition = c("Control", "Treated", "Control", "Treated", "Control","Treated"),
  expression = c(5, 12, 8, 15, 10, 18)
)

# treated_data <- filter(data, condition == "Control")
# treated_data <- filter(data, expression >14)

# selected_data <- select(data, condition, expression)
# print(selected_data)

# print(data)
# print(treated_data)

# data <- mutate(data, newCol = (expression)*5)
# print(data)

# sorted_data <- arrange(data, desc(expression))
# print(sorted_data)

summary_data <- data %>%
  group_by(gene) %>%
  summarise(mean_expression = sum(expression))
print(summary_data)