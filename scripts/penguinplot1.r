#penguinsplot1

#plot graph for anova statistical test
penguinplot1 <- ggplot(penguins) +
  aes(x = culmen_length_mm, y = log_body_mass_g, color = sex) +
  theme_linedraw() +
  geom_point() +
  geom_smooth(method = "lm") +
  labs(title = "Prediction of penguin body mass by Culmen length and sex", 
       x = "Culmen length (mm)", 
       y = "log transformed body mass of  penguins (g)") +
  labs(
    caption = str_wrap(
      "Figure 2: A linear regression plot showing the effects of the interaction between 
      culmen length and sex on body mass with 95% confidence level. The plot includes data 
      on 344 individuals from 3 species: Adelie Penguin (Pygoscelis adeliae), Gentoo penguin 
      (Pygoscelis papua) and Chinstrap penguin (Pygoscelis antarctica), which are distibuted 
      across 3 islands: Biscoe, Dream and Torgersen. The overall regression is statistically 
      significant (R2 = 0.4066, F(3, 329) = 76.81, p = <2.2e-16), with a P-value <0.05.An ANOVA 
      test revealed that the males (blue) show a significantly higher mass than the females (red) 
      with an anova P-value for the main effects of sex being <0.05 (< 2.2e-16). The positive gradients 
      also show significant main effects of culmen length on body mass with a p-value <0.05 (1.678e-08). 
      The non parralel gradients suggest a weak interaction between the 2 factors; the anova P-value for 
      the interaction (0.7925) is < 0.05 meaning the interaction is non significant and there is greater 
      certainty around the main effects of the 2 independant variables."
    )
  ) +
  theme(plot.caption = element_text(hjust = 0))

#save figure as a vector so as not to compromise resolution
pdf("figures/penguinplot1.pdf")
print(penguinplot1)
penguinplot1
dev.off()
