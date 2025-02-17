install.packages("tidyverse")
library(tidyverse)

install.packages("NHANES")
library(NHANES)

health.data = NHANES
view(NHANES)
?NHANES

## dplyr usage
### select 
health.data = health.data %>% select(Age, Gender, BMI, BPsysAve,TotChol)

### Filter
health.data = health.data %>% filter(Age>50,)BMI>18.5

### Mutate
health.data = health.data%>% mutate(BMI_category=ifelse(BMI>25, "overweight","Normal""))

### summary & group_by
gender.summary = health.data%>% group_by(gender) %>% summarise(avg_BMI,na.rm=TRUE))

#Missing values
sum(is.na(health.data))
colsums(is.na(health.data))

health.data_no.mising = health.data %>% drop_na()

#impute Missing values
###Mean
health.data = health.data %>% mutate(BPSysAve = ifelse(is.na(BPSysAve),mean(BPSysAve, na.rm = TRUE)))

### Median 
health.data = health.data %>% mutate(BPSysAve) = ifelse(is.na(BPSysAve),Median(BPSysAve,na.rm = TRUE))

# cardinality
sapply(health.data.function(x) lenght(unique(x)))


##
