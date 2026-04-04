# Time (hours)
# time <- c(0, 2, 4, 6, 8, 10)
# # Gene expression (relative units)
# # expression <- c(2, 5, 19, 15, 22, 30)
# expression <- c(2, 4, 6, 8, 22, 30)
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
#         ylab = "Viability (%)")
# 
# # Add values on top (important for presentation)
# text(x = 1:3, y = viability, label = viability, pos = 3)

cells <- c(40, 35, 25)
labels <- c("T-cells", "B-cells", "NK-cells")
pie(cells,
    labels = labels,
    main = "Immune Cell Distribution",
    col = c("skyblue", "pink", "lightgreen"))
