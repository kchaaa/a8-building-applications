# requires the library shiny and rsconnect
library(shiny)
library(rsconnect)

# Creates the UI
shinyUI(fluidPage(
  # Creates a title.
  titlePanel("Flower Species Graph"),
  
  # Declare a sidebar layout
  sidebarLayout(
    
    # Creates the sidebar elements for the sidebar.
    sidebarPanel( 
      
      # Allows anyone to select which flower species data we want to visualize.
      selectInput("xaxis", label = h2("Select One Column"), 
                  choices = names(iris)), 
      
      # Allows anyone to choose if they want to learn about the petal or sepal of the plant species.
      selectInput("yaxis", label = h2("Select One Column"), 
                  choices = names(iris), 
                  selected = 1)
    ),
    
    # Creates the main part where the graph will be.
    mainPanel(
      
      # Title of the Graph in the main part.
      "Species Graph",
      
      # Gets the graph to visualize.
      plotlyOutput('graph')
    )
  )
  
  
))