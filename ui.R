# requires the library shiny
library(shiny)

# Creates the UI
shinyUI(fluidPage(
  # Creates a title.
  titlePanel("title panel"),
  
  # Declare a sidebar layout
  sidebarLayout(
    
    # Creates the sidebar elements for the sidebar.
    sidebarPanel( 
      
      # Allows anyone to select which flower species data we want to visualize.
      radioButtons("radio", label = h3("Species"),
                   choices = list("Setosa" = 1, "Versicolor" = 2, "Virginica" = 3), 
                   selected = 1),
      
      # Allows anyone to choose if they want to learn about the petal or sepal of the plant species.
      textInput("text", label = h3("Length or Width?"), value = "Enter your choice..."),
      fluidRow(column(3, verbatimTextOutput("value")))
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