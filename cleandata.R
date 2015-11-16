cleanData <- function(iris){

#remove null values
iris <- na.omit(iris)

#remove duplicates
iris <- unique(iris)

#remove negative values
iris <- iris[!apply(iris, 1, function(i) any(i <= 0)),]

}