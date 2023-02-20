library(tidyverse)
library(ds4ling)

test_scores_rm
select(test_scores_rm, id, test2)

select(test_scores_rm, spec:test1) #gives you a range 

select(test_scores_rm, participant = id) #rename columns 

glimpse(mtcars)

select(mtcars, mpg, cyl, disp)
#select(mtcars, am:carb)

select(mtcars, hello_world = mpg)

#filter rows of a dataframe with this function
#filter changes your dataframe vertically, never horizontally

filter(mtcars, 20 < mpg & mpg > 14)
filter(mtcars, cyl == 6)
filter(mtcars, mpg > 20 | disp < 200)

#filtering character vectors 
#filter(test_scores_rm, spec == "gl_lo")

mtcars %>% 
  select(mpg, disp) %>%
  filter(mpg > 20) %>%
  ggplot() +
  aes(x = disp, y = mpg) + 
  geom_point()




