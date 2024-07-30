library(tidyverse)
df <- diamonds

glimpse(df)
View(df)

summary(df$price)

#Relação entre preço e o quilate
ggplot(data = df) + 
  geom_point(mapping = aes(x = price, y = carat, color = cut))

ggplot(data = df, mapping = aes(x = price, y = carat)) + 
  geom_smooth()

ggplot(data = df) +
  geom_bar(mapping = aes(x = color))


ggplot(data = df, mapping = aes(x = cut, y = table)) +
  geom_boxplot()
