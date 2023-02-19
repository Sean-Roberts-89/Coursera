library(ggplot2)
library(palmerpenguins)

# Scatter plots
# Using geom_point
ggplot(penguins, aes(x = body_mass_g, y = flipper_length_mm)) +
  geom_point()

# Using geom_smooth
ggplot(penguins, aes(x = body_mass_g, y = flipper_length_mm)) +
  geom_smooth()

# Combining geom_point and geom_smooth
ggplot(penguins, aes(x = body_mass_g, y = flipper_length_mm)) +
  geom_point() +
  geom_smooth()

# Using different line types for each species
ggplot(penguins, aes(x = body_mass_g, y = flipper_length_mm, linetype = species)) +
  geom_smooth()

# Jittering points to deal with over-plotting
ggplot(penguins, aes(x = body_mass_g, y = flipper_length_mm)) +
  geom_jitter()

# Bar charts
# Using geom_bar to count occurrences
ggplot(diamonds, aes(x = cut)) +
  geom_bar()

# Adding color to bars
ggplot(diamonds, aes(x = cut, color = cut)) +
  geom_bar()

# Adding fill to bars
ggplot(diamonds, aes(x = cut, fill = cut)) +
  geom_bar()

# Using fill with a different variable to create a stacked bar chart
ggplot(diamonds, aes(x = cut, fill = clarity)) +
  geom_bar()

# To display the plots, you can call them one by one, or arrange them using the gridExtra package
# For example, to arrange the first three plots in a 1x3 grid:
library(gridExtra)
grid.arrange(
  ggplot(penguins, aes(x = body_mass_g, y = flipper_length_mm)) + geom_point(),
  ggplot(penguins, aes(x = body_mass_g, y = flipper_length_mm)) + geom_smooth(),
  ggplot(penguins, aes(x = body_mass_g, y = flipper_length_mm)) + geom_point() + geom_smooth(),
  nrow = 1
)
