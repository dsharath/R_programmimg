# Create a scatterplot of price vs time.

# This will be an example of a time series plot.

# Resolve overplotting issues by using
# techniques you learned in Lesson 4.

# What are some things that you notice?

# ENTER YOUR CODE BELOW THIS LINE
# ================================================
ggplot(aes(x= time, y= price), data = yogurt)+
  geom_jitter(alpha= 1/4, shape =21, fill = I('#F79420'))