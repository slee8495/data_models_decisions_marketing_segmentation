library(shiny)
library(shinythemes)
library(shinyWidgets)
library(DT)
library(rmarkdown)
library(shinyjs)

ui <- fluidPage(
  id = "main_nav",
  title = (""),
  tabPanel("",
           fluidPage(
             uiOutput("chapter")))
)

server <- function(input, output, session) {
  output$chapter <- renderUI({
    file_name <- "hw5_questions.html" 
    if (!is.null(file_name)) {
      tags$iframe(src = file_name, style = "width:100%; height:800px;")
    }
  })
}

shinyApp(ui = ui, server = server)

