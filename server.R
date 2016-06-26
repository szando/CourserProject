
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)
library(boot)


# Load data


shinyServer(function(input, output, session) {
  nuclear$date <- as.integer(nuclear$date + 1900)
  nuclear$date <- as.numeric(nuclear$date)
  updateSelectInput(session, "year", choices = c("Select a year"="", "Show all"="*", nuclear$date)) 
  updateSliderInput(session, "delay", label = "Construction start year:",  value=max(nuclear$t1), min(nuclear$t1), max(nuclear$t1), step = .5)
  
  output$distPlot <- renderPlot({

    if(input$year == "*" || input$year == ""){
      subset_data <- subset(nuclear, t1 <= input$delay)
      #updateSelectInput(session, "year", choices = c("Select a year"="", "Show all"="*", subset_data$date))
      #updateSliderInput(session, "delay", label = "Construction start year:", value=slider_value, min(nuclear$t1), max(nuclear$t1), step = .5)
      print("Filter OFF")
    }
    else{
      subset_data <- subset(nuclear, date == input$year)
      subset_data <- subset(subset_data, t1 <= input$delay)
      #updateSliderInput(session, "delay", label = "Construction start year:", value=max(subset_data$t1), min(subset_data$t1), max(subset_data$t1), step = .5)
      print("Filter ON")
    }
    subset_data <- subset(subset_data, pt == input$pt)
    #bins <- seq(min(x), max(x), length.out = input$bins + 1)
    #bins <- seq(min(years), max(years), length.out = input$bins + 1)

    # draw the histogram with the specified number of bins
    #hist(nuclear$date, breaks = bins, col = 'darkgray', border = 'white')
    #plot(nuclear$date, nuclear$cost,xlab= "Year", ylab= "Cost", type='histogram', col='red', xbins = bins)
    cat(sprintf("Type: %s \n", class(subset_data)))
    if(nrow(subset_data)>0){
      myplot <- barplot(subset_data$t1, subset_data$cost, xlab= "Time between application for and issue of the construction permit", 
              ylab= "Cost", col='red')
      axis(1,at=myplot,labels=subset_data$t1)
    }

  })
  
})
