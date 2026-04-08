
library(tidyr)
# data <- data.frame(
# gene = c("BRCA1", "TP53"),
# control = c(5, 8),
# treated = c(12, 15)
# )


# long_data <- data %>%
# pivot_longer(cols = control:treated,
# names_to = "condition",
# values_to = "expression"
# )

# wide_data <- long_data %>%
# pivot_wider(names_from = condition,
# values_from = expression)

# # print(long_data)
# print(wide_data)

# data <- data.frame(info = c("BRCA1_Control", "TP53_Treated"))
# newCreated<-data %>%
#     separate(info, into = c("gene", "condition"), sep = "_")

# joinedData<-newCreated %>%
#     unite("combined", gene, condition, sep = "_")

# print(joinedData)

# data <- data.frame(
# gene = c("BRCA1", "TP53","AB54","AC67",NA),
# control = c(5, 8,NA,67,NA),
# treated = c(12, 15,45,67,43)
# )

# replacedValue<-data %>% replace_na(list(control = 50))

# newData<-data %>% drop_na()
# print(data)
# print(newData)

# print(replacedValue)

# filledData<-data %>% fill(gene,control)
# print(filledData)

# newData<-data %>% complete(gene, control)
# print(newData)

# install.packages("tidyverse")

library(tidyverse)

# data <- data.frame(
#   sample_id = 1:8,
#   gene = c("BRCA1", "BRCA1", "TP53", "TP53", "EGFR", "EGFR","BRCA1", "TP53"),
#   condition = c("Control", "Treated", "Control", "Treated", "Control","Treated","Treated","Treated"),
#   expression = c(5, 12, 8, 15, 10, 18,34,8)
# )

# newdata1<-data %>%
#   filter(condition == "Treated") %>%
#   group_by(gene) %>%
#   summarise(mean_exp = mean(expression))

# print((newdata1))

# p<-ggplot(data, aes(x=gene, y=expression)) +
#   geom_bar(stat="identity")

# print(p)

# data <- read_csv("data.csv")
# print(data)

# newdata<-tail(data, n = 5)
# print(newdata)

# data <- tibble(
#   gene = c("BRCA1", "TP53"),
#   expression = c(10, 15)
# )
# print(data)

