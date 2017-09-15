HPC_Data<-read.table("C:/Users/mka582/Documents/R_Work/Data_household_power_consumption/household_power_consumption.txt",header = TRUE, sep= ";")

HPC_Data_S<-HPC_Data[strptime(HPC_Data$Date,"%d/%m/%Y")>=strptime("2007-02-01", "%Y-%m-%d") & strptime(HPC_Data$Date,"%d/%m/%Y")<=strptime("2007-02-02", "%Y-%m-%d"),]

png('C:/Users/mka582/Documents/R_Work/plot3.png',width = 480, height = 480)

plot(HPC_Data_S$DateTime, as.numeric(as.character(HPC_Data_S$Sub_metering_1)),type='l', ylab ="Energy sub metering", xlab="")

lines(HPC_Data_S$DateTime, as.numeric(as.character(HPC_Data_S$Sub_metering_2)),type='l', col='red')

lines(HPC_Data_S$DateTime, HPC_Data_S$Sub_metering_3,type='l', col="blue")

legend('topright', c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col=c("black","red","blue"))

dev.off()
