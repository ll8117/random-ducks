import random
import math

def random_point_angle():
    """生成一个随机点的极角（0~2π）"""
    return random.uniform(0, 2 * math.pi)

def in_same_semicircle(angles):
    """判断一组角是否全部落在同一半圆"""
    angles = sorted(angles)
    # 考虑环绕情况，重复加上 +2π 的角
    angles += [a + 2*math.pi for a in angles]
    for i in range(len(angles)//2 + 1):
        if angles[i+3] - angles[i] <= math.pi:  # 四点连续差 ≤ π
            return True
    return False

def monte_carlo(n=10000):
    count = 0
    for _ in range(n):
        angles = [random_point_angle() for _ in range(4)]
        if not in_same_semicircle(angles):
            count += 1
    return count / n

if __name__ == "__main__":
    # 若直接运行该脚本时运行此处代码
    prob = monte_carlo(50000) 
    print("Estimated probability of 4 ducks falling in a semicircle:", prob)

