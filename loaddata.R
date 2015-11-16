
setwd("D:/Rwork//exploratory data analysis/")
dat=read.table(file ="household_power_consumption.txt",header = T,
               stringsAsFactors =F,sep=";")
# We will only be using data from the dates 2007-02-01 and 2007-02-02
tmp = dat[dat$Date=="1/2/2007" | dat$Date=="2/2/2007",]

# convert the Date to Date class
tmp$Date <- as.Date(tmp$Date, format="%d/%m/%Y")


# convert the Time variable to Time class
tmp$Time <- strptime(paste(tmp$Date, tmp$Time), format="%Y-%m-%d %H:%M:%S")
rm(dat)

# setting locale to en_US for proper day in a week labels
locale_original <- Sys.getlocale( category = "LC_TIME" )
Sys.setlocale("LC_TIME", "English")



