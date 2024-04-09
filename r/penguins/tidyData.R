library(tidyverse)
library(palmerpenguins)
library(ggthemes)

View(penguins)
#?penguins

ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point(mapping = aes(color = species, shape = species)) +
  geom_smooth(method = "lm") +
  labs(
    title = "Body mass and flipper lenght",
    subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
    x = "Flipper length (mm)", y = "Body mass (g)",
    color = "Species", shape = "Species"
  ) +
  scale_color_colorblind()

#categorical variable
ggplot(penguins, aes(x = species))+
  geom_bar()

ggplot(penguins, aes(y = species))+
  geom_bar()

#numerical variable
ggplot(penguins, aes(x = body_mass_g))+
  geom_histogram(binwidth = 200)

#density plot
ggplot(penguins, aes(x = body_mass_g))+
  geom_density()

#boxplot
ggplot(penguins, aes(x = species, y = body_mass_g))+
  geom_boxplot()

#density plot
ggplot(penguins, aes(x = body_mass_g, fill = species))+
  geom_density(linewidth = 0.75)

ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g))+
  geom_point(aes(color = species, shape = species))+
  facet_wrap(~island)

ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g))+
  geom_point()
ggsave(filename = "penguin-plot.png")