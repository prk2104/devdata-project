library(shiny)


shinyUI(fluidPage(
  
  # title
  headerPanel("Miles Per Gallon"),
  
  # Sidebar with controls to select the variable to plot against mpg
  # and to specify whether outliers should be included
  sidebarPanel(
    selectInput("variable", "Variable:",
                list("Cylinders" = "cyl", 
                     "Transmission" = "am", 
                     "Gears" = "gear")),
    
    checkboxInput("outliers", "Show outliers", FALSE),
    br(),
    p(strong(em("Documentation:",a("Miles per Gallon Boxplots by Selected Variable",href="ReadMe.html")))),
    p(strong(em("Github link:",a("Link to github repo housing ui.R, server.R and the Rpres",href="https://github.com/prk2104/devdata-project"))))
  ),
  
  # Show the caption and plot of the requested variable against mpg
  mainPanel(
    h3(textOutput("caption")),
    
    plotOutput("mpgPlot")
  )
))
