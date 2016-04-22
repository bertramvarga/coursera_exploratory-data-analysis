library(data.table)
if(!file.exists("household_power_consumption.txt")){
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile = "data.zip")
  unzip("data.zip")
  unlink("data.zip")
}

df = fread("household_power_consumption.txt")
dff = df[df$Date == "2/2/2007" | df$Date=="1/2/2007"]
dff$DateTime = paste(dff$Date , dff$Time)

