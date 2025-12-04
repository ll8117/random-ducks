# 🦆 Random Ducks in a Circle 🦆

Welcome to my ducky project!  
This is a small experiment in R and Python to study the probability that `n` ducks randomly placed in a circle fall into the same semicircle 🐤.

---

## 📂 Project Structure

- `docs/report.Rmd`  
  > R Markdown source file ✨  
  > Contains problem description, theoretical derivation, and Monte Carlo simulation

- `docs/report.html`  
  > Knitted HTML report 🖥️ 
  > [🔗 View full report here](https://ll8117.github.io/random-ducks/docs/report)
  > [🔗 这里查看完整报告](https://ll8117.github.io/random-ducks/docs/report)

- `src/utils.R`  
  > Utility functions 🔧  
  > Generates random points and checks if they are in the same semicircle

- `src/monte_carlo.R`  
  > R version Monte Carlo simulation 🎲  
  > Core logic for estimating probability using random experiments

- `src/simulation.py`  
  > Python version Monte Carlo simulation 🐍  
  > Same functionality as `monte_carlo.R`  
  > Useful for cross-checking or practicing Python

---

## 🚀 How to Run

### R version
1. Open `docs/report.Rmd` in RStudio  
2. Knit to HTML, or run `src/monte_carlo.R` directly  
3. Enjoy the ducky results! 🦆💛

### Python version
1. Install dependencies: `pip install numpy pandas`  
2. Run the script: `python src/simulation.py`  
3. Output should match the R version 🎉

---

## 📝 Notes

- HTML file can be opened directly in a browser  
- Both R and Python versions can verify each other’s results  
- This project is mainly for practice; the code is cute but not production-ready 😝

---

## ⚖️ License

MIT License  
© 2025 Lyle Liu

