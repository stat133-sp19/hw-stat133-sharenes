# ---
# title: "Making Shot Charts"
# description: "Create shot charts"
# input(s): 
# output(s): pdf_document
# ---

library(ggplot2)
library(jpeg)
library(gridExtra)
library(grid)

# court image (to be used as background of plot)
court_file <- "../sharene/Documents/STAT133/Labs/workout1/images/nba-court.jpg"

# create raste object
court_image <- rasterGrob(
  readJPEG(court_file),
  width = unit(1, "npc"),
  height = unit(1, "npc"))


andre_shot_chart <- ggplot(data = andre) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Andre Iguodala (2016 season)') +
  theme_minimal()
ggsave(file = '../sharene/Documents/STAT133/Labs/workout1/images/andre-iguodala-shot-chart.pdf', height = 5, width = 6.5)


draymond_shot_chart <- ggplot(data = draymond) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Draymond Green (2016 season)') +
  theme_minimal()
ggsave(file = '../sharene/Documents/STAT133/Labs/workout1/images/draymond-green-shot-chart.pdf', height = 5, width = 6.5)

kevin_shot_chart <- ggplot(data = kevin) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Kevin Durant (2016 season)') +
  theme_minimal()
ggsave(file = '../sharene/Documents/STAT133/Labs/workout1/images/kevin-durant-shot-chart.pdf', height = 5, width = 6.5)

klay_shot_chart <- ggplot(data = klay) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Klay Thompson (2016 season)') +
  theme_minimal()
ggsave(file = '../sharene/Documents/STAT133/Labs/workout1/images/klay-thompson-shot-chart.pdf', height = 5, width = 6.5)

stephen_shot_chart <- ggplot(data = stephen) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Stephen Curry (2016 season)') +
  theme_minimal()
ggsave(file = '../sharene/Documents/STAT133/Labs/workout1/images/stephen-curry-shot-chart.pdf', height = 5, width = 6.5)

gsw_shot_charts <- ggplot(data = shots_data) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Charts: GSW (2016 season)') +
  theme_minimal() + facet_wrap(~ name)
ggsave(file = '../sharene/Documents/STAT133/Labs/workout1/images/gsw-shot-charts.pdf', height = 7, width = 8)

ggsave(file = '../sharene/Documents/STAT133/Labs/workout1/images/gsw-shot-charts.png', height = 7, width = 8)
