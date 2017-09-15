HPC_Data<-read.table("C:/Users/mka582/Documents/R_Work/Data_household_power_consumption/household_power_consumption.txt",header = TRUE, sep= ";")

HPC_Data_S<-HPC_Data[strptime(HPC_Data$Date,"%d/%m/%Y")>=strptime("2007-02-01", "%Y-%m-%d") & strptime(HPC_Data$Date,"%d/%m/%Y")<=strptime("2007-02-02", "%Y-%m-%d"),]

png('C:/Users/mka582/Documents/R_Work/Plot1.png',width = 480, height = 480)

hist(as.numeric(as.character(HPC_Data_S$Global_active_power)), 
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)", col="red")

dev.off()