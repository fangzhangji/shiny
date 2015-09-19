library(shiny)
bmi<-function(height,weight) weight/(height/100)^2
shinyServer(
      function(input, output){
      output$calculation <- renderPrint({bmi(input$height,input$weight)})
      }
)