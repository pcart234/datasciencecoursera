---
title: "ML Project-wk-4"
author: "Phillip"
date: "9/3/2020"
output: html_document
---



## Executive Summary:

In this project, we will use data from accelerometers on the belt, forearm, arm, and dumbell of 6 participants.  Accelerometers have been widely accepted as useful and practical sensors for wearable devices to measure and assess physical activity. We will observe some of these wearable accelerometry-based motion detectors in action.
Using devices such as Jawbone Up, Nike FuelBand, and Fitbit it is now possible to collect a large amount of data about personal activity relatively inexpensively. These type of devices are part of the quantified self movement to improve the individual's health. 


## We are loading the necessary libraries:

##library(dplyr)
##library(ggplot2)
##library(tidyverse)
##library(lubridate)

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
library(dplyr)
library(ggplot2)
library(tidyverse)
library(lubridate)

```




## We are loading and preprocessing the data.

```{r, echo=TRUE}

P_Train <- read.csv("pmi-training.csv", header = TRUE, na.strings = "NA")
P_Test <- read.csv("pmi-testing.csv", header = TRUE, na.strings = "NA")


```


## we are working with the analysis of the selected variables:  Use data from accelerometers on the belt, forearm, arm, and dumbell of 6 participants. We will observe the results from their performance of lifting the barbell lifts correctly and incorrectly in 5 different ways.

## We are displaying a summary of the data:

```{r echo=TRUE}


My_Ex <-  P_Train %>% select(accel_belt_y, accel_dumbbell_x)


summary(My_Ex)
```



```{r echo= TRUE}
My_Ex1 <-  P_Train %>% select(accel_arm_x, accel_arm_z)

summary(My_Ex1)
```



```{r echo= TRUE}

My_Ex2  <-  P_Train %>% select(accel_belt_z, accel_dumbbell_y)

summary(My_Ex2)
```



## We will start the process of building the model and showing the use of cross validation and expected sampling error.

```{r echo= TRUE}

My_model <- lm(My_Ex)

My_model


```



```{r echo= TRUE}

My_model1 <- lm(My_Ex1)


My_model1

```



```{r echo= TRUE}

My_model2 <- lm(My_Ex2)

My_model2

```


## We are using the t.test to analyze the statistical results.




```{r echo= TRUE}
My_TT <- t.test(My_Ex, data = P_Train)

My_TT

## One Sample t-test

```

## BoxPlot 1
```{r echo= TRUE}
My_TT <- t.test(My_Ex, data = P_Train)


boxplot(My_Ex, data = P_Train, col = "blue", ylab = "Accelerometer Readings")


```


```{r echo= TRUE}
My_TT1 <- t.test(My_Ex1, data = P_Train)

My_TT1

## One Sample t-test

```

## Boxplot 2

```{r echo= TRUE}
My_TT1 <- t.test(My_Ex1, data = P_Train)

boxplot(My_Ex1, data = P_Train, col = "blue", ylab = "Accelerometer Readings")

```


```{r echo= TRUE}
My_TT2 <- t.test(My_Ex2, data = P_Train)

My_TT2

## One Sample t-test

```
## Boxplot 2
```{r echo= TRUE}
My_TT2 <- t.test(My_Ex2, data = P_Train)


boxplot(My_Ex2, data = P_Train, col = "blue", ylab = "Accelerometer Readings")

```

conclusion:

In this project, we showed the data from accelerometers on the belt, forearm, arm, and dumbell of participants.  Accelerometers have shown to focus individuals attention increase movement toward a healter lifestyle. 

