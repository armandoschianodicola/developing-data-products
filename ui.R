#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(navbarPage(
        title = "Iris Data",
        tabPanel("Plot",
                 sidebarLayout(
                         sidebarPanel(
                                 helpText("Chose which variables to display"),
                                 selectInput("var_y",
                                             label = "Y axis",
                                             choices = names(iris)[-5],
                                             selected = names(iris)[2]),  
                                 selectInput("var_x",
                                             label = "X axis",
                                             choices = names(iris)[-5])
                                    ),
                            mainPanel(plotOutput("plot1"))
                            )
                ), 
                tabPanel("Instructions", 
                         mainPanel(
                                 includeMarkdown("README.md")))
        )
)

