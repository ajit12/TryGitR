rm(list=ls())
library(fmsb)
library("XLConnect")
#>>>>>>>>>>>>>>>>harvest and plot 2012 trinity data sets<<<<<<<<<<<<<<<<<<<<<<<<<<<<
# read 201213 tab data from worksheet
data201213all = readWorksheetFromFile("/Users/ajitsharma/Dropbox/1.ICICI-Trinity/201213onepage.xlsx", sheet = "201213", startRow = 0, endRow = 0,startCol = 0, endCol = 0)

#Convert data sets to numeric
data201213all <- as.data.frame(sapply(data201213all, as.numeric))  # Convert to numeric
names(data201213all)
summary(data201213all)

#Plot the total score of ideas
plot(data201213all$FinalStage, data201213all$TotalScore, xlab = "Stage", ylab = "Total Score", type = "n") # first only create the plot
title(main = "2012n13 Ideas", col = "Red")
#legend(x = "bottomright", title="Stage Definitions", legend = rate"0:Weeded out, 1:Panel Review, 2:Presented,3:Prototyped, 4:Awarded")
points(jitter(data201213all$FinalStage[data201213all$FinalStage == 1],factor=2), data201213all$TotalScore[data201213all$FinalStage == 1], col = "blue") # here we add data that were sent to panel.
points(jitter(data201213all$FinalStage[data201213all$PanelDecision == 1],factor=.5), data201213all$TotalScore[data201213all$PanelDecision == 1], col = "black") # here we add data that were sent to panel.
points(jitter(data201213all$FinalStage[data201213all$SrMgtPanelDecision == 1],factor=.5), data201213all$TotalScore[data201213all$SrMgtPanelDecision == 1], col = "red") # here we add data that were sent to panel.

#Plot Components of total score for ideas
par(mfrow=c(3,2),col.main='red', col.sub='blue')
#Plot the total score of ideas
plot(data201213all$FinalStage, data201213all$TotalScore, xlab = "Stage", ylab = "Total Score", type = "n") # first only create the plot
title(main = "2012n13 Ideas", col = "Red")
points(jitter(data201213all$FinalStage[data201213all$FinalStage == 1],factor=2), data201213all$TotalScore[data201213all$FinalStage == 1], col = "blue") # here we add data that were sent to panel.
points(jitter(data201213all$FinalStage[data201213all$PanelDecision == 1],factor=.5), data201213all$TotalScore[data201213all$PanelDecision == 1], col = "black") # here we add data that were sent to panel.
points(jitter(data201213all$FinalStage[data201213all$SrMgtPanelDecision == 1],factor=.5), data201213all$TotalScore[data201213all$SrMgtPanelDecision == 1], col = "red") # here we add data that were sent to panel.
#Plot Scalability for ideas
plot(data201213all$FinalStage, data201213all$Scalability, xlab = "Stage", ylab = "Scalability", type = "n") # first only create the plot
title(main = "2012n13 Ideas", col = "Red")
points(jitter(data201213all$FinalStage[data201213all$FinalStage == 1],factor=2), data201213all$Scalability[data201213all$FinalStage == 1], col = "blue") # here we add data that were sent to panel.
points(jitter(data201213all$FinalStage[data201213all$PanelDecision == 1],factor=.5), data201213all$Scalability[data201213all$PanelDecision == 1], col = "black") # here we add data that were sent to panel.
points(jitter(data201213all$FinalStage[data201213all$SrMgtPanelDecision == 1],factor=.5), data201213all$Scalability[data201213all$SrMgtPanelDecision == 1], col = "red") # here we add data that were sent to panel.
#Plot Uniqueness for ideas
plot(data201213all$FinalStage, data201213all$Unique, xlab = "Stage", ylab = "Uniqueness", type = "n") # first only create the plot
title(main = "2012n13 Ideas", col = "Red")
points(jitter(data201213all$FinalStage[data201213all$FinalStage == 1],factor=2), data201213all$Unique[data201213all$FinalStage == 1], col = "blue") # here we add data that were sent to panel.
points(jitter(data201213all$FinalStage[data201213all$PanelDecision == 1],factor=.5), data201213all$Unique[data201213all$PanelDecision == 1], col = "black") # here we add data that were sent to panel.
points(jitter(data201213all$FinalStage[data201213all$SrMgtPanelDecision == 1],factor=.5), data201213all$Unique[data201213all$SrMgtPanelDecision == 1], col = "red") # here we add data that were sent to panel.
#Plot Benefit 2 Bank for ideas
plot(data201213all$FinalStage, data201213all$B2Bank, xlab = "Stage", ylab = "Benifet2Bank", type = "n") # first only create the plot
title(main = "2012n13 Ideas", col = "Red")
points(jitter(data201213all$FinalStage[data201213all$FinalStage == 1],factor=2), data201213all$B2Bank[data201213all$FinalStage == 1], col = "blue") # here we add data that were sent to panel.
points(jitter(data201213all$FinalStage[data201213all$PanelDecision == 1],factor=.5), data201213all$B2Bank[data201213all$PanelDecision == 1], col = "black") # here we add data that were sent to panel.
points(jitter(data201213all$FinalStage[data201213all$SrMgtPanelDecision == 1],factor=.5), data201213all$B2Bank[data201213all$SrMgtPanelDecision == 1], col = "red") # here we add data that were sent to panel.
#Plot Benefit 2 Customer for ideas
plot(data201213all$FinalStage, data201213all$B2Customer, xlab = "Stage", ylab = "Benifet2Custmr", type = "n") # first only create the plot
title(main = "2012n13 Ideas", col = "Red")
points(jitter(data201213all$FinalStage[data201213all$FinalStage == 1],factor=2), data201213all$B2Customer[data201213all$FinalStage == 1], col = "blue") # here we add data that were sent to panel.
points(jitter(data201213all$FinalStage[data201213all$PanelDecision == 1],factor=.5), data201213all$B2Customer[data201213all$PanelDecision == 1], col = "black") # here we add data that were sent to panel.
points(jitter(data201213all$FinalStage[data201213all$SrMgtPanelDecision == 1],factor=.5), data201213all$B2Customer[data201213all$SrMgtPanelDecision == 1], col = "red") # here we add data that were sent to panel.
#Plot Technology Novelty for ideas
plot(data201213all$FinalStage, data201213all$Technology, xlab = "Stage", ylab = "Technology", type = "n") # first only create the plot
title(main = "2012n13 Ideas", col = "Red")
points(jitter(data201213all$FinalStage[data201213all$FinalStage == 1],factor=2), data201213all$Technology[data201213all$FinalStage == 1], col = "blue") # here we add data that were sent to panel.
points(jitter(data201213all$FinalStage[data201213all$PanelDecision == 1],factor=.5), data201213all$Technology[data201213all$PanelDecision == 1], col = "black") # here we add data that were sent to panel.
points(jitter(data201213all$FinalStage[data201213all$SrMgtPanelDecision == 1],factor=.5), data201213all$Technology[data201213all$SrMgtPanelDecision == 1], col = "red") # here we add data that were sent to panel.

# Generate Logit Model (for 201213 data):
logit201213 = glm(GoPresent ~ Unique+B2Bank+Technology+B2Customer+Scalability, family=binomial(logit), data=data201213all)
summary(logit201213)
exp(cbind(OR = coef(logit201213), confint(logit201213)))  # Convert to odds ratio
logLik(logit201213) # Extract the log likelihood value.

# # Plot a logistic regression plot by different attributes:
# par(mfrow=c(3,2),col.main='red', col.sub='blue')  # Create an array of 3X2 plots.
# #Plot the total score of ideas
# plot(data2012all$TotalScore,survive,xlab="Body size",ylab="Probability of survival") # plot with body size on x-axis and survival (0 or 1) on y-axis
# 
# #Plot the total score of ideas
# data2012all$TotalScore
# plot(data2012all$FinalStage, data2012all$TotalScore, xlab = "Stage", ylab = "Total Score", type = "n") # first only create the plot
# title(main = "2012 Ideas", col = "Red")
# points(jitter(data2012all$FinalStage[data2012all$FinalStage == 1],factor=2), data2012all$TotalScore[data2012all$FinalStage == 1], col = "blue") # here we add data that were sent to panel.




###>>>>>>>>>>>>>>>>>>>>>>>>>>>>harvest and plot 2013 trinity data sets<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
# # read 2013 tab data from worksheet
# data2013all = readWorksheetFromFile("/Users/ajitsharma/Desktop/201213onepage.xlsx", sheet = "2013", startRow = 0, endRow = 0,startCol = 0, endCol = 0)
# 
# #Convert data sets to numeric
# data2013all <- as.data.frame(sapply(data2013all, as.numeric))  # Convert to numeric
# names(data2013all)
# 
# #Create initial plot area
# plot(data2013all$FinalStage, data2013all$TotalScore, xlab = "Stage", ylab = "Total Score", type = "n",col=rgb(0, 0, 0, 0.5)) # first only create the plot
# title(main = "2013 Ideas", col = "Red")
# legend(x = "topleft", title="Stages", legend = "0-> Weeded out, 1 -> Panel Review, 2->Presented,3-> Prototyped, 4->Awarded")
# points(jitter(data2013all$FinalStage[data2013all$FinalStage == 1],factor=2), data2013all$TotalScore[data2013all$FinalStage == 1], col = "blue") # here we add data that were sent to panel.
# points(jitter(data2013all$FinalStage[data2013all$PanelDecision == 1],factor=.5), data2013all$TotalScore[data2013all$PanelDecision == 1], col = "black") # here we add data that were sent to panel.
# points(jitter(data2013all$FinalStage[data2013all$SrMgtPanelDecision == 1],factor=.5), data2013all$TotalScore[data2013all$SrMgtPanelDecision == 1], col = "red") # here we add data that were sent to panel.




# # Logit of 2012 ideas reviewed by MidMgt:
# logit2012 = glm(Present2 ~ Unique+B2Bank+Technology+B2Customer+Scalability, family=binomial(logit), data=data2012)
# summary(logit2012)
# exp(cbind(OR = coef(logit2012), confint(logit2012)))  # Convert to odds ratio

#>>>>>>>>>>>>>>>>>>>>>>Harvest subsets of data<<<<<<<<<<<<<<<<<<<<<<<<<<<<
# data2012goPanel <- subset(data2012all,FinalStage == 1) # subset: 2012 ideas cleared by SIIG (Gate1 only)
# data2012goPreso <- subset(data2012all,FinalStage == 2) # subset: 2012 ideas that presented to panels (Gate2 only)
# data2012goProto <- subset(data2012all,FinalStage == 3) # subset: 2012 ideas that went through prototype development (Gate3 only)
# data2012goAward <- subset(data2012all,FinalStage == 4) # subset: 2012 ideas that were awarded (Gate4 only)
#points(data2012all$FinalStage[data2012all$FinalStage == 2 & data2012all$PanelDecision == 1], data2012all$TotalScore[data2012all$FinalStage == 2 & data2012all$PanelDecision == 1], col = "green") # here we add data that were sent to panel.
#points(data2012all$FinalStage[data2012all$FinalStage == 3 & data2012all$SrMgtPanelDecision == 1], data2012all$TotalScore[data2012all$FinalStage == 3 & data2012all$SrMgtPanelDecision == 1], col = "red") # here we add data that were sent to panel.


###>>>>>>>>>>>>>>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

# # Create subset of data for logistic regression-2013:
# data2013 <- data[with(data,Panel1 == 1 & Year == 2013),]
# logit2013 = glm(Present2 ~ Unique+B2Bank+Technology+B2Customer+Scalability, family=binomial(logit), data=data2013)
# summary(logit2013)
# 
# # Create subset of data for logistic regression-201213:
# data201213 <- data[with(data,Panel1 == 1),]
# logit201213 = glm(Present2 ~ Unique+B2Bank+Technology+B2Customer+Scalability, family=binomial(logit), data=data201213)
# summary(logit201213)
# 
# # Plot the graphs:
# par(mfrow=c(3,4),col.main='red', col.sub='blue')
# plot(logit2012)
# title("2012 only")
# plot(logit2013)
# title("2013 only")
# plot(logit201213)
# title("2012 and 2013 combined")

###>>>>>>>>>>>>>>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

# #Create subset of ideas which panel selected
# panelYes <- data[with(data,PanelDecision == 1),15:19]
# panelYes <- as.data.frame(sapply(panelYes, as.numeric))  # Convert to numeric
# 
# #Create subset of ideas which Sr. Mgt. selected
# srmgtYes <- data[with(data,SrMgtPanelDecision == 1 & Present == 1 ),15:19]
# srmgtYes <- as.data.frame(sapply(srmgtYes, as.numeric))  # Convert to numeric
# 
# # Create a 2X2 plot area for 2 radar charts for Panel.
# par(mfcol = c(2,1))
# radarchart(panelYes, maxmin = FALSE, plty = 1, title = "Panel said Yes")
# radarchart(srmgtYes, maxmin = FALSE, plty = 1, title = "Sr. Mgt. said Yes")

# # Plot scalability by stage.
# plot(data$FinalStage, data$Scalability, xlab = "Stage", ylab = "Scalability", type = "n") # frist only create the plot
# points(data$FinalStage[data$PanelDecision == 1], data$B2Bank[data$PanelDecision == 1], col = "blue") # here we add data for those where panel said yes
# points(data$FinalStage[data$SrMgtPanelDecision == 1], data$B2Bank[data$SrMgtPanelDecision == 1], col = "green", pch = 4) # here we add data for those where panel said yes
# points(data$FinalStage[data$PanelDecision != 1 & data$SrMgtPanelDecision != 1], data$B2Bank[data$PanelDecision != 1 & data$SrMgtPanelDecision != 1], col = "red", pch = 13) # here we add data for those where panel said yes
# 
# # Plot total score by stage.
# plot(jitter(data$FinalStage, data$TotalScore, xlab = "Stage", ylab = "Total Score", type = "n")) # frist only create the plot
# points(data$FinalStage[data$PanelDecision == 1], data$B2Bank[data$PanelDecision == 1], col = "blue") # here we add data for those where panel said yes
# points(data$FinalStage[data$SrMgtPanelDecision == 1], data$B2Bank[data$SrMgtPanelDecision == 1], col = "green", pch = 4) # here we add data for those where panel said yes
# points(data$FinalStage[data$PanelDecision != 1 & data$SrMgtPanelDecision != 1], data$B2Bank[data$PanelDecision != 1 & data$SrMgtPanelDecision != 1], col = "red", pch = 13) # here we add data for those where panel said yes

# # Plot scatter plot.
# pairs(~Scalability+Unique+Technology+B2Customer+B2Bank, data = data, main = "Scatterplot matrix")

#plot(data$FinalStage, data#B2Bank, xlab = "Stage", ylab = "Scalability", col = ifelse())

#Plot 5 plots on 5 dimensions.
#par(mfcol = c(2,5))
#plot(data$FinalStage, data#B2Bank, xlab = "Stage", ylab = "Scalability", col = ifelse())
