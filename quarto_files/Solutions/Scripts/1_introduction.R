# Step 1: Creating a Sequence
# Create a sequence of numbers that are multiples of 5, from 0 to 50.
# Use the seq() function to generate the sequence and assign it to an object named 'sequence'.
sequence <- seq(from = 0, to = 50, by = 5)

# Print the sequence to verify it was created correctly.
print(sequence) # Output: [1]  5 10 15 20 25 30 35 40 45 50

# Step 2: Compute the Mean
# Calculate the mean of the sequence created above using the mean() function.
mean_sequence <- mean(sequence)

# Print the mean to verify the calculation.
print(mean_sequence) # Output: [1] 27.5


# Step 3: Logical Test and Conditional Computation
# Check if all elements in the sequence are greater than zero.
# Use the ">" operator and assign the result to a new object named 'logical_test'.
logical_test <- sequence > 0

# Print the logical test result to see which elements satisfy the condition.
print(logical_test) # Output: [1] FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE

# Compute the mean of the logical test result.
# This will treat TRUE as 1 and FALSE as 0.
mean_logical <- mean(logical_test)

# Print the mean of the logical test result.
print(mean_logical) # Output: [1] 0.9090909
