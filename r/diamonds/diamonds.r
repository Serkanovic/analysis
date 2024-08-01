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


df %>%
  select(carat,depth,table)


df %>%
  filter(cut == "Ideal" & depth > 60)


df %>%
  select(carat,depth, table,cut) %>%
  filter(cut %in% c('Ideal','Premium') & carat <= .30)


df %>%
  filter(price > 1000) %>%
  arrange(desc(carat))

df %>%
  filter(color == "J") %>%
  count(cut, sort = TRUE)