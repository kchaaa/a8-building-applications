# Requires the libraries dplyr and plotly.
library(dplyr)
library(plotly)

# Creates a visualization based on taking the average for each species.
create_viz <- function(data, species_wanted, measurement) {
  # Filters the data so it only selects the species and the specific measurement
  table <- data %>% 
            filter(data$Species == species_wanted) %>% 
            select(contains(measurement), Species)
  plot_ly(data = data, 
          x = Petal.Length, 
          y = Sepal.Length, 
          mode = "markers") %>% 
          layout(
            xaxis = list(title = "Petal"),
            yaxis = list(title = "Sepal")
          )
}
