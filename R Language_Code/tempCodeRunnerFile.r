
install.packages("ggplot2")   # only first time
library(ggplot2)

df <- data.frame(
  concentration = c(1, 2, 3, 4, 5),
  activity = c(2, 6, 11, 15, 18)
)

ggplot(df, aes(x = concentration, y = activity)) +
  geom_point(size = 3, color = "blue") +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  ggtitle("Enzyme Activity vs Substrate Concentration") +
  xlab("Concentration (mM)") +
  ylab("Activity (Units)") +
  theme_minimal()