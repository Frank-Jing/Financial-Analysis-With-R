library(quantmod)
library(lubridate)
library(data.table)
library(xts)


ko <- read.csv("KO_1985-2010.csv")
ko.dvid <- na.omit(ko[, c(2,3)])
ko.dvid[, 1] <- ymd(ko.dvid[, 1])
ko.dvid <- xts(ko.dvid[,2], order.by = ko.dvid[,1])
chartSeries(ko.dvid)
