# Q3.2.2

library(ggplot2)
library(ggridges)
library(viridis)
library(hrbrthemes)

make_art <- function(seed){
  set.seed(seed)
  temp <- rnorm(15, 50, 1)
  month <- c(rep("J", 5), rep("F", 5), rep("M", 5))
  basic <- data.frame(temp, month)
  ggplot(basic, aes(x = temp, y = month)) +
    geom_density_ridges_gradient(scale = 3, rel_min_height = 0.01) +
    scale_fill_viridis(option = "C") +
    theme(legend.position="none",
          axis.title.x = element_blank(),
          axis.title.y = element_blank(), 
          axis.text.x = element_blank(),
          axis.text.y = element_blank(),
          line = element_blank(), 
          panel.background = element_rect(fill = "pink")) 
}

make_art(123)
