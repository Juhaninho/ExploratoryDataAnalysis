png("plot2.png")

baltimore_data <- NEI[NEI$fips == "24510", ]
yearly_emmissions <- aggregate(Emissions ~ year, baltimore_data, sum)
barplot(height=yearly_emmissions$Emissions/1000, names.arg=yearly_emmissions$year, 
        main='Baltimore Total PM2.5 Emissions by Year',
        xlab="Year", ylab='Total PM2.5 Emission', col = c("blue", "red", "green", "orange"))

dev.off()