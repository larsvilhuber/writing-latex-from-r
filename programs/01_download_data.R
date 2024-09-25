# needs rjson, tidyr, dplyr

source(file.path(rprojroot::find_rstudio_root_file(),"pathconfig.R"),echo=FALSE)
source(file.path(basepath,"global-libraries.R"),echo=FALSE)
source(file.path(programs,"config.R"), echo=FALSE)

# scrape the data from BEA website
html_content <- read_html(bea.papers.html)

# Parse the table
table_data <- html_content %>%
  html_node("table.national-experts") %>%
  html_table()

# Properly assign column names
column_names <- table_data[1,]
final_data <- table_data[2:nrow(table_data),]
names(final_data) <- as.vector(column_names)

# Write to CSV
write_csv(final_data, "output_table.csv")
