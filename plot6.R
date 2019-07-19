png("plot6.png")

baltimore_la_data <- NEI[(NEI$fips=="24510" | NEI$fips=="06037") & NEI$type=="ON-ROAD",  ]
yearly_fips_emissions <- aggregate(Emissions ~ year + fips, baltimore_la_data, sum)
yearly_fips_emissions$fips[yearly_fips_emissions$fips=="24510"] <- "Baltimore"
yearly_fips_emissions$fips[yearly_fips_emissions$fips=="06037"] <- "Los Angeles"
plot <- ggplot(yearly_fips_emissions, aes(factor(year), Emissions))
plot <- plot + facet_grid(. ~ fips)
plot <- plot + geom_bar(stat="identity")  +
  xlab("Year") +
  ylab("Total Emissions") +
  ggtitle('Total Emissions in Baltimore and Los Angeles')
print(plot)

dev.off()