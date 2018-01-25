# Create a scatterplot of price vs. volume (x * y * z).
# This is a very rough approximation for a diamond's volume.

# Create a new variable for volume in the diamonds data frame.
# This will be useful in a later exercise.

# Don't make any adjustments to the plot just yet.

# This assignment is not graded and
# will be marked as correct when you submit.

# ENTER YOUR CODE BELOW THIS LINE
# =================================================================
ggplot(aes(x = x*y*z, y = price), data = diamonds) +
+     xlim(0, quantile(diamonds$x * diamonds$y * diamonds$z, 0.99)) +
+     scale_y_log10() + geom_point(aes(color = clarity)) + scale_color_brewer(type = 'div')