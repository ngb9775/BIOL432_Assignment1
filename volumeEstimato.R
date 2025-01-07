# Load required library
library(dplyr)

# Read the measurements file
data <- read.csv("measurements.csv")

# Calculate volume using a formula (example: V = π * (radius^2) * height)
data <- data %>%
  mutate(Volume = pi * (Limb_width / 2)^2 * Limb_length)

# Overwrite the file with the new column
write.csv(data, "measurements.csv", row.names = FALSE)
