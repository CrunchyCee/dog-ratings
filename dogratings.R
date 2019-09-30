#TESTING THE DIFFERENCE BETWEEN MY TASTE IN DOG MOVIES VS MY TASTE IN ALL MOVIES

dogdata <- read.csv(file="dogratings.csv", header=TRUE)
otherdata <- read.csv(file="allbutdogratings.csv", header=TRUE)

#summary of data
summary(dogdata$Rating)
summary(otherdata$Rating)

#RESULTS:
#dogdata: Median = 3, Mean = 2.718, IQR = 1.5
#otherdata: Meadian = 3.5, Mean = 3.307, IQR = 1

#boxplot comparison of data
boxplot(dogdata$Rating, otherdata$Rating, names=c("Dog Ratings", "Other Ratings"),
        main="Movie Ratings", ylab="Ratings")

#independent 2-group Mann-Whitney U test
wilcox.test(dogdata$Rating, otherdata$Rating)

#RESULTS:
#pval = 0.0008109
#There is enough evidence to support the fact that the two distributions are not equal,
#and that taste in dog movies differs from taste in non-dog movies
