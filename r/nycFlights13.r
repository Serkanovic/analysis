library(nycflights13)
library(tidyverse)
View(flights)
glimpse(flights)


flights |>
  filter(dest == "IAH") |>
  group_by(year,month, day) |>
  summarize(
    arr_delay = mean(arr_delay, na.rm = TRUE)
)

flights |>
  filter(dep_delay > 120)

flights |>
  filter(month < 3 & arr_time >= 500)

flights |>
  arrange(year, month, day, dep_time)

flights |>
  distinct(origin,dest)

flights |>
  count(origin, dest, sort = TRUE)

flights |>
  filter(arr_delay >= 120 & dest == "IAH")

view(flights |>
  distinct(year,month,day))

flights |>
  mutate(
    gain = dep_delay - arr_delay,
    speed = distance / air_time * 60,
    .after = day
  )


flights |>
  select(year,month,day)

flights |>
  filter(dest == "IAH") |>
  mutate(speed = distance / air_time * 60) |>
  select(year:day, dep_time, carrier, flight, speed) |>
  arrange(desc(speed))

flights |>
  group_by(month) |>
  summarize(
    delay = mean(dep_delay, na.rm = TRUE),
    n = n()
  )
