# Katelyn Hackworth 
# klhackworth@arizona.edu
# Created: 2023-05-24
# Purpose: intro data ggplot2

# Libraries: 
library(ggplot2)
library(dplyr)
library(tidyr)
library(gapminder)

# To install packages: install.packages()

# Section shortcut: Ctrl + Shift + R 

#To find information: ?()
?ggplot

# To view plot: head()

# Make a Visualization Plot 
ggplot(data = gapminder)
ggplot(data=gapminder,
       mapping=aes(x=gdpPercap, y=lifeExp, color=continent))+ geom_point()
ggplot(data=gapminder,
       mapping=aes(x=year, y=lifeExp))+ geom_point()
ggplot(gapminder, aes(x=year, y=lifeExp, group=country))+
  geom_line(aes(color=continent)) + geom_point()
ggplot(data=gapminder,
       mapping=aes(x=gdpPercap, y=lifeExp))+
  geom_point(alpha=0.5, color="pink")+scale_x_log10() + geom_smooth(method="lm", linewidth=3) 
+ geom_emoji(emoji="")
install.packages("remotes")
remotes::install_github("dill/emoGG")
emoji_search("dog")

# Visualize Americas only
gapminder %>% #ctrl+shift+m for pipe
  filter(continent=="Americas")
gapminder<-gapminder

americas<-gapminder%>%
  filter(continent=="Americas")

ggplot(americas,
       mapping=aes(x=year, y=lifeExp))+ geom_line()+ 
  facet_wrap(~country)+ labs(x="year", y="life expectancy", title="Title")