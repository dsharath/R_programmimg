# Create two histograms of the price variable
# and place them side by side on one output image.

# We’ve put some code below to get you started.

# The first plot should be a histogram of price
# and the second plot should transform
# the price variable using log10.

# Set appropriate bin widths for each plot.
# ggtitle() will add a title to each histogram.

# You can self-assess your work with the plots
# in the solution video.

# ALTER THE CODE BELOW THIS LINE
# ==============================================

library(gridExtra)
library(grid)
pplot1 <- qplot(data = diamonds, x =price, bandwidth =100, fill =I(#099DD9))+
  ggtitle('Price')
  
plot2 <- qplot(data = diamonds, x= price, binwidth = 0.01, fill = I('#F79420'))+
  ggtitle('Price(log10)') +
  scale_x_log10()
grid.arrange(plot3,plot2, ncol =2)