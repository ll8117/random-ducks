# 观察随着鸭子数量增加，落到半圆的概率变低
# source("utils.R")
# source("monte_carlo.R")

max_n <- 10
trials <- 10000
prob_n <- numeric(max_n)
theory_prob <- numeric(max_n)

set.seed(123)
for (i in 1:max_n) {
  prob_n[i] <- monte_carlo(n = i, trials = trials)
  theory_prob[i] <- i / (2^(i-1))  # 理论概率
}

# 绘图
plot(1:max_n, prob_n, type="b", pch=16, col="darkgreen", lwd=2,
     xlab="鸭子数量 n", ylab="概率",
     main="鸭子数量与半圆内概率关系")
lines(1:max_n, theory_prob, col="red", lty=2, lwd=2)  # 理论概率虚线
legend("topright", legend=c("Monte Carlo", "理论概率"),
       col=c("darkgreen","red"), lty=c(1,2), lwd=2)
