# 🗃️ Project 3: SQL Data Analysis
## 🎯 Objective
Analyze e-commerce transaction data using SQL to extract business insights across revenue, products, customer behavior, marketing channels, and time trends.

---

## 🛠️ Tech Stack
`SQL` · `SQLite`

---

## 📂 Dataset
**Table:** `Orders`

**Key columns:** `OrderID`, `CustomerID`, `Product`, `Quantity`, `TotalPrice`, `OrderStatus`, `PaymentMethod`, `CouponCode`, `ReferralSource`, `Date`

---

## 🔍 Analysis Structure

### 1. Quick Data Overview
- Row count and full table inspection
- Overall revenue summary: total, average, min, and max order value

### 2. Filtering
- Orders by status, value threshold, payment method, and coupon prefix
- Time-scoped filtering for 2024 orders

### 3. Sorting
- Top orders by revenue and recency
- Applied `LIMIT` for focused views

### 4. Grouping & Aggregation
- Revenue and order count by: order status, product, payment method, referral source, coupon code
- Monthly trend using `SUBSTR(Date, 1, 7)` for time-series insight

### 5. HAVING & Subqueries
- Products exceeding $180,000 in total revenue
- Referral sources with more than 240 orders
- Above-average orders via correlated subquery

---

## 📊 Key Insights

### 💰 Revenue
- Established a clean baseline with total, average, min, and max order values
- High-value orders (>$3,000) segmented for premium customer analysis

### 🛒 Products
- Top products identified by total revenue and order volume
- Min/max sale per product reveals pricing range and outlier transactions

### 📣 Marketing & Acquisition
- Referral source breakdown shows which channels drive the most volume and value
- Coupon code analysis quantifies promotional campaign performance
- Prefixes `SAVE`, `FREE`, `WINTER` captured the primary discount campaigns

### 💳 Payment Behavior
- Credit card usage cross-filtered with delivery status for quality transaction analysis
- Payment method ranking supports checkout and conversion optimization

### 📆 Time Trends
- Monthly aggregation reveals seasonality patterns and revenue growth trajectory
- 2024 filter prepares data for year-over-year comparisons

---

## 📦 Output
- SQL query file (`analysis.sql`)
- Insights summary (`outputs/insights_summary.md`)

---

## 📌 Result
Identified top-performing products, effective referral channels, coupon impact, and monthly revenue trends — enabling data-driven decisions across marketing, operations, and product strategy.