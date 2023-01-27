# Question 3.1.3
install.packages("titanic")
library(titanic)
library(ggplot2)
titanic_train
titanic_data <- titanic_train

survived <- factor(titanic_data$Survived)
survived
count <- titanic
length(titanic_data)
count <- as.numeric(count) / 1000
titanic_data <- cbind(titanic_data, count, survived)

ggplot(data = titanic_data, aes(x = Sex)) +
  geom_bar(aes(fill = survived)) +
  scale_fill_discrete(name = "How did it go?", labels = c("dead", "alive"))