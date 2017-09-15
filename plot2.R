HPC_Data<-read.table("C:/Users/mka582/Documents/R_Work/Data_household_power_consumption/household_power_consumption.txt",header = TRUE, sep= ";")

HPC_Data_S<-HPC_Data[strptime(HPC_Data$Date,"%d/%m/%Y")>=strptime("2007-02-01", "%Y-%m-%d") & strptime(HPC_Data$Date,"%d/%m/%Y")<=strptime("2007-02-02", "%Y-%m-%d"),]

HPC_Data_S$DateTime<-paste(HPC_Data_S$Date, HPC_Data_S$Time)

HPC_Data_S$DateTime<-strptime(HPC_Data_S$DateTime, "%d/%m/%Y %H:%M:%S")


png('C:/Users/mka582/Documents/R_Work/Plot2.png',width = 480, height = 480)

plot(HPC_Data_S$DateTime, as.numeric(as.character(HPC_Data_S$Global_active_power)),
     type='l',ylab="Global Active Power (Kilowatts)", xlab="")


dev.off()