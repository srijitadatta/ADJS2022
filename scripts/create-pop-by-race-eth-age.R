library(tidyverse)
library(janitor)

df <- read_csv("data/sc-est2019-alldata5.csv")
df <- df %>% clean_names()

# No suppressions (NAs) in the population estimate
df %>% filter(is.na(popestimate2019)) %>% summarise(n=n())

# sex, origin, race are all coded
# sex:    0 = Total, 1 = Male, 2 = Female
# origin: 0 = Total, 1 = Not Hispanic, 2 = Hispanic
# race:   1 = White, 2 = Black, 3 = American Indian or Alaska Native, 4 = Asian, 5 = Native Hawaiian or Pacific Islander

df2 <- df %>% 
# exclude sex breakdowns
  filter(sex == 0 & origin != 0) %>%
# recode origin and race and combine: 
  mutate(race_eth = case_when(
    origin == 1 & race == 1 ~ "Non-Hispanic White",
    origin == 1 & race == 2 ~ "Non-Hispanic Black",
    origin == 1 & race == 3 ~ "Non-Hispanic American Indian or Alaska Native",
    origin == 1 & race == 4 ~ "Non-Hispanic Asian",
    origin == 1 & race == 5 ~ "Non-Hispanic Native Hawaiian or Other Pacific Islander",
    origin == 2 ~ "Hispanic",
    TRUE ~ "Unknown"
  )) %>%
# recode age into same categories as CDC data
  mutate(age_group = case_when(
    age %in% c(0:17) ~ "0-17 years",
    age %in% c(18:29) ~ "18-29 years",
    age %in% c(30:49) ~ "30-49 years",
    age %in% c(50:64) ~ "50-64 years",
    age %in% c(65:74) ~ "65-74 years",
    age %in% c(75:84) ~ "75-84 years",
    age %in% c(85) ~ "85 years and over"
  )) %>%
# sum populations by new categories
  group_by(state, name, age_group, race_eth) %>%
  summarise(pop2019 = sum(popestimate2019))

write_csv(df2, "data/pop-by-race-eth-age.csv", na="")

