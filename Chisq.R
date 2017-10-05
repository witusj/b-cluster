experiment <- c(X = 12, Y = 8)
verwachting <- c(X = 10, Y = 10)
M <- as.table(rbind(experiment, verwachting))
chisq.test(M, correct = FALSE)
