install.packages("tidyverse")
library(tidyverse)

install.packages("NHANES")
library(NHANES)

health.data = NHANES
view(NHANES)
?NHANES

health.data = health.data %>% select(Age, Gender, BMI, BPsysAve,TotChol)

health.data = health.data %>% filter(Age>50,)BMI>18.5

health.data = health.data%>% mutate(BMI_category=ifelse(BMI>25, "overweight","Normal""))

gender.summary = health.data%>% group_by(gender) %>% summarise(avg_BMI,na.rm=TRUE))

sum(is.na(health.data))
colsums(is.na(health.data))

health.data_no.mising = health.data %>% drop_na()


health.data = health.data %>% mutate(BPSysAve = ifelse(is.na(BPSysAve),mean(BPSysAve, na.rm = TRUE)))

health.data = health.data %>% mutate(BPSysAve) = ifelse(is.na(BPSysAve),Median(BPSysAve,na.rm = TRUE))


sapply(health.data.function(x) lenght(unique(x)))
