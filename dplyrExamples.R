# Attach dplyr
library(dplyr)

# Attach the mtcars data set from the datasets package
data(mtcars)

# Look at the head of the data frame
head(mtcars)

# Pull out mtcars as data
data <- data.frame(mtcars)
data$car <- row.names(data)
data <- data[,c(12, 1:11)]
row.names(data) <- NULL

# Filter by cars with > 20 mpg
highMPG <- data %>% filter(mpg > 20)

# Get the car names
cars <- highMPG %>% select(car)

# Get some summary statistics
meanByTrans <- data %>% group_by(am) %>% summarise(meanMPG = mean(mpg))
