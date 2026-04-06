 # Time (hours)
# time <- c(0, 2, 4, 6, 8, 10)
# # Gene expression (relative units)
# # expression <- c(2, 5, 19, 15, 22, 30)
# expression <- c(2, 4, 6, 18, 22, 30)
# plot(time, expression,
#      main = "Gene Expression Over Time",
#      xlab = "Time (hours)",
#      ylab = "Expression Level",
#      pch = 19,
#      col = "blue")
# model <- lm(expression ~ time)
# abline(model, col = "red", lwd = 2)

# viability <- c(95, 70, 50)
# groups <- c("Control", "Drug A", "Drug B")
# barplot(viability,
#         names.arg = groups,
#         col = c("green", "orange", "red"),
#         main = "Cell Viability After Drug Treatment",
#         ylab = "Viability (%)",
#         ylim=c(0,150))
# 
# # Add values on top (important for presentation)
# text(x = 1:3, y = viability, label = viability, pos = 3)

# cells <- c(40, 35, 25)
# labels <- c("T-cells", "B-cells", "NK-cells")
# pie(cells,
#     labels = labels,
#     main = "Immune Cell Distribution",
#     col = c("skyblue", "pink", "lightgreen"))

# library(ggplot2)
# df <- data.frame(
#   condition = c("Control", "Treated"),
#   expression = c(5, 12)
# )
# p<-ggplot(df, aes(x = condition, y = expression, fill = condition)) +
#   geom_bar(stat = "identity") +
#   ggtitle("Gene Expression Analysis") +
#   ylab("Relative Expression") +
#   theme_minimal()
# 
# print(p)

# library(ggplot2)
# df <- data.frame(
#   concentration = c(1, 2, 3, 4, 5),
#   activity = c(2, 6, 11, 15, 18)
# )
# p<-ggplot(df, aes(x = concentration, y = activity)) +
#   geom_point(size = 3, color = "blue") +
#   ggtitle("Enzyme Activity vs Substrate Concentration") +
#   xlab("Concentration (mM)") +
#   ylab("Activity (Units)") +
#   theme_minimal()
# print(p)

# df <- data.frame(
#   condition = c("Control", "Treated"),
#   mean = c(5, 12),
#   sd = c(1, 2)
# )
# p<-ggplot(df, aes(x = condition, y = mean, fill = condition)) +
#   geom_bar(stat = "identity", width = 0.5) +
#   geom_errorbar(aes(ymin = mean - sd, ymax = mean + sd), width = 0.2) +
#   ggtitle("Gene Expression with Error Bars") +
#   ylab("Expression Level") +
#   ylim(0,20)+
#   theme_minimal()
# 
# print(p)

# install.packages("dplyr")
library(dplyr)

data <- data.frame(
  sample_id = 1:6,
  gene = c("BRCA1", "BRCA1", "TP53", "TP53", "EGFR", "EGFR"),
  condition = c("Control", "Treated", "Control", "Treated", "Control",
                "Treated"),
  expression = c(5, 12, 8, 15, 10, 18)
)

treated_data <- filter(data, condition == "Treated")
print(treated_data)

selected_data <- select(data, gene, expression)
print(selected_data)

data <- mutate(data, log_expression = (expression)*5)
print(data)

sorted_data <- arrange(data, desc(expression))
print(sorted_data)

summary_data <- data %>%
  group_by(gene) %>%
  summarise(mean_expression = sum(expression))
print(summary_data)