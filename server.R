library(shiny)
library(datasets)

shinyServer(function(input, output) {
  
  # Compute the forumla text in a reactive expression since it is 
  # shared by the output$caption and output$mpgPlot expressions

  formulaText1 <- reactive({
    paste(input$variable1," ~ ", input$variable)
  })

  
  # Return the formula text for printing as a caption
  output$caption <- renderText({
  
    formulaText1()
  })
  
  # Generate a plot of the requested variable against requested variable 

  output$mpgPlot <- renderPlot({

    attach(mtcars)
        plot(as.formula(formulaText1()),type="point",col=input$color,cex=2,pch=19)
          })


})
