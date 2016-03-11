library(shiny)
shinyUI(fluidPage(
  titlePanel("2010 US Census Data"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Create demographic maps with 
               information from the 2010 US Census."),
      
      selectInput(inputId = "var", 
                  label = "Choose a variable to display",
                  choices = list("Percent White", "Percent Black",
                                 "Percent Hispanic", "Percent Asian"),
                  selected = "Percent White"),
      
      sliderInput(inputId = "range", 
                  label = "Range of interest:",
                  min = 0, max = 100, value = c(0, 100))
      ),
    
    mainPanel(
      textOutput("text1"),
      
      textOutput("text2"),
      
      plotOutput("map1")
  )
  )
))