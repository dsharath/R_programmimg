# In this problem set, you'll continue
# to explore the diamonds data set.

# Your first task is to create a
# scatterplot of price vs x.
# using the ggplot syntax.

# This assignment is not graded and
# will be marked as correct when you submit.

# ENTER YOUR CODE BELOW THIS LINE
# ===========================================
ggplot(aes(x=x**6, y=price), 
data = subset(diamonds, color == 'D' & cut == "Ideal" & clarity == "IF")) + geom_point() +
geom_smooth(method = 'lm', color = 'red')
