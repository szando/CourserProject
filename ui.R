
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#
# To deploy on shinyapps.io see https://www.shinyapps.io/admin/#/dashboard
# and http://shiny.rstudio.com/articles/shinyapps.html


library(shiny)
library(boot)

shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Nuclear Power Station Construction Data"),
  
  # Sidebar with a slider input for number of bins
  sidebarPanel(
    #sliderInput("bins", "Number of bins:", min = 1967, max = 1971, value = 1968, step=1)
    sliderInput("delay", "Construction start year:", min = 0, max = 0, value = 0 , step=.1, dragRange = TRUE),
    selectInput("year", "Choose a year:", ""),
    checkboxInput("pt", "Partial turnkey guarantee", FALSE)
  ),
  
  # Show a plot of the generated distribution
  mainPanel(
    plotOutput("distPlot")
  )
))
