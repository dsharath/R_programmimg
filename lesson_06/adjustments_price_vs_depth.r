# Change the code to make the transparency of the
# points to be 1/100 of what they are now and mark
# the x-axis every 2 units. See the instructor notes
# for two hints.

# This assignment is not graded and
# will be marked as correct when you submit.

# ALTER THE CODE BELOW THIS LINE
#============================================
ggplot(data = diamonds, aes(x = depth, y = price)) + 
  geom_point()
  
  ggplot(aes(x = volume, y = price), data = subset(diamonds,volume != 0 & volume < 800)) +
geom_point(alpha =.05) +
geom_smooth(method = 'lm')