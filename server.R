totalsavings <- function(amount, year) round(amount * (1.05) ^ year, 0)
shinyServer(
  function(input, output) {
    output$inputAmount <- renderText({input$amount})
    output$inputYear <- renderText({input$year})
    
    output$prediction <- renderText({ paste("You will have an estimated $", totalsavings(input$amount, input$year), " in ", input$year, " years.", sep = "") })
    ##output$prediction <- renderText({totalsavings(input$amount, input$year)})
  }
)