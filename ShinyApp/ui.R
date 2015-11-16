library(shiny)

# Define UI for slider demo application
shinyUI(fluidPage(  
        #  Application title
        titlePanel("MAT Iris"),
        
        sidebarLayout(
                sidebarPanel(
                        h3("Flower specifications", align = "center"),
                        # First Slider
                        sliderInput("Sepal.Length", "Sepal Length:", min=4, max=8, value=4, step=0.1),
                        
                        # Second Slider
                        sliderInput("Sepal.Width", "Sepal Width:", min = 2, max = 5, value = 2, step= 0.1),
                        
                        # Third Slider
                        sliderInput("Petal.Length", "Petal Length:", min = 1, max = 7, value = 1, step=0.1),
                        
                        # Fourth Slider
                        sliderInput("Petal.Width", "Petal Width:", min = 0.1, max = 3, value = 0.1, step = 0.1)
                ),
                
                # table with the 10 results
                mainPanel(
                        h3("10 most similar results (Euclidean distance)"),
                        tableOutput("Values")
                )
        )
))