# Create a line graph showing the
# median friend count over the ages
# for each gender. Be sure to use
# the data frame you just created,
# pf.fc_by_age_gender.

# See the Instructor Notes for a hint.

# This assignment is not graded and
# will be marked as correct when you submit.

# ENTER YOUR CODE BELOW THIS LINE
# =================================================
ggplot(aes(x = age, y = friend_count), 
+        data = subset(pf, !is.na(gender))) +   geom_line(aes(color = gender), stat = 'summary', fun.y = median)