source("setup.R")

png("plot3.png")
plot(y=dff$Sub_metering_1, x=strptime( dff$DateTime, "%d/%m/%Y %H:%M:%S"), type="l", xlab = "", ylab="Energy SM" )
lines(dff$Sub_metering_2, x=strptime( dff$DateTime, "%d/%m/%Y %H:%M:%S"), col="red")
lines(dff$Sub_metering_3, x=strptime( dff$DateTime, "%d/%m/%Y %H:%M:%S"), col="blue")
legend("topright", lty=c(1,1,1), legend=c("Submetering1", "Submetering2", "Submetering3"), col=c("black","red", "blue"))
dev.off()