# Install and load necessary packages
if (!require("shiny")) install.packages("shiny")
if (!require("ggplot2")) install.packages("ggplot2")

library(shiny)
library(ggplot2)

# Define UI for application
ui <- fluidPage(
  titlePanel("Cricket Player Runs Visualization"),
  sidebarLayout(
    sidebarPanel(
      fileInput("file", "Choose CSV File",
                accept = c("text/csv",
                           "text/comma-separated-values,text/plain",
                           ".csv")),
      tags$hr(),
      helpText("Select a CSV file with columns 'Name' and 'Total Runs'.")),
    mainPanel(
      plotOutput("barplot")
    )
  )
)

# Define server logic
server <- function(input, output) {
  
  # Read the CSV file
  data <- reactive({
    file <- input$file
    if (is.null(file)) {
      return(NULL)
    }
    read.csv(file$datapath)
  })
  
  # Render the bar chart
  output$barplot <- renderPlot({
    if (is.null(data())) {
      return()
    }
    ggplot(data(), aes(x = Name, y = Total.Runs)) + 
      geom_bar(stat = "identity") +
      labs(title = "Total Runs by Player",
           x = "Name",
           y = "Total Runs") +
      theme(axis.text.y = element_text(angle = 0, hjust = 1))
  })
  
}
# Run the application
shinyApp(ui = ui, server = server)

setwd("D:/Cricket")
shiny::runApp("cricket.R")