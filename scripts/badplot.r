#plots

badplot <-
  ggplot(penguins, aes(x = island, y = body_mass_g, fill = island)) +
  theme_linedraw() +
  annotation_raster(
    pic,
    xmin = -Inf,
    xmax = Inf,
    ymin = -Inf,
    ymax = Inf
  ) +
  geom_violin() +
  theme_dark() +
  stat_summary(
    fun.y = "mean",
    color = "green",
    shape = 11,
    size = 3
  ) +
  labs(title = "Culmen length and sex as predictors of body mass", x = "Culmen length (mm)", y = "(log transformed) body mass of  penguins (g)") +
  labs(
    caption = str_wrap(
      "Figure 1: A violin plot showing the effect of different island locations on Body mass of penguins. The plot includes data from both males and females from 3 species: Adelie Penguin (Pygoscelis adeliae), Gentoo penguin (Pygoscelis papua) and Chinstrap penguin (Pygoscelis antarctica). The green star indicates the mean value for log transformed body mass on each isalnd. (The photo in the background is of an adelie.)  "
    )
  ) +
  theme(plot.caption = element_text(hjust = 0))



