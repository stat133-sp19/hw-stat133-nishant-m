# Title: make-shots-charts-script
# Description: Generates the shot charts from individual players' 
# Input: andre-iguodala.csv, draymond-green.csv, kevin-durant.csv, klay-thompson.csv, stephen-curry.csv
# Output: andre-iguodala-shot-chart.pdf, draymond-green-shot-chart.pdf, kevin-durant-shot-chart.pdf, klay-thompson-shot-chart.pdf
#         stephen-curry-shot-chart.pdf, gsw-shot-charts.pdf

library(ggplot2)
library(dplyr)
library(readr)
library(jpeg)
library(grid)
library(gridExtra)


# Reading in all shots data
data = read.csv("/Users/nishantmishra/workout01/data/shots-data.csv", stringsAsFactors = FALSE)

# Load NBA court
court_file = "/Users/nishantmishra/workout01/images/nba-court.jpg"
court_image <- rasterGrob(readJPEG(court_file), width = unit(1, "npc"), height = unit(1, "npc"))

# Iguodala shot chart
iguodala = filter(data, name == "Andre Iguodala")
iguodala_shot_chart = ggplot(data = iguodala) + annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) + 
  ylim(-50, 420) + 
  ggtitle("Shot Chart: Andre Iguodala (2016 season)") +
  theme_minimal()
iguodala_shot_chart

# Green shot chart
green = filter(data, name == "Draymond Green")
green_shot_chart = ggplot(data = green) + annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) + 
  ylim(-50, 420) + 
  ggtitle("Shot Chart: Draymond Green (2016 season)") +
  theme_minimal()
green_shot_chart

# Durant shot chart
durant = filter(data, name == "Kevin Durant")
durant_shot_chart = ggplot(data = durant) + annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) + 
  ylim(-50, 420) + 
  ggtitle("Shot Chart: Kevin Durant (2016 season)") +
  theme_minimal()
durant_shot_chart

# Thompson shot chart
thompson = filter(data, name == "Klay Thompson")
thompson_shot_chart = ggplot(data = thompson) + annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) + 
  ylim(-50, 420) + 
  ggtitle("Shot Chart: Klay Thompson (2016 season)") +
  theme_minimal()
thompson_shot_chart

# Curry shot chart
curry = filter(data, name == "Stephen Curry")
curry_shot_chart = ggplot(data = curry) + annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) + 
  ylim(-50, 420) + 
  ggtitle("Shot Chart: Stephen Curry (2016 season)") +
  theme_minimal()
curry_shot_chart

# Save individual plots
ggsave("andre-iguodala-shot-chart.pdf", 
       plot = iguodala_shot_chart, 
       device = "pdf", 
       path = "/Users/nishantmishra/workout01/images/",
       scale = 1,
       width = 6.5,
       height = 5,
       units = "in",
       dpi = 300)

ggsave("andre-iguodala-shot-chart.png", 
       plot = iguodala_shot_chart, 
       device = "png", 
       path = "/Users/nishantmishra/workout01/images/",
       scale = 1,
       width = 6.5,
       height = 5,
       units = "in",
       dpi = 300)

ggsave("draymond-green-shot-chart.pdf", 
       plot = green_shot_chart, 
       device = "pdf", 
       path = "/Users/nishantmishra/workout01/images/",
       scale = 1,
       width = 6.5,
       height = 5,
       units = "in",
       dpi = 300)

ggsave("draymond-green-shot-chart.png", 
       plot = green_shot_chart, 
       device = "png", 
       path = "/Users/nishantmishra/workout01/images/",
       scale = 1,
       width = 6.5,
       height = 5,
       units = "in",
       dpi = 300)

ggsave("kevin-durant-shot-chart.pdf", 
       plot = durant_shot_chart, 
       device = "pdf", 
       path = "/Users/nishantmishra/workout01/images/",
       scale = 1,
       width = 6.5,
       height = 5,
       units = "in",
       dpi = 300)

ggsave("kevin-durant-shot-chart.png", 
       plot = durant_shot_chart, 
       device = "png", 
       path = "/Users/nishantmishra/workout01/images/",
       scale = 1,
       width = 6.5,
       height = 5,
       units = "in",
       dpi = 300)

ggsave("klay-thompson-shot-chart.pdf", 
       plot = thompson_shot_chart, 
       device = "pdf", 
       path = "/Users/nishantmishra/workout01/images/",
       scale = 1,
       width = 6.5,
       height = 5,
       units = "in",
       dpi = 300)

ggsave("klay-thompson-shot-chart.png", 
       plot = thompson_shot_chart, 
       device = "png", 
       path = "/Users/nishantmishra/workout01/images/",
       scale = 1,
       width = 6.5,
       height = 5,
       units = "in",
       dpi = 300)

ggsave("stephen-curry-shot-chart.pdf", 
       plot = curry_shot_chart, 
       device = "pdf", 
       path = "/Users/nishantmishra/workout01/images/",
       scale = 1,
       width = 6.5,
       height = 5,
       units = "in",
       dpi = 300)

ggsave("stephen-curry-shot-chart.png", 
       plot = curry_shot_chart, 
       device = "png", 
       path = "/Users/nishantmishra/workout01/images/",
       scale = 1,
       width = 6.5,
       height = 5,
       units = "in",
       dpi = 300)

# Edit shot charts to shorten titles
iguodala_shot_chart = iguodala_shot_chart + ggtitle("Andre Iguodala")
green_shot_chart = green_shot_chart + ggtitle("Draymond Green")
durant_shot_chart = durant_shot_chart + ggtitle("Kevin Durant")
thompson_shot_chart = thompson_shot_chart + ggtitle("Klay Thompson")
curry_shot_chart = curry_shot_chart + ggtitle("Stephen Curry")

# Arranges gsw_shot_charts
gsw_shot_charts = grid.arrange(iguodala_shot_chart, 
             green_shot_chart, 
             durant_shot_chart, 
             thompson_shot_chart, 
             curry_shot_chart, 
             nrow = 2)

# Saves gsw-shot-charts.pdf
ggsave("gsw-shot-charts.pdf", 
       plot = gsw_shot_charts, 
       device = "pdf", 
       path = "/Users/nishantmishra/workout01/images/",
       scale = 1,
       width = 8,
       height = 7,
       units = "in",
       dpi = 300)

# Saves gsw-shot-charts.png
ggsave("gsw-shot-charts.png", 
       plot = gsw_shot_charts, 
       device = "png", 
       path = "/Users/nishantmishra/workout01/images/",
       scale = 1,
       width = 8,
       height = 7,
       units = "in",
       dpi = 300)
