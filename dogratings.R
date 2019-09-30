#TESTING THE DIFFERENCE BETWEEN MY TASTE IN DOG MOVIES VS MY TASTE IN ALL MOVIES

dogdata <- read.csv(file="dogratings.csv", header=TRUE)
otherdata <- read.csv(file="allbutdogratings.csv", header=TRUE)

#summary of data
summary(dogdata$Rating)
summary(otherdata$Rating)

#RESULTS:
#dogdata: Median = 3, Mean = 2.718, IQR = 1.5, n = 39
#otherdata: Median = 3.5, Mean = 3.307, IQR = 1, n = 1264

#graphical comparison of data
par(mfrow=c(1,2))
barplot(table(dogdata$Rating))
barplot(table(otherdata$Rating))
boxplot(dogdata$Rating, otherdata$Rating, names=c("Dog Ratings", "Other Ratings"),
        main="Movie Ratings", ylab="Ratings")

#independent 2-group Mann-Whitney U test
wilcox.test(dogdata$Rating, otherdata$Rating)

#RESULTS:
#W = 17034, pval = 0.0008109
#There is enough evidence to support the fact that the two distributions are not equal
