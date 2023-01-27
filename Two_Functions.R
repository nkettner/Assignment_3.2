# Two Functions 

library(tidyverse)

# First one 

remind_me <- function() {
  groceries <- c("Milk", "Bread", "Apples", "Beer")
  print(groceries)
}

remind_me()


# Second one 

library(curl)

cheat <- function(question_num){
  if(question_num == 1){
    url <- "https://raw.githubusercontent.com/nkettner/Assignment_3.2/main/3.1.1.R"
    download.file(url, destfile = "Q3.1.1")
    x <- readLines("Q3.1.1")
    print(x)
  }
  else if(question_num == 2){
    url <- "https://raw.githubusercontent.com/nkettner/Assignment_3.2/main/3.1.2.R"
    download.file(url, destfile = "Q3.1.2")
    y <- readLines("Q3.1.2")
    print(y)
  }
  else if (question_num == 3){
    url <- "https://raw.githubusercontent.com/nkettner/Assignment_3.2/main/3.1.3.R"
    download.file(url, destfile = "Q3.1.3")
    z <- readLines("Q3.1.3")
    print(z)
  }
}