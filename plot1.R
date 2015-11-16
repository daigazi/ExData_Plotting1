source("loaddata.R")
png(filename = "plot1.png",width = 480,height = 480)
hist(x = as.numeric(tmp$Global_active_power),breaks = 15,col="red",
     xlab="Global Active Power (kilowatts)",
     main="Global Active Power",
     ylim=c(0,1200) ) 
dev.off()
