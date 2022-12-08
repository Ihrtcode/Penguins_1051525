#analysis

#log transform penguin body mass to better fit assumption of normlaity
penguins$log_body_mass_g <- log(penguins$body_mass_g) 


#create linear model
mod1 <- lm(log_body_mass_g ~ culmen_length_mm * sex, penguins)

summary(mod1)
#run ANOVA on linear model
anova(mod1)
#analysis in figure legend

#check diagnostic plots to examine the assumptions of normality and homogeneity of variance

analysis1 <- penguins %>% ggplot(aes(sample = log_body_mass_g)) +
  stat_qq() +
  stat_qq_line()+
  labs(title = "QQ plot")

analysis2 <- gg_scalelocation(mod1)


  
  