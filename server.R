# Requires the libraries shiny, dplyr, and rsconnect.
library(shiny)
library(dplyr)
library(rsconnect)

# Reads in the dataset iris.
data("iris")

# Produces the graph for the ui.
shinyServer(function(input, output) { 
  
  selectedData <- reactive({
    iris[, c(input$xaxis, input$yaxis)]
  })
  
  output$graph <- renderPlotly({
    plot_ly(data = selectedData(), x = input$xaxis, y = input$yaxis, mode = "markers") %>% 
      layout(
        xaxis = list(title = input$xaxis), 
        yaxis = list(title = input$yaxis)
      )
  })
})