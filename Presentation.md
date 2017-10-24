Shiny Application and Reproducible Pitch
========================================================
author: Lee Siow Wei
date: 23/10/17
autosize: true

Background
========================================================

This is an application to help instructors and students explain and understand the concept of the law of large numbers and how it applies to random distributions.

Resources
========================================================

For the shiny application in ios: please visit https://iewois.shinyapps.io/DevelopingDataProduct/

For the source code in github please (ui.R & server.R files) please visit https://github.com/iewois/Developing-Data-Product


R code illustration for shiny apps
=========================================================

```r
library(shiny)
shinyServer(function(input, output) {
  output$distPlot <- renderPlot({
    dist <- switch(input$dist,
                   Normal = rnorm,
                   Uniform = runif,
                   Lognormal = rlnorm,
                   Exponential = rexp,
                   rnorm)
```

Histogram of a Random Normal Distribution with 100000 Observations
================================================================================================================


```r
hist(rnorm(100000))
```

![plot of chunk unnamed-chunk-2](Presentation-figure/unnamed-chunk-2-1.png)
