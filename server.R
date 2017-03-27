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

shinyServer(function(input, output) {
        
        output$plot1 <- renderPlot({
                ggplot(iris, aes_string(x = input$var_x,
                                        y = input$var_y,
                                        color = "Species")
                       ) + 
                        geom_point() +
                        ggtitle(paste(input$var_y, 'versus', input$var_x))
                })
        })


