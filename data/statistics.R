
####| LOAD IN DATA |####

data    <- read.csv("~/Documents/MasterThesis/data/R13-all-runs-parsed.csv",sep=";");

noload  <- data[data$load == "noload",]
load    <- data[data$load == "load",]

options(scipen=999)

sum = summarySE(data, 
                measurevar="odv_oh1", 
                groupvars=c("scenario"));
print(sum)
sum = summarySE(data, 
                measurevar="pi_calc", 
                groupvars=c("scenario"));
print(sum)
sum = summarySE(data, 
                measurevar="odv_oh2", 
                groupvars=c("scenario"));
print(sum)
sum = summarySE(data, 
                measurevar="sleep", 
                groupvars=c("scenario"));
print(sum)
sum = summarySE(data, 
                measurevar="total", 
                groupvars=c("scenario"));
print(sum)