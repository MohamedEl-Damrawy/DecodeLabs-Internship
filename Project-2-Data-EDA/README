# Global Store - Exploratory Data Analysis (EDA)

## 📌 Project Overview
This project focuses on conducting a comprehensive Exploratory Data Analysis (EDA) on the **Global Store Dataset** (consisting of 1,200 transactions). The objective is to evaluate data integrity, uncover hidden purchasing patterns, analyze marketing channel performance, and isolate critical business leakages to guide strategic decision-making.

---

## 🛠️ Key Analytical Steps & Methodology

### 1. Descriptive Statistics & Distribution Analysis
* Analyzed continuous variables (`Quantity`, `UnitPrice`, `TotalPrice`).
* Identified that while the median order value sits at **$823.61**, the mean is pulled higher to **$1,053.96**, indicating a right-skewed distribution driven by high-value transactions.
* **Product Insights:** **Printers** led unit sales volume (181 units), whereas **Chairs** generated the highest overall gross revenue (**$195,620.11**).

### 2. Outlier Detection (IQR Method)
Using the Interquartile Range (IQR) technique:
* **Formula Applied:** * $Lower~Bound = Q1 - 1.5 \times IQR$
  * $Upper~Bound = Q3 + 1.5 \times IQR$
* **Findings:** Outlier analysis detected **8 legitimate high-value transactions** exceeding the upper bound threshold of **$3,330.41**.
* **Decision:** These rows were retained as they reflect valid bulk purchases (5 units) of premium electronics (Laptops, Printers) by VIP corporate clients, rather than data entry anomalies.

### 3. Financial Forensics (Gross vs. Net Revenue)
* **Gross Revenue:** $1,264,761.96  
* **Net Revenue (Actual Earned):** $488,759.90
* **Revenue Loss Rate:** **61.36%** due to `Cancelled` (250 orders) and `Returned` (247 orders) statuses.

### 4. Marketing ROI & Coupon Impact
* Evaluated the efficacy of discount strategies (`SAVE10`, `WINTER15`, `FREESHIP`).
* Verified that targeted promotional activities effectively boost the *Average Order Value (AOV)* compared to organic non-coupon transactions.

---

## 💡 Strategic Business Recommendations
1. **Address the 61.36% Leakage:** The extremely high volume of cancellations and returns represents a critical operational threat. Logistics, post-purchase communication, and product descriptions must be audited immediately.
2. **Double Down on High-Margin Products:** Prioritize marketing spend on **Chairs** and **Printers** since they yield the highest revenue return per transaction.
3. **Optimize Promotional Campaigns:** Continue leveraging coupon codes as data proves they successfully incentivize customers to expand their basket sizes.

---

## 💻 Tech Stack Used
* **Language:** Python
* **Libraries:** Pandas, Matplotlib, Seaborn
* **Environment:** Jupyter Notebook