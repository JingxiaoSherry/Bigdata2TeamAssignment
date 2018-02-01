setwd("~/Brandeis/spring2/big data2")
library(readr)
library(rpart)
library(rpart.plot)
Taxi_case <- read_csv("~/Brandeis/spring2/big data2/Taxi_case/Taxi_case.csv")

# reduce dimension
Taxi_case <- Taxi_case[ , -c(1, 5)] # drop 


set.seed(1)
train_indices <- sample(1:n, n_train)
Tax_train <- Taxi_case[train_indices, ]
Tax_test <- Taxi_case[-train_indices, ]