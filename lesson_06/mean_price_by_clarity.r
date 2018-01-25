# Use the function dplyr package
# to create a new data frame containing
# info on diamonds by clarity.

# Name the data frame diamondsByClarity

# The data frame should contain the following
# variables in this order.

#       (1) mean_price
#       (2) median_price
#       (3) min_price
#       (4) max_price
#       (5) n

# where n is the number of diamonds in each
# level of clarity.

# This assignment WILL BE automatically
# graded!

# DO NOT ALTER THE NEXT THREE LINES OF CODE.
# ======================================================
suppressMessages(library(ggplot2))
suppressMessages(library(dplyr))
data(diamonds)

# ENTER YOUR CODE BELOW THIS LINE
# ======================================================
clarity_group<-group_by(diamonds,clarity)
diamondsByClarity<-summarise(clarity_group,mean_price=mean(price),median_price=median(as.numeric(price)),min_price=min(price),
                             max_price=max(price),
                             n=n())
diamondsByClarity<-arrange(diamondsByClarity, clarity)
head(diamondsByClarity,8)