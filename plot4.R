png("plot4.png")

us_yearly_type_emissions <- aggregate(Emissions ~ year + type, NEI, sum)
plot2 <- ggplot(us_yearly_type_emissions, aes(factor(year), Emissions))
plot2 <- plot + geom_bar(stat="identity") +
  xlab("Year") +  
  ylab(expression('Total Emissions')) +
  ggtitle('Total Coal Emissions')
print(plot2)

dev.off()