png("plot5.png")

plot <- ggplot(yearly_type_emissions, aes(factor(year), Emissions))
plot <- plot + geom_bar(stat="identity") +
  xlab("Year") +
  ylab(expression('Total Emissions')) +
  ggtitle('Baltimore Motor Vehicle PM2.5 Emissions')
print(plot)

dev.off()