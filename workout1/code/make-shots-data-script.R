# ---
# title: "Making Shots"
# description: "Data preparation to create shots data"
# input(s): andre-iguodala.csv, draymond-green.csv, kevin-durant.csv, klay-thompson.csv, stephen-curry.csv 
# output(s): andre-iguodala-summary.txt, draymond-green-summary.txt, kevin-durant-summary.txt, klay-thompson-summary.txt, stephen-curry-summary.txt
# ---

library(readr)
library(dplyr)


andre <- read_csv("../sharene/Documents/STAT133/Labs/workout1/data/andre-iguodala.csv")
andre$name <- "Andre Iguodala"
andre[andre == "y"] <- "shot_yes"
andre[andre == "n"] <- "shot_no"
andre <- mutate(andre, minute = period*12-minutes_remaining)

sink(file = '../sharene/Documents/STAT133/Labs/workout1/output/andre-iguodala-summary.txt')
summary(andre)
sink()


draymond <- read_csv("../sharene/Documents/STAT133/Labs/workout1/data/draymond-green.csv")
draymond$name <- "Draymond Green"
draymond[draymond == "y"] <- "shot_yes"
draymond[draymond == "n"] <- "shot_no"
draymond <- mutate(draymond, minute = period*12-minutes_remaining)

sink(file = '../sharene/Documents/STAT133/Labs/workout1/output/draymond-green-summary.txt')
summary(draymond)
sink()


kevin <- read_csv("../sharene/Documents/STAT133/Labs/workout1/data/kevin-durant.csv")
kevin$name <- "Kevin Durant"
kevin[kevin == "y"] <- "shot_yes"
kevin[kevin == "n"] <- "shot_no"
kevin <- mutate(kevin, minute = period*12-minutes_remaining)

sink(file = '../sharene/Documents/STAT133/Labs/workout1/output/kevin-durant-summary.txt')
summary(kevin)
sink()


klay <- read_csv("../sharene/Documents/STAT133/Labs/workout1/data/klay-thompson.csv")
klay$name <- "Klay Thompson"
klay[klay == "y"] <- "shot_yes"
klay[klay == "n"] <- "shot_no"
klay <- mutate(klay, minute = period*12-minutes_remaining)

sink(file = '../sharene/Documents/STAT133/Labs/workout1/output/klay-thompson-summary.txt')
summary(klay)
sink()

stephen <- read_csv("../sharene/Documents/STAT133/Labs/workout1/data/stephen-curry.csv")
stephen$name <- "Stephen Curry"
stephen[stephen == "y"] <- "shot_yes"
stephen[stephen == "n"] <- "shot_no"
stephen <- mutate(stephen, minute = period*12-minutes_remaining)

sink(file = '../sharene/Documents/STAT133/Labs/workout1/output/stephen-curry-summary.txt')
summary(stephen)
sink()

shots_data <- rbind(andre,draymond,kevin,klay,stephen)
write.csv(
  x = shots_data,
  file = '../sharene/Documents/STAT133/Labs/workout1/data/shots-data.csv')

sink(file = '../sharene/Documents/STAT133/Labs/workout1/output/shots-data-summary.txt')
summary(shots_data)
sink()



