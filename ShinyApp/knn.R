#function to output the n most similar observations
knn <- function(input, feature.space, k=n, func=distance) {
        input <- unlist(input)
        feature.names <- names(input)
        
        d <- apply(feature.space[, feature.names, drop=F], 1, func, input)
        d.order.asc <- head(order(d), k)
        cbind(feature.space[d.order.asc, ], distance=d[d.order.asc])
}