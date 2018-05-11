# Load packages
library('ggplot2') # visualization
library('ggthemes') # visualization
library('scales') # visualization
library('dplyr') # data manipulation
library('mice') # imputation
library('rpart')
library('randomForest') # classification algorithm
# 導入資料
train <- read.csv('/Users/sophiasufas/Desktop/R/GitHub/DataScienceR/DataScienceR/week_8/task_8/titanicTrain.csv', stringsAsFactors = F,na.strings = c(""))
test  <- read.csv('/Users/sophiasufas/Desktop/R/GitHub/DataScienceR/DataScienceR/week_8/task_8/titanicQuestion.csv', stringsAsFactors = F,na.strings = c(""))
test$Survived <- NA
train.data <- train[1:1000, ]
test.data <- test[1:309, ]
train_test <- rbind(train.data,test.data)