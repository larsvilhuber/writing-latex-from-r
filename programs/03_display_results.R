# Create  a histogram

source(file.path(rprojroot::find_rstudio_root_file(),"pathconfig.R"),echo=FALSE)
source(file.path(basepath,"global-libraries.R"),echo=FALSE)
source(file.path(programs,"config.R"), echo=FALSE)


# read the data in

output_table <- read_csv("output_table.csv")

histogram <- ggplot(output_table, aes(x = Year)) +
  geom_histogram(binwidth = 1, fill = "blue", color = "black") +
  labs(title = "Histogram of Years",
       x = "Year",
       y = "Frequency") +
  theme_minimal()

# display histogram

print(histogram)

# Save the plot to disk
ggsave(file.path(outputs,"year_histogram.png"), plot = histogram, 
                 width = 10, height = 6, units = "in", dpi = 300)
       
ggsave(file.path(outputs,"year_histogram.pdf"), plot = histogram, 
       width = 10, height = 6, units = "in", dpi = 300)

       