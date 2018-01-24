# This programming assignment
# will not be graded, but when you
# submit your code, the assignment
# will be marked as correct. By submitting
# your code, we can add to the feedback
# messages and address common mistakes
# in the Instructor Notes.

# You can assess your work by watching
# the solution video.


# Create a scatterplot of temperature (Temp)
# vs. months (Month).

# ENTER ALL OF YOUR CODE TO CREATE THE PLOT BELOW THIS LINE.
# ===========================================================
ggplot(data = Mitchell, aes(x = Month, y= Temp))+
+  geom_point()
