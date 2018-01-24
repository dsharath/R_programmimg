# This programming assignment
# will not be graded, but when you
# submit your code, the assignment
# will be marked as correct. By submitting
# your code, we can add to the feedback
# messages and address common mistakes
# in the Instructor Notes.

# You can assess your work by watching
# the solution video.


# Plot mean friend count vs. age using a line graph.
# Be sure you use the correct variable names
# and the correct data frame. You should be working
# with the new data frame created from the dplyr
# functions. The data frame is called 'pf.fc_by_age'.

# Use geom_line() rather than geom_point to create
# the plot. You can look up the documentation for
# geom_line() to see what it does.

# ENTER ALL OF YOUR CODE TO CREATE THE PLOT BELOW THIS LINE.
# ===========================================================
ggplot(data = pf.fc_by_age) +
  geom_line(aes(x = age, y = friend_count_mean), color = I("blue"), alpha = 0.3) +
  geom_smooth(aes(x = age, y = friend_count_mean), color = I("red"), size = 1.3) +
  scale_x_continuous(limits = c(13,90), breaks = seq(15,90,5))+
  xlab('Age')+
  ylab('Friend Count (mean)') +
  coord_trans(y = "sqrt")

ggsave('FC_mean_age.jpg')
