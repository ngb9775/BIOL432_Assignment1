

# Generate data for the assignment
set.seed(123)  # Ensure reproducibility

# Randomly sample species names
species <- sample(c("Species1", "Species2", "Species3", "Species4", "Species5"), 100, replace = TRUE)

# Generate limb width and limb length
limb_width <- abs(rnorm(100, mean = 2, sd = 0.5))  
limb_length <- abs(rnorm(100, mean = 10, sd = 2))  

# Randomly assign observers
observers <- sample(c("Observer1", "Observer2", "Observer3"), 100, replace = TRUE)

# Combine into a data frame
data <- data.frame(Species = species, Limb_width = limb_width, Limb_length = limb_length, Observer = observers)

# Export to CSV
write.csv(data, "measurements.csv", row.names = FALSE)









