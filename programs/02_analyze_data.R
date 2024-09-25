# Create  a table with the last 5 publications

source(file.path(rprojroot::find_rstudio_root_file(),"pathconfig.R"),echo=FALSE)
source(file.path(basepath,"global-libraries.R"),echo=FALSE)
source(file.path(programs,"config.R"), echo=FALSE)

# read the file back in

output_table <- read_csv("output_table.csv") |>
     arrange(desc(Year)) |>
     head(n=5)



