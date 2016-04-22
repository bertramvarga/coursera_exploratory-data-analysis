source("setup.R")

png("plot1.png")
hist(as.numeric( dff$Global_active_power), xlab = "Global active power (kilowatts)", main = "Global active power", col = "red", xlim = c(0,6))
dev.off()