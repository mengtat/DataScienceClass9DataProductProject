library(shiny)

shinyUI(  
  pageWithSidebar(    
    # Application title
    headerPanel("Savings predictor"),

    sidebarPanel(
      numericInput('amount', 'Inital Amount($)', 1000, min = 50, max = 1000000, step = 5),
      
      sliderInput('year', 'Year',value = 10, min = 1, max = 100, step = 1,),
      helpText("Help: You can use the Savings predictor",
               "to esitmate how much money you will have",
               "based on the input above.",
               "Our Prediction is based on an 5% annual return."
               ),
      helpText("Inital Amount($) is the amount you would like to invest initially."),
      helpText("Year is the number of year in that you would like to invest your money.")

    ),
    mainPanel(
      h3('Results of prediction'),
      h4('Inital Amount($)'),
      verbatimTextOutput("inputAmount"),
      h4('Year'),
      verbatimTextOutput("inputYear"),

      h4(textOutput("prediction"))
    )
  )
)