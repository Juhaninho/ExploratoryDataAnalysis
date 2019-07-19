library(ggplot2)

png("plot3.png")

baltimore_data <- NEI[NEI$fips == "24510", ]
yearly_type_emissions <- aggregate(Emissions ~ year + type, baltimore_data, sum)
plot <- ggplot(yearly_type_emissions, aes(year, Emissions, color = type))
plot <- plot + geom_line() +
  xlab("Year") +
  ylab(expression('Total Emissions')) +
  ggtitle('Baltimore Total PM2.5 Emissions')
print(plot)

dev.off()