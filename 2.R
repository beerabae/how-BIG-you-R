
bakery <- read.csv("bakery1.csv", header = T)
names(bakery)

library(ggplot2)
install.packages("cowplot")
library(cowplot)

# default ggplot2 theme
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + 
  geom_point() +  theme_minimal_grid(12)

ggplot(iris, aes(Sepal.Length, fill = Species)) + 
  geom_density(alpha = 0.5) +
  scale_y_continuous(expand = expand_scale(mult = c(0, 0.05))) +
  theme_minimal_hgrid(12)


####ggplot너무 어려워서 아래 소스코드 주심
install.packages("esquisse")
library(esquisse)
esquisse::esquisser()
remotes::install_github("dreamRs/esquisse")

install.packages("GrapheR")
library(GrapheR)
run.GrapheR()

install.packages('ggedit')
library(ggedit)

#
p <- ggplot(bakery, aes(x=cake,y=smoothie)) + geom_point()
p2 <- ggedit(bakery)
p2



install.packages("ggThemeAssist")
library(ggThemeAssist)
ggThemeAssistGadget(p)
p


