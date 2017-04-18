library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Shiny is baller"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      checkboxInput("waiting","Waiting",TRUE),
      checkboxInput("eruptions","Eruptions",TRUE),
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30),
      textInput("text","Faithful",label="Plot Title"),
      sliderInput("red","Red",min=0,max=1,value=0.5),
      sliderInput("green","Green",min=0,max=1,value=0.5),
      sliderInput("blue","Blue",min=0,max=1,value=0.5),
      sliderInput("alpha","Alpha",min=0,max=1,value=0.5)
      
      
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot"),
      plotOutput("distPlot2")
    )
  )
))