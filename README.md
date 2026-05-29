# 📊 DecodeLabs Data Analytics Internship (Batch 2026)

Welcome to my official repository for the **DecodeLabs Data Analytics Internship**. This portfolio showcases a structured progression through real-world data analytics workflows, starting from raw data processing to exploratory analysis and business insights generation.

> The goal of this repository is to demonstrate practical skills in **data cleaning**, **exploratory data analysis**, and **business-driven insights** using Python.

---

## 📁 Repository Structure

Each project is designed as an independent module with its own dataset, notebook, and outputs.

```
📦 DecodeLabs-Internship-2026/
├── 📂 Project-1-Data-Cleaning/
└── 📂 Project-2-EDA-Financial-Diagnostics/
```

---

## 🔹 Project 1: Data Cleaning & Preparation

### 🎯 Objective
Transform a raw e-commerce dataset into a clean, structured, and analysis-ready dataset.

### 🛠️ Tech Stack
`Python` · `Pandas` · `Jupyter Notebook`

### ⚙️ Key Tasks
- Handled missing values in categorical fields
- Standardized date formats to ISO 8601
- Removed inconsistencies in identifiers and duplicated records
- Validated data integrity across all columns

### 📦 Deliverables
- Cleaned dataset (`cleaned_data.xlsx`)
- Data quality report / change log

### 📌 Outcome
Produced a reliable dataset with improved consistency and zero identifier errors, ready for downstream analysis.

---

## 🔹 Project 2: Exploratory Data Analysis (EDA) & Financial Diagnostics

### 🎯 Objective
Analyze the cleaned dataset to uncover customer behavior patterns, evaluate revenue performance, and identify operational risks.

### 🛠️ Tech Stack
`Python` · `Pandas` · `Matplotlib` · `Seaborn` · `Jupyter Notebook`

### 📊 Key Insights

#### 📈 Descriptive Statistics
- **Average Order Value:** $1,053.96
- **Median Order Value:** $823.61
- Data distribution is right-skewed, indicating presence of high-value transactions.

#### 🚨 Outlier Analysis
- Applied **Interquartile Range (IQR)** method
- Identified **8 high-value transactions**
- Retained them as valid business signals representing premium customers

#### 💰 Revenue Analysis
| Metric | Value |
|---|---|
| Gross Revenue | $1,264,761.96 |
| Net Revenue | $488,759.90 |
| Revenue Reduction | 61.36% (due to cancellations & returns) |

#### 📣 Marketing Analysis
- Promotional codes such as `FREESHIP` and `SAVE10` showed higher average order value compared to non-discount orders
- Discounts positively influenced customer spending behavior

### 📦 Deliverables
- EDA Notebook (`EDA.ipynb`)
- Business insights summary

### 📌 Outcome
This analysis highlights key financial inefficiencies and customer behavior trends, providing actionable insights for revenue optimization and marketing strategy improvement.

---

## 🧠 Skills Demonstrated

- Data cleaning and preprocessing
- Exploratory data analysis (EDA)
- Outlier detection using statistical methods
- Business insight generation
- Data storytelling using Python

---

## 📌 Tools & Libraries

| Tool | Purpose |
|---|---|
| 🐍 Python | Core programming language |
| 📊 Pandas | Data manipulation & analysis |
| 🔢 NumPy | Numerical computing |
| 📈 Matplotlib | Data visualization |
| 🎨 Seaborn | Statistical data visualization |
| 📓 Jupyter Notebook | Interactive development environment |

---

## 🚀 About This Internship

This repository represents a hands-on learning journey in data analytics, focusing on applying analytical techniques to real-world business problems and translating raw data into actionable insights.

---

## 👤 Author

**Mohamed Mahmoud El-Damrawy**
Batch 2026 | DecodeLabs Data Analytics Intern

---

## 📌 Notes

- All financial values are based on the provided dataset.
- Analysis is performed for educational and portfolio purposes.
- Each project is self-contained and reproducible.