#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(fluidPage(
  # Application title
  titlePanel("The Law Of Large Numbers In Random Distributions"),
  # Sidebar with a slider input for type of distributionT and slider input.
  # FOR number of bins
  sidebarLayout(
    sidebarPanel(
      fluidRow(column(8,
                      sliderInput("obs",
                                  "Number of Observations:",
                                  min = 10,
                                  max = 100000,
                                  value = 50))),
      fluidRow(column(8,
                      radioButtons("dist", "Distribution type:",
                                   c("Normal" = "Normal",
                                     "Uniform" = "Uniform",
                                     "Lognormal" = "Lognormal",
                                     "Exponential" = "Exponential")))),
      submitButton("Submit")
      ),
    # Show a plot of the generated distribution
    
    mainPanel(h5("Use the controls on the left panel to select:"), 
              h5("   1. Number of Observations, the sample size"),
              h5("   2. Type of Distribution"),
              h5("The following chart will adjust accordingly to reflect the effect of sample size on the distribution"),
              h5("" , a("ui.R & server.R code in iewois' Github Repository", href="https://github.com/iewois/Developing-Data-Product")) 
              ,
              plotOutput("distPlot")
    )
  )	 
)
)