
#Generate data
set.seed(123)
species <- sample(c("Species1", "Species2", "Species3", "Species4", "Species5"), 100, replace = TRUE)
limb_width <- rnorm(100, mean = 2, sd = 0.5) 
limb_width <- abs(limb_width)
limb_length <- rnorm(100, mean = 10, sd = 2)
limb_length <- abs(limb_length)
observers <- sample(c("Observer1", "Observer2", "Observer3"), 100, replace = TRUE)

#Create data frame
data <- data.frame(Species = species, Limb_width = limb_width, Limb_length = limb_length, Observer = observers)

#Export to CSV
write.csv(data, "measurements.csv", row.names = FALSE)



