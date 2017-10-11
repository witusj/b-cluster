library(tidyverse)

Cats<-c("Wel",NA,"Wel","Niet","Niet","Niet","Wel","Niet")

Dogs<-c("Niet",NA,"Wel","Wel","Niet","Wel","Niet","Wel")

Fish<-c("Niet",NA,"Wel","Niet","Niet","Niet","Wel","Wel")

Pets<-data.frame(Cats,Dogs,Fish)
Pets

Pets %>% 
  gather(animal, type, na.rm = TRUE) %>% 
  group_by(animal) %>% 
  summarize(count = n()) %>% 
  mutate(percentage = count / sum(count))