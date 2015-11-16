library(shiny)
source("cleandata.R")
source("knn.R")
source("distance.R")



# Define server logic for slider examples
shinyServer(function(input, output) {
        iris <- read.csv(url("http://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data"), header = FALSE) 
        colnames(iris) <- c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width", "Species") 
        iris <- cleanData(iris)
        
        similar.10 <- reactive({knn(input=c("Sepal.Length"=input$Sepal.Length, "Sepal.Width"=input$Sepal.Width,
                                      "Petal.Length"=input$Petal.Length, "Petal.Width"=input$Petal.Width), iris, 10)})
        
        # Show the values in a data  table
        output$Values <- renderTable({
                similar.10()
        })      
})