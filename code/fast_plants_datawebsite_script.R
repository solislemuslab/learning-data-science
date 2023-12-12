# Creating random samples for Learning Data Science website
install.packages("ggplot2")
install.packages("vcd")
install.packages("report")
library(ggplot2)
library(vcd)
library(report)
version

########################################################################
# Lesson 1: I've never seen a dog
# Why Data science?

### Example data for dog counting in lesson 1. Why Data science
dog_types <- c("Pug", "Golden Retriever")
dog_counts <- c(1, 30)

# Create a vertical bar chart
barplot(dog_counts, names.arg = dog_types, col = c("red", "blue"), main = "Dog Count by Breed", xlab = "Dog Breed",
          ylab = "Count", width=0.1)


########################################################################
# Lesson 3: Finding middle (and average) ground
# Averages and Medians

### Example data for averages and medians
# Set random seed for reproducibility
set.seed(123)

# Generate example data with averages
n <- 30
x <- rnorm(n, mean = 2, sd = 0.5)
y <- rnorm(n, mean = 1, sd = 0.3)

# Create a data frame with test scores for averages examples
test_scores <- c(85, 92, 78, 90, 88)
freq <- c(1)
average <- sum(test_scores) / length(test_scores)

# Create a dot plot for averages examples

ggplot(data = data.frame(test_scores), aes(x = test_scores)) +
  geom_dotplot(binwidth = 2, stackdir = "center", fill = "blue", color = "black") +
  geom_vline(xintercept = average, color = "red", linetype = "dashed", size = 1) +
  labs(title = "Dot Plot of Test Scores", x = "Test Scores") +
  annotate("text", x = average + 1, y = 0.5, label = paste("Average =", round(average, 1)), color = "red") +
  theme_minimal() +
  theme(axis.title.y = element_blank(),  # Remove y-axis title
        axis.text.y = element_blank(),   # Remove y-axis labels
        axis.ticks.y = element_blank())  # Remove y-axis ticks

# Create example datas et for median visualization
measurements <- c(19, 22, 20, 18, 23, 17, 21, 24, 25, 30,
                  27, 26, 29, 28, 22, 24, 20, 21, 23, 22,
                  21, 20, 23, 23, 18, 24, 19, 20, 23, 22)

# Calculate median
sorted_measurements <- sort(measurements)
median_value <- mean(sorted_measurements[15:16])

# Create a dot plot for medians
ggplot(data = data.frame(measurements), aes(x = measurements)) +
  geom_dotplot(binwidth = 1, stackdir = "center", fill = "blue", color = "black") +
  geom_segment(aes(x = median_value, xend = median_value, y = 0, yend = 1), color = "red", size = 1) +
  geom_text(aes(x = median_value + 0.5, y = 1.2, label = paste("Median =", round(median_value, 1))), color = "red") +
  labs(title = "Dot Plot with Median Calculation", x = "Measurements", y = "") +
  theme_minimal() +
  theme(axis.title.y = element_blank(),  # Remove y-axis title
        axis.text.y = element_blank(),   # Remove y-axis labels
        axis.ticks.y = element_blank())  # Remove y-axis ticks



########################################################################
# Lesson 4: Seeing (data) is believing (data)
# Variance and Distributions

### Histograms Creation

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


#######################################################################################
# Lesson 5: Catching Z's
# Probability and Z-scores

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

###################################################################################################
# Lesson 7: Things might be different now
# Comparing 2 groups (t-tests)

###T-test for 2 groups comparing a continuous variable

# Set random seed for reproducibility
set.seed(123)

# Generate two sets of data with a significant difference
goldens <- rnorm(30, mean = 24, sd = 2)
pugs <- rnorm(35, mean = 11.5, sd = 1.5)
breeds <-c("Golden Retreivers", "Pugs")

# Perform a two-sample t-test
t_test_result <- t.test(goldens,pugs)

# Display the t-test result
print(t_test_result)
report(t_test_result)

# box plot figure
boxplot(goldens, pugs, names = breeds, main="Dog breed heights", ylab="Height in inches", 
    xlab="Breed", col = c("gold", "lightblue"))

# Set up the plot
par(mfrow=c(1,1)) # Ensure a single plot
xlim_range <- range(c(goldens, pugs))
ylim_range <- c(0, max(density(goldens)$y, density(pugs)$y))

# Plot histogram for Golden Retrievers
hist(goldens, probability = TRUE, col = rgb(1, 0.84, 0, 0.5), # semi-transparent gold color
     xlim = xlim_range, ylim = ylim_range, 
     main = "Golden retreiver and pug histograms with Density Curves", 
     xlab = "Height in inches", ylab = "Density")

# Plot histogram for Pugs
hist(pugs, probability = TRUE, col = rgb(0.53, 0.81, 0.98, 0.5), # semi-transparent light blue color
     xlim = xlim_range, ylim = ylim_range, add = TRUE)

# Add density curves
lines(density(goldens), col = "darkgoldenrod3", lwd = 2)
lines(density(pugs), col = "dodgerblue3", lwd = 2)

# Add legend
legend("topright", legend = breeds, fill = c("gold", "lightblue"), 
       col = c("darkgoldenrod3", "dodgerblue3"), lwd = 2)


#############################################################################################
# Lesson 8: More things might be different now
# Comparing 2+ groups (ANOVA)

### ANOVA - 2+ groups comparing a continuous variable

# Set random seed for reproducibility
set.seed(123)

# Generate data height data for three groups
goldens <- rnorm(30, mean = 24, sd = 2)
pugs <- rnorm(30, mean = 11.5, sd = 1.5)
saints <- rnorm(30, mean = 28, sd = 2)
breeds <-c("Golden Retreivers", "Pugs", "Saints")

# Combine the data into a data frame
data <- data.frame(
  value = c(goldens, pugs, saints),
  group = factor(rep(c("Golden Retreivers", "Pugs", "Saint Bernards"), each = 30))
)
report(data)
as.data.frame(report(data))

# Set up the plot
par(mfrow=c(1,1)) # Ensure a single plot
xlim_range <- range(c(goldens, pugs, saints))
ylim_range <- c(0, max(max(density(goldens)$y, density(pugs)$y), density(saints)$y))

# Plot histogram for Golden Retrievers
hist(goldens, probability = TRUE, col = rgb(1, 0.84, 0, 0.5), # semi-transparent gold color
     xlim = xlim_range, ylim = ylim_range, 
     main = "Dog breed histograms with Density Curves", 
     xlab = "Height in inches", ylab = "Density")

# Plot histogram for Pugs
hist(pugs, probability = TRUE, col = rgb(0.53, 0.81, 0.98, 0.5), # semi-transparent light blue color
     xlim = xlim_range, ylim = ylim_range, add = TRUE)

# Plot histogram for Saints
hist(saints, probability = TRUE, col = rgb(0.8, 0.4, 0.6, 0.5), # semi-transparent purple color
     xlim = xlim_range, ylim = ylim_range, add = TRUE)

# Add density curves
lines(density(goldens), col = "darkgoldenrod3", lwd = 2)
lines(density(pugs), col = "dodgerblue3", lwd = 2)
lines(density(saints), col = "darkmagenta", lwd = 2)

# Add legend
legend("topright", legend = breeds, fill = c("gold", "lightblue", "orchid"), 
       col = c("darkgoldenrod3", "dodgerblue3", "darkmagenta"), lwd = 2)



# Perform ANOVA test
anova_result <- aov(value ~ group, data = data)
print(summary(anova_result))

print(report(anova_result))

# Perform Tukey HSD post hoc test
tukey_result <- TukeyHSD(anova_result)
print(tukey_result)



#############################################################################################
# Lesson 9: X2 marks the spot
# Comparing frequencies (Chi-square)

### Chi-square test for 2+ groups comparing a categorical variable

# Create a contingency table
chidemo <- matrix(c(52, 8, 12, 48, 18, 42), ncol = 3)
colnames(chidemo) <- c("Golden retrievers", "Pugs", "Saint Bernards")
rownames(chidemo) <- c("Catches frisbee", "Drops frisbee")

# Perform chi-square test
chi_square_result <- chisq.test(chidemo)

# Display the chi-square test result
print(chi_square_result)

#display the data in table form
chidemo

# Define custom colors for each group
custom_colors <- c("Golden Retrievers" = "gold", "Pugs" = "lightblue", "Saint Bernards" = "magenta")


options(repr.plot.width = 15) 

#create a mosaic plot
mosaic(chidemo, shade = TRUE, legend = FALSE, color = custom_colors,
       main = "Mosaic Plot of Frisbee Catch/Drop by Dog Breeds")


#############################################################################################
# Lesson 10: What goes up must go down, or up, or nowhere
# Correlations

### Correlations and Regression

# Create a data frame with a single point
data <- data.frame(x = 3, y = 1)

# Create a scatter plot with a single point
ggplot(data, aes(x = x, y = y)) +
  geom_point(shape = 19, color = "blue", size=10) +
  labs(title = "Scatter Plot with a Single Point", x = "Water consumed in liters", y = "Saliva produced in liters") +
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

### Creating another scatter plot with a regression line
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

#############################################################################################
# Lesson 11: With great power comes maybe good effect size
# Statistics in the real world

### Create bimodal distrubution

# Generate random bimodal data
bimodal_data <- c(rnorm(100, mean = 30, sd = 5), rnorm(100, mean = 70, sd = 10))

# Create a data frame for plotting
df <- data.frame(x = bimodal_data)

# Create a histogram to visualize the bimodal distribution
ggplot(data = df, aes(x = x)) +
  geom_histogram(binwidth = 5, fill = "lightblue", color = "black") +
  labs(title = "Income distribution", x = "Income in thousands", y = "Frequency") +
  theme_minimal()

