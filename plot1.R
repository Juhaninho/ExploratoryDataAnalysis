png("plot1.png")

yearly_emmissions <- aggregate(Emissions ~ year, NEI, sum)
barplot(height=yearly_emmissions$Emissions/1000, names.arg=yearly_emmissions$year, main='Total PM2.5 Emissions by Year',
        xlab="Year", ylab='Total PM2.5 Emission', col = c("blue", "red", "green", "orange"))

dev.off()