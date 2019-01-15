library(ggplot2)
library(dplyr)
data("mtcars")

mtcars %>% ggplot(aes(mpg,hp))+geom_point()

mtcars %>% 
  group_by(cyl) %>% 
  count()