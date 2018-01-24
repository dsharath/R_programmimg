# This programming assignment
# will not be graded, but when you
# submit your code, the assignment
# will be marked as correct. By submitting
# your code, we can add to the feedback
# messages and address common mistakes
# in the Instructor Notes.

# You can assess your work by watching
# the solution video.


# Create a new scatterplot showing friend_count_mean
# versus the new variable, age_with_months. Be sure to use
# the correct data frame (the one you create in the last
# exercise) AND subset the data to investigate
# users with ages less than 71.

# ENTER YOUR CODE BELOW THIS LINE.
# ===============================================================
 group_by(age_with_months) %.%
+ summarise(friend_count_mean= mean(friend_count),
+            friend_count_median = median(friend_count),
+             n = n()) %.%
+  arrange(age_with_months)