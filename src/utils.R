# utils.R

# 生成 n 个随机点在单位圆内
generate_points <- function(n){
    theta <- runif(n, 0, 2*pi)
    r <- sqrt(runif(n, 0, 1))
    # 极径的分布F(r) = r^2, 在[0, 1]上
    x <- r * cos(theta)
    y <- r * sin(theta)
    data.frame(x = x, y = y, theta = theta)
}

# 判断所有点是否在同一个半圆内
in_same_semicircle <- function(points){
    angles <- points$theta
    angles <- sort(angles)
    angles <- c(angles, angles + 2*pi) # 处理半圆跨过极轴的情况
    for (i in 1:nrow(points)){
        if ((angles[i + nrow(points) - 1] - angles[i]) <= pi) return(TRUE)
    }
    return FALSE
}
