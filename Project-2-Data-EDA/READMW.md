# 📊 Project 2: Exploratory Data Analysis (EDA)

## 🎯 Objective
Analyze e-commerce data to extract customer behavior insights and evaluate financial performance.

---

## 🛠️ Tech Stack
`Python` · `Pandas` · `Matplotlib` · `Seaborn` · `Jupyter Notebook`

---

## 📊 Key Insights

### 📈 Descriptive Statistics
- Average Order Value: **$1,053.96**
- Median Order Value: **$823.61**
- Right-skewed distribution indicating high-value transactions

### 🚨 Outliers
- Applied IQR method
- Identified **8 high-value transactions**
- Retained as valid premium customer signals

### 💰 Financial Analysis

| Metric | Value |
|---|---|
| Gross Revenue | $1,264,761.96 |
| Net Revenue | $488,759.90 |
| Revenue Reduction | 61.36% |

Main drivers: cancellations & returns

### 📣 Marketing Insights
- Discount codes (`FREESHIP`, `SAVE10`) increased average order value
- Promotions positively influenced customer spending behavior

---

## 📦 Output

- EDA Notebook (`EDA.ipynb`)
- Business insights summary

---

## 📌 Result
Identified key revenue leakage sources and customer behavior patterns to support data-driven business decisions.
