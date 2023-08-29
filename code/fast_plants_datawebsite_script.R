# Creating random samples for Learning Data Science website




############################## Histograms #####################################
###############################################################################

# Set the parameters for a demonstration to visualize distributions
sample_size <- 1000
mean_value <- 24
sd_value <- 2

# Generate a demo histogram
demohist <- rnorm(sample_size, mean = mean_value, sd = sd_value)


#histogram for golden retrievers
hist(demohist, breaks=30, main = "Histogram of Golden Retriever Heights", 
     col= "lightblue", xlab= "Height in inches", ylab = "Frequency")

# Set the parameters for the golden retriever distribution
sample_size <- 30
mean_value <- 24
sd_value <- 2

# Generate the random sample
golden <- rnorm(sample_size, mean = mean_value, sd = sd_value)

#histogram for golden retrievers
hist(golden, breaks=15, main = "Histogram of Golden Retriever Heights", xlab= "Height", ylab = "Frequency")



# Example data for dog counting in lesson 1. Why Data science
dog_types <- c("Pug", "Golden Retriever")
dog_counts <- c(1, 30)

# Create a vertical bar chart
barplot(dog_counts, names.arg = dog_types, col = c("red", "blue"), main = "Dog Count by Breed", xlab = "Dog Breed",
          ylab = "Count", width=0.1)

################################ Generating Stats Test Distributions ################################
##########################################################################################

### Generate data with a z-score distribution
# Define the degrees of freedom
df <- 9

# Create a plot of the Z-distribution
curve(dt(x, df), from = -5, to = 5, main = "Z-Distribution example", xlab = "T-score", ylab = "Density",
      lwd=4)

# Create a plot of the T-distribution
curve(dt(x, df), from = -5, to = 5, main = "T-Distribution example", xlab = "T-score", ylab = "Density",
      lwd=4)

### Create a smooth F-distribution
# Define the degrees of freedom
df1 <- 5
df2 <- 10
curve(df(x, df1, df2), from = 0, to = 4, main = "F-Distribution example", xlab = "F-score", ylab = "Density",
      lwd = 4)

### Generate data with a chi-square distribution
# Define the degrees of freedom
df <- 5

# Create a plot of the chi-square distribution
curve(dchisq(x, df), from = 0, to = 20, main = "Chi-Square Distribution example", xlab = "Chi-Square value",
      ylab = "Density", lwd= 4)


# Generate data with a t-distribution
tdist <- rt(100, df = 10)
hist(tdist, breaks = 10,  main="T-score distribution", xlab="T-score", ylab = "Density", col="lightblue" )
# Overlay a normal curve
x <- seq(min(tdist), max(tdist), length = 1000)
y <- dnorm(x, mean(tdist), sd(tdist))
lines(x, y, col = "blue", lwd = 2)

#T-test
# Set random seed for reproducibility
set.seed(123)

################################# Statistical Testing #############################
###################################################################################

### T-test - 2 groups
# Generate two sets of data with a significant difference
goldens <- rnorm(30, mean = 24, sd = 2)
pugs <- rnorm(35, mean = 11.5, sd = 1.5)
breeds <-c("Golden Retreivers", "Pugs")

# Perform a two-sample t-test
t_test_result <- t.test(goldens,pugs)

# Display the t-test result
print(t_test_result)

##box plot figure
boxplot(goldens, pugs, names = breeds, main="Dog breed heights", ylab="Height in inches", 
    xlab="Breed", col = c("gold", "lightblue"))

### ANOVA - 2+ groups
# Set random seed for reproducibility
set.seed(123)

# Generate data for three groups
group1 <- rnorm(30, mean = 10, sd = 3)
group2 <- rnorm(30, mean = 15, sd = 3)
group3 <- rnorm(30, mean = 12, sd = 3)

# Combine the data into a data frame
data <- data.frame(
  value = c(group1, group2, group3),
  group = factor(rep(c("Group 1", "Group 2", "Group 3"), each = 30))
)

# Perform ANOVA test
anova_result <- aov(value ~ group, data = data)
print(summary(anova_result))

# Perform Tukey HSD post hoc test
tukey_result <- TukeyHSD(anova_result)
print(tukey_result)

### Chi-square test
# Create a contingency table
chidemo <- matrix(c(40, 10, 20, 50), ncol = 2)
colnames(data) <- c("Golden retreivers", "Pugs")
rownames(data) <- c("Catches frisbee", "Drops frisbee")

# Perform chi-square test
chi_square_result <- chisq.test(chidemo)

# Display the chi-square test result
print(chi_square_result)

### Correlations and Regression
# Install and load necessary libraries
install.packages("ggplot2")
library(ggplot2)

# Create a data frame with a single point
data <- data.frame(x = 3, y = 1)

# Create a scatter plot with a single point
ggplot(data, aes(x = x, y = y)) +
  geom_point(shape = 19, color = "blue", size=10) +
  labs(title = "Scatter Plot with a Single Point", x = "Water consumed in liters", y = "Saliva produced in liters") +
  theme_minimal()

# Set random seed for reproducibility
set.seed(123)

# Generate example data with averages
n <- 30
x <- rnorm(n, mean = 2, sd = 0.5)
y <- rnorm(n, mean = 1, sd = 0.3)

# Create a scatter plot
ggplot(data = data.frame(x, y), aes(x = x, y = y)) +
  geom_point(shape = 19, color = "blue", size=5) +
  labs(title = "Scatter Plot with 30 points", x = "Water consumed in liters", y = "Saliva produced in liters") +
  theme_minimal()


# Generate example data with a linear relationship
x <- seq(1, 10, by = 1)
y <- 2 * x + rnorm(length(x), mean = 0, sd = 2)

# Create a scatter plot
ggplot(data = data.frame(x, y), aes(x = x, y = y)) +
  geom_point(shape = 19, color = "blue") +
  geom_smooth(method = "lm", formula = y ~ x, color = "red", se = FALSE) +
  labs(title = "Linear Relationship", x = "X", y = "Y") +
  theme_minimal()

# Generate example data with a non-linear correlation
x <- seq(1, 10, by = 0.5)
y <- 2 * x^2 + rnorm(length(x), mean = 0, sd = 3)

# Create a scatter plot
ggplot(data = data.frame(x, y), aes(x = x, y = y)) +
  geom_point(shape = 19, color = "blue") +
  geom_smooth(method = "lm", formula = y ~ poly(x, 2), color = "red", se = FALSE) +
  labs(title = "Non-Linear Correlation Example", x = "X", y = "Y") +
  theme_minimal()

# Set random seed for reproducibility
set.seed(123)

# Generate example data with a correlation of 0.8
n <- 30
water_consumption <- rnorm(n, mean = 2, sd = 0.5)
saliva_production <- 0.8 * water_consumption + rnorm(n, mean = 1, sd = 0.3)

# Calculate Pearson correlation coefficient for data with r=0.8
correlation <- cor(water_consumption, saliva_production)

# Calculate linear regression model
model <- lm(saliva_production ~ water_consumption)

# Create a scatter plot
ggplot(data = data.frame(water_consumption, saliva_production), aes(x = water_consumption, y = saliva_production)) +
  geom_point(shape = 19, color = "blue", size=5) +
  geom_smooth(method = "lm", color = "red", se = FALSE) +
  geom_text(aes(x = max(water_consumption), y = max(saliva_production), label = paste("y = ", round(coef(model)[1], 2), "x + ", round(coef(model)[2], 2))), 
            hjust = 1, vjust = -0.5, color = "darkgreen") +
  labs(title = "Water consumption vs Saliva Production", x = "Water Consumption", y = "Saliva Production") +
  theme_minimal()


# Print the calculated correlation coefficient
cat("Pearson correlation coefficient:", correlation)
