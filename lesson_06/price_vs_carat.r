# Create a scatterplot of price vs carat
# and omit the top 1% of price and carat
# values.

# This assignment is not graded and
# will be marked as correct when you submit.

# ENTER YOUR CODE BELOW THIS LINE
# ========================================
ggplot(aes(x = carat, y = price), 
       data = subset(diamonds, diamonds$price < quantile(diamonds$price, 0.99) &
                       diamonds$carat < quantile(diamonds$carat, 0.99))) + 
  geom_point()