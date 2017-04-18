library(shiny)
library(ggplot2)
titanic<-read.csv("/Users/gregorymatthews/Dropbox/Titanic/titanic.csv")

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should re-execute automatically
  #     when inputs change
  #  2) Its output type is a plot
  
  output$distPlot <- renderPlot({
    x    <- faithful[,2]  # Old Faithful Geyser data
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    if (input$waiting){
    hist(x, breaks = bins, col = rgb(input$red,input$green,input$blue,input$alpha), border = 'white',main=input$text,xlab="waiting")
    }
  })
  
  output$distPlot2 <- renderPlot({
    # draw the histogram with the specified number of bins
    if (input$eruptions){
    ggplot(data=faithful,aes(x=eruptions))+geom_histogram(bins=input$bins+1,fill = rgb(input$red,input$green,input$blue,input$alpha))
    }
    
  
  })
  
})