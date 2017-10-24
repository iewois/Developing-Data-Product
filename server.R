#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
shinyServer(function(input, output) {
  output$distPlot <- renderPlot({
    dist <- switch(input$dist,
                   Normal = rnorm,
                   Uniform = runif,
                   Lognormal = rlnorm,
                   Exponential = rexp,
                   rnorm)
    
    hist(dist(input$obs), col = 'purple',
         main = paste("Histogram of a" , input$dist, "Distribution with ", input$obs, " Observations"))  ##dist size, parameter from slider
  })
}
)