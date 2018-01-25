# Create a simple scatter plot of price vs depth.

# This assignment is not graded and
# will be marked as correct when you submit.

# ENTER YOUR CODE BELOW THIS LINE
#==================================================
ggplot(aes(x=depth,y=price),data=diamonds)+ geom_point(alpha=1/100)+
scale_x_continuous(breaks=seq(0,10,2))