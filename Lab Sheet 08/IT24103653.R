setwd("C:\\Users\\IT24103653\\Desktop\\IT24103653")

#Question 01
#laptop bag weights
Weight <- c(2.46, 2.45, 2.47, 2.71, 2.46, 2.05, 2.6, 2.42, 2.43, 2.53,
             2.57, 2.85, 2.7, 2.53, 2.28, 2.2, 2.57, 2.89, 2.51, 2.47,
             2.66, 2.06, 2.41, 2.65, 2.76, 2.43, 2.61, 2.57, 2.73, 2.17,
             2.67, 2.05, 1.71, 2.32, 2.23, 2.76, 2.7, 2.13, 2.75, 2.2)

# Population mean and standard deviation
pop_mean <- mean(Weight)
pop_sd <- sd(Weight)


#Question 02
# For reproducibility
set.seed(123)  

# Create a matrix with 6 rows (sample size), 25 columns (samples)
samples <- matrix(nrow = 6, ncol = 25)

# Fill matrix with random samples
for (i in 1:25) {
  samples[, i] <- sample(Weight, 6, replace = TRUE)
}

# Sample means and standard deviations
sample_means <- apply(samples, 2, mean)
sample_sds <- apply(samples, 2, sd)

# Create a table of results
sample_stats <- data.frame(
  Sample = 1:25,
  Mean = round(sample_means, 4),
  SD = round(sample_sds, 4)
)

print(sample_stats)

pop_mean
pop_sd


#Question 03
# From previous steps
sample_mean_of_means <- mean(sample_means)
sample_sd_of_means <- sd(sample_means)

# Population SD from Q1 was:
# pop_sd = 0.2169 (already calculated)

# Sample size
n <- 6

# Theoretical SD of sample means
theoretical_sd_of_means <- pop_sd / sqrt(n)

# Print all
sample_mean_of_means
sample_sd_of_means
theoretical_sd_of_means
