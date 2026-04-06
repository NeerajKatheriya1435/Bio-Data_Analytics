
# install.packages("ggplot2")
library(ggplot2)

# df <- data.frame(
#   concentration = c(1, 2, 3, 4, 5),
#   activity = c(2, 6, 11, 15, 18)
# )

# p<-ggplot(df, aes(x = concentration, y = activity)) +
#   geom_point(size = 3, color = "blue") +
#   ggtitle("Enzyme Activity vs Substrate Concentration") +
#   xlab("Concentration (mM)") +
#   ylab("Activity (Units)") +
#   ylim(0,30)+
#   theme_minimal()

# print(p)


# df <- data.frame(
#   time = c(0, 2, 4, 6, 8, 10),
#   growth = c(0.1, 0.5, 1.2, 2.5, 3.8, 4.0)
# )
# p<-ggplot(df, aes(x = time, y = growth)) +
#   geom_line(color = "darkgreen", size = 1.2) +
#   ggtitle("Bacterial Growth Curve") +
#   xlab("Time (hours)") +
#   ylab("Optical Density (OD600)") +
#   theme_minimal()

# print(p)

# df <- data.frame(
# condition = c("Control", "Treated"),
# expression = c(5, 12)
# )
# p<-ggplot(df, aes(x = condition, y = expression, fill = condition)) +
# geom_bar(stat = "identity") +
# ggtitle("Gene Expression Analysis") +
# ylab("Relative Expression") +
# theme_minimal()

# print(p)

df <- data.frame(
condition = c("Control", "Treated"),
mean = c(5, 12),
sd = c(1, 2)
)

p<-ggplot(df, aes(x = condition, y = mean, fill = condition)) +
geom_bar(stat = "identity", width = 0.5) +
geom_errorbar(aes(ymin = mean - sd, ymax = mean + sd), width = 0.2) +
ggtitle("Gene Expression with Error Bars") +
ylab("Expression Level") +
theme_minimal()

print(p)