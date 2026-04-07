library(tidyr)

data <- data.frame(
  gene = c("BRCA1", "TP53"),
  control = c(5, 8),
  treated = c(12, 15)
)

print(data)

long_data <- data %>%
  pivot_longer(cols = control:treated,
               names_to = "condition",
               values_to = "expression")

print(long_data)