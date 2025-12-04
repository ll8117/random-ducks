# monte_carlo.R
# source("utils.R")

monte_carlo <- function(n = 4, trials = 10000){
    count <- 0
    for (i in 1:trials){
        pts <- generate_points(n)
        if (in_same_semicircle(pts)) count <- count + 1
    }
    prob <- count / trials
    return(prob)
}
