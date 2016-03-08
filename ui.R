library(shiny)
#library(rCharts)

shinyUI(fluidPage(
  
  # title
  headerPanel("Miles Per Gallon"),
  
  # Sidebar with controls to select the variable to plot against mpg
  # and to specify whether outliers should be included
  sidebarPanel(
    selectInput("variable", "Select X Variable",
                choices=names(mtcars)),
    selectInput("variable1", "Select Y Variable",
                choices=names(mtcars)),
    
    selectInput(inputId="color",
                label="Color ",
                list("Black","Red","Blue","Green")),
    br(),
    p(strong(em("Documentation:",a("Miles per Gallon plots by Selected Variable",href="ReadMe.html")))),
    p(strong(em("Github link:",a("Link to github repo housing ui.R, server.R and the Rpres",href="https://github.com/prk2104/devdata-project"))))
                
  ),
  
  # Show the caption and plot of the requested variable against mpg
  mainPanel(
    
    h2("Scatter plot:"),
    h3(textOutput("caption")),
    
    plotOutput("mpgPlot")

  )
))
