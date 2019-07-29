# scratch

library(dplyr)
library(magrittr)
library(ggplot2)
library(mikelaff)

vennGroup <- setClass(Class = "vennGroup", slots = list(name = "character", quantity = "integer"))

vg <- new("vennGroup", name = "first group", quantity = 45L)


vg2 <- vennGroup(name = "second group", quantity = 45L)





