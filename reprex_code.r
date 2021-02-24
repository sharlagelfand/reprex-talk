# Example one

library(dplyr)

tibble(date = "2020-01-01") %>%
  mutate(year = case_when(
    date <= "2020-12-31" & date >= "2020-01-01" ~ 2020,
    is.na(date) ~ NA
  ))

# Example two

library(ggplot2)

ggplot(mtcars, aes(x = mpg, y = disp, colour = "blue")) +
  geom_point()

ggplot(mtcars, aes(x = mpg, y = disp, fill = "purple")) +
  geom_col()
