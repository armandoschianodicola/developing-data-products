#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
        
        output$plot1 <- renderPlot({
                gg <- ggplot(iris, aes_string(x = input$var_x,
                                              y = input$var_y,
                                              color = "Species")
                             )
                gg + geom_point() 
                gg + ggtitle(paste(input$var_y, 'versus', input$var_x))
                })
        })

