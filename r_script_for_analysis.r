library(tidyverse)
view(athletes)

# t-test
my_data<- athletes %>%
  select(sport, rating) %>%
  filter(sport %in% c("Cricket","Tennis")) %>%
  drop_na(rating) %>% 
  t.test(rating ~ sport, data = . )
 my_data
t.test(rating ~ sport, data = my_data )

#chi square test to check the goodness of the fit
library(forcats)
view(gss_cat)
#we'll be checking if the three marital status are proportionately too different
my_data2<- gss_cat %>% 
  select(marital) %>%
  filter(marital %in% c("Married",
                        "Never married",
                        "Divorced")) %>% 
  mutate(marital = fct_drop(marital))

my_table<- table(my_data2)
view(my_table)

chisq.test(my_table)

#annova test to check the effects of independent variables on the dependent variable

library(agridat)
data<-bancroft.peanut.uniformity
head(data)
annova_mod_ow<- aov(yield~row,data)
summary(annova_mod_ow)

annova_mod_tw<- aov(yield~row+col,data)
summary(annova_mod_tw)

annova_mod_blk<- aov(yield~row+col+block,data)
summary(annova_mod_blk)

annova_mod_ow<- aov(yield~row,data)
summary(annova_mod_ow)int<- aov(yield~row*col*block,data)
summary(annova_mod_int)\

library(AICcmodavg)

mods<-list(annova_mod_ow,annova_mod_tw,annova_mod_blk,annova_mod_int)
names=c("One way","Two way","blocking","interaction")
aictab(mods,names)
plot(annova_mod_int)


library(tidyverse)
library(patchwork)
library(gapminder)

data()
View(gapminder)

#single sample t test
gapminder %>%
  filter(continent == "Africa") %>%
  select(lifeExp) %>%
  t.test(mu = 50)

#two sample t test
gapminder %>%
  filter(continent %in% c("Africa","Europe")) %>%
  t.test(lifeExp ~ continent, data = .,
         alternative = "two.sided")

#one sided test for difference of means
gapminder%>%
  filter(country %in% c("Ireland","Switzerland")) %>%
  t.test(lifeExp ~ country, data = .,
         alternative = "less" ,
         conf.level = 0.95)

#paired t test
gapminder %>%
  filter(year %in% c(1957, 2007) &
         continent == "Africa") %>%
  mutate(year = factor(year, levels = c(2007, 1957))) %>%
  t.test(lifeExp ~ year, data = .,
         paired = TRUE)