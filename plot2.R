source("setup.R")

png("plot2.png")
plot(y=as.numeric(dff$Global_active_power), x=strptime( dff$DateTime, "%d/%m/%Y %H:%M:%S"), type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()