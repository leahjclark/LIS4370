Frequency <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
BP <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
First <- c(1,1,1,1,0,0,0,0,NA,1)
Second <- c(0,0,1,1,0,0,1,1,1,1)
FinalDecision <- c(0,1,0,1,0,1,0,1,1,1)
hospital.df <- data.frame(Frequency, BP, First, Second, FinalDecision)
boxplot(BP~FinalDecision, hospital.df)
hist(hospital.df$BP, xlab = "Blood Pressure", main = "Histogram of Blood Pressure")
mean(BP)
mean(FinalDecision)
