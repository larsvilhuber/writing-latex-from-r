#!/bin/bash
#
# Bash script to run all the paper analyses
# Alternatively:
# - open the "replication-paper.Rproj" in Rstudio, and "knit" the README.Rmd

cd programs

for program in $(ls [0-9]*.R)
do  
    echo "Running $program"
    R CMD BATCH $program
done

