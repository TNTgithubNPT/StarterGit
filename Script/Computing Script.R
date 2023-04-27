# This computing script calculates work done in the Questions script 

# Bring answers given from questions script in memory
source("Script/Questions.R")


#Define variables to setup a nice table summary
Questions <- c("Q1","Q2")

#pull through answers from questions script
Answers <- c(A1,A2)


#Check answers were correct and define the check

C1 <- exists("A1")


C2 <- is.character(A2)

Output <- data.frame("questions"=Questions, "answers"=Answers,"Checks" = as.logical(c(C1,C2)) )


write.csv(x = Output,file ="Output/output.csv")