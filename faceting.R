# Faceting

library(ggplot2)
library(palmerpenguins)

# Faceting with facet_wrap
# Faceting by species for body mass vs. flipper length
ggplot(penguins, aes(x = body_mass_g, y = flipper_length_mm)) +
  geom_point() +
  facet_wrap(~ species)

# Faceting by cut for diamond count
ggplot(diamonds, aes(x = cut)) +
  geom_bar() +
  facet_wrap(~ cut)

# Faceting with facet_grid
# Faceting by sex and species for body mass vs. flipper length
ggplot(penguins, aes(x = body_mass_g, y = flipper_length_mm)) +
  geom_point() +
  facet_grid(sex ~ species)

# Faceting by species only
ggplot(penguins, aes(x = body_mass_g, y = flipper_length_mm)) +
  geom_point() +
  facet_grid(. ~ species)

# Faceting by sex only
ggplot(penguins, aes(x = body_mass_g, y = flipper_length_mm)) +
  geom_point() +
  facet_grid(sex ~ .)
