# 可视化观测到的概率随试验次数trials收敛 
# source("utils.R")
# source("monte_carlo.R")

n <- 4
trials <- 10000

# 逐步统计概率随试验次数的变化
prob_trace <- numeric(trials)
success <- 0

set.seed(123)
for (i in 1:trials) {
  # 每次模拟一次
  if (monte_carlo(n, 1) == 1) success <- success + 1
  prob_trace[i] <- success / i
}

# 绘图
plot(1:trials, prob_trace, type="l", col="blue", lwd=2,
     xlab="模拟次数", ylab="累积概率",
     main=paste(n, "只鸭子落在半圆内的概率收敛"))
abline(h = n*2^(-n+1), col="red", lty=2)  # 理论概率
legend("topright", legend=c("Monte Carlo", "理论值"),
       col=c("blue","red"), lty=c(1,2), lwd=2)

