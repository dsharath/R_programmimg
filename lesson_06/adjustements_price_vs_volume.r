# Subset the data to exclude diamonds with a volume
# greater than or equal to 800. Also, exclude diamonds
# with a volume of 0. Adjust the transparency of the
# points and add a linear model to the plot. (See the
# Instructor Notes or look up the documentation of
# geom_smooth() for more details about smoothers.)

# We encourage you to think about this next question and
# to post your thoughts in the discussion section.

# Do you think this would be a useful model to estimate
# the price of diamonds? Why or why not?

# This assignment is not graded and
# will be marked as correct when you submit.

# ENTER YOUR CODE BELOW THIS LINE
# ========================================
ggplot(data = subset(diamonds, volume > 0 & volume <= 800),
       aes(x = volume, y = price)) +
  geom_point(alpha = 1/10) +
  geom_smooth(method = "lm", formula = y ~ x, size = 1) +
  geom_smooth(method = "lm", formula = y ~ poly(x,2), size = 1, color = "green") +
  geom_smooth(method = "lm", formula = y ~ poly(x,3), size = .5, color = "pink") +
  geom_smooth(method = "gam", formula = y ~ s(x), size = .5, color = "violet") +
  geom_smooth(method = "gam", formula = y ~ s(x, k = 3), size = .05, color = "red") +
  coord_cartesian(ylim = c(0,20000))