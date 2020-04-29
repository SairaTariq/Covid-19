install.packages("coronavirus")
library(coronavirus)

data("coronavirus")

str(coronavirus)

install.packages("dplyr")

library(diplyr)

install.packages("ggplot2")
library(ggplot2)

head(coronavirus)

names(coronavirus)

ggplot(coronavirus,aes(x=Country.Region))+geom_bar()+
  ggtitle("Worldwide Cases")+
  xlab("Countries")+ ylab("No. of cases")+
  ylim(0,200)+
  theme(panel.background=(element_rect(color="blue")), (element_blank()))

ggplot(coronavirus,aes(x=Country.Region , y= cases , color=type))+geom_point()+
  ggtitle(" Cases by Countries")+
  xlab("Countries")+ ylab("No. of cases")+
  ylim(0,100)+
  theme(panel.background=(element_rect(color="red")), (element_blank()))


ggplot(coronavirus,aes(x=date , y = cases))+geom_smooth(se=F)+
  ggtitle("Time Series")+
  xlab("Cases")+ ylab("Date")+
  theme(panel.background=(element_rect(color="black")), (element_blank()))

