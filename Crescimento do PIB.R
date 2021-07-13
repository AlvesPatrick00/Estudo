setwd(getwd())
library(WDI)
library(plotly)
library(dplyr)
df <- data.frame(
  WDI(country = c("BR"),
      indicator = "NY.GDP.MKTP.KD.ZG",
      start = 1980,
      end = 2018,
      extra = FALSE))

df2 <- data.frame(
  WDI(country = c("WLD"),
      indicator = "NY.GDP.MKTP.KD.ZG",
      start = 1980,
      end = 2018,
      extra = FALSE))
Média_BR <- mean(df$NY.GDP.MKTP.KD.ZG)
format(round(Média_BR, 2), nsmall = 2)

Média_mundo <- mean(df2$NY.GDP.MKTP.KD.ZG)
format(round(Média_mundo, 2), nsmall = 2)