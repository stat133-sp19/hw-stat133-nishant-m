# Title: make-shots-data-script
# Description: Combines the raw data files to create one, general table
# Input: andre-iguodala.csv, draymond-green.csv, kevin-durant.csv, klay-thompson.csv, stephen-curry.csv
# Output: shots-data.csv


library(ggplot2)
library(dplyr)

# Reading in CSV Files
iguodala = read.csv("/Users/nishantmishra/workout01/data/andre-iguodala.csv", stringsAsFactors = FALSE)
green = read.csv("/Users/nishantmishra/workout01/data/draymond-green.csv", stringsAsFactors = FALSE)
durant = read.csv("/Users/nishantmishra/workout01/data/kevin-durant.csv", stringsAsFactors = FALSE)
thompson = read.csv("/Users/nishantmishra/workout01/data/klay-thompson.csv", stringsAsFactors = FALSE)
curry = read.csv("/Users/nishantmishra/workout01/data/stephen-curry.csv", stringsAsFactors = FALSE)

# Iguoadala shot_made_flag
iguodala_yes = mutate(filter(iguodala, shot_made_flag == "y"), shot_made_flag = "shot_yes")
iguodala_no = mutate(filter(iguodala, shot_made_flag == "n"), shot_made_flag = "shot_no")
iguodala = rbind(iguodala_yes, iguodala_no)

# Green shot_made_flag
green_yes = mutate(filter(green, shot_made_flag == "y"), shot_made_flag = "shot_yes")
green_no = mutate(filter(green, shot_made_flag == "n"), shot_made_flag = "shot_no")
green = rbind(green_yes, green_no)

# Durant shot_made_flag
durant_yes = mutate(filter(durant, shot_made_flag == "y"), shot_made_flag = "shot_yes")
durant_no = mutate(filter(durant, shot_made_flag == "n"), shot_made_flag = "shot_no")
durant = rbind(durant_yes, durant_no)

# Thompson shot_made_flag
thompson_yes = mutate(filter(thompson, shot_made_flag == "y"), shot_made_flag = "shot_yes")
thompson_no = mutate(filter(thompson, shot_made_flag == "n"), shot_made_flag = "shot_no")
thompson = rbind(thompson_yes, thompson_no)

# Curry shot_made_flag
curry_yes = mutate(filter(curry, shot_made_flag == "y"), shot_made_flag = "shot_yes")
curry_no = mutate(filter(curry, shot_made_flag == "n"), shot_made_flag = "shot_no")
curry = rbind(curry_yes, curry_no)

# Add names column
iguodala = mutate(iguodala, name = "Andre Iguodala")
green = mutate(green, name = "Draymond Green")
durant = mutate(durant, name = "Kevin Durant")
thompson = mutate(thompson, name = "Klay Thompson")
curry = mutate(curry, name = "Stephen Curry")

# Add minutes column
iguodala = mutate(iguodala, minute = period * 12 - minutes_remaining)
green = mutate(green, minute = period * 12 - minutes_remaining)
durant = mutate(durant, minute = period * 12 - minutes_remaining)
thompson = mutate(thompson, minute = period * 12 - minutes_remaining)
curry = mutate(curry, minute = period * 12 - minutes_remaining)

# Iguodala text
sink(file = "/Users/nishantmishra/workout01/output/andre-iguodala-summary.txt")
summary(iguodala)
sink()

# Green text
sink(file = "/Users/nishantmishra/workout01/output/draymond-green-summary.txt")
summary(green)
sink()

# Durant text
sink(file = "/Users/nishantmishra/workout01/output/kevin-durant-summary.txt")
summary(durant)
sink()

# Thompson text
sink(file = "/Users/nishantmishra/workout01/output/klay-thompson-summary.txt")
summary(thompson)
sink()

# Curry text
sink(file = "/Users/nishantmishra/workout01/output/stephen-curry-summary.txt")
summary(curry)
sink()

# Bind all into one shots data table
data = rbind(iguodala, green, durant, thompson, curry)
data

# Write data table .csv
write.csv(data, file = "/Users/nishantmishra/workout01/data/shots-data.csv")

# Shots data summary
sink(file = "/Users/nishantmishra/workout01/output/shots-data-summary.txt")
summary(data)
sink()
