#--------Libraries---------

library(readr)
library(ggplot2)

#--------Data Set for Task 1-------

dataset <- read.csv("F:\\1.Masters in Data Science (Fast)\\Stats\\Assignments\\assignment no 3\\LoanApplicant_Dataset.csv")
View(dataset)


#Task 1: Import the provided "Loan Applicant Dataset" in RStudio and test if there is a relationship between two categorical variables or not. Use bar charts to summarize the relationships.

edu <- table(dataset$Education)
edu

lstatus <- table(dataset$Loan_Status)
lstatus

two_tab <- table(dataset$Loan_Status, dataset$Education)
two_tab

barplot(two_tab, legend = T, beside = T)

prop.table(lstatus)

prop.table(two_tab, 1)


