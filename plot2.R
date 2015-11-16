source("loaddata.R")
png(filename = "plot2.png",width = 480,height = 480)
plot(tmp$Time, tmp$Global_active_power, 
     type="l",
     xlab="",
     ylab="Global Active Power (in kilowatts)",
     cex.lab=0.7, cex.axis=0.8)
dev.off()
# Restore locale settings
Sys.setlocale( category = "LC_TIME", locale = locale_original )