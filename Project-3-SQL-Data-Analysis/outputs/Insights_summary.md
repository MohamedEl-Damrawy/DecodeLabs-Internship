# 📊 Insights Summary — Project 3: SQL Data Analysis
## Dataset: Orders (E-Commerce Transactions)

---

## 1. Overall Summary

| Metric | Value |
|---|---|
| Total Orders | Queried via `COUNT(*)` |
| Total Revenue | `SUM(TotalPrice)` — rounded to 2 decimals |
| Avg Order Value | `AVG(TotalPrice)` |
| Min Order Value | `MIN(TotalPrice)` |
| Max Order Value | `MAX(TotalPrice)` |

> Revenue and order volume baselines were established before any filtering, giving a clean reference point for all further breakdowns.

---

## 2. Filtering Insights

### ✅ Delivered Orders
- Extracted all orders where `OrderStatus = 'Delivered'`, sorted by highest value.
- Reveals the most valuable successfully completed transactions.

### 💎 High-Value Orders (`TotalPrice > 3000`)
- Isolated premium transactions to identify top-spending customers and products.
- Useful for VIP segmentation or loyalty programs.

### 💳 Delivered + Credit Card
- Combined status and payment method filters to pinpoint high-confidence, completed credit card transactions.
- Strong signal for preferred payment behavior among successful buyers.

### 🏷️ Coupon Usage
- Filtered for coupons starting with `SAVE`, `FREE`, or `WINTER` — common campaign prefixes.
- Reveals which promotional campaigns drove the most order activity.

### 📅 2024 Orders
- Time-scoped to 2024 using `Date LIKE '2024%'` for year-over-year analysis readiness.

---

## 3. Sorting Insights

- Top 10 orders by `TotalPrice DESC` — quick view of highest revenue transactions.
- Top 20 most recent orders by `Date DESC` — useful for operational monitoring and freshness checks.

---

## 4. Grouping Insights

### 📦 By Order Status
- Revenue and order count broken down by status (Delivered, Cancelled, Returned, etc.).
- Identifies revenue leakage from non-delivered statuses.

### 🛒 By Product
- Per-product breakdown: order count, total revenue, average, min, and max sale.
- Pinpoints best-sellers and high-margin products.

### 💰 By Payment Method
- Ranks payment methods by order count and total revenue.
- Informs checkout optimization decisions.

### 📣 By Referral Source
- Compares acquisition channels by volume and value.
- Highlights which marketing channels bring the most — and the most valuable — customers.

### 🎟️ By Coupon Code
- Usage count and revenue per coupon code.
- Measures promotional effectiveness and ROI per campaign.

### 📆 Monthly Trend
- Monthly order count and revenue using `SUBSTR(Date, 1, 7)`.
- Reveals seasonality, growth trends, and slow periods.

---

## 5. Advanced Filtering (HAVING + Subquery)

### 🏆 Top Revenue Products
- `HAVING SUM(TotalPrice) > 180,000` filters for products that are strong revenue contributors.
- Reduces noise from niche or low-volume items.

### 📡 Strong Referral Sources
- `HAVING COUNT(*) > 240` isolates high-volume acquisition channels.
- Supports budget allocation toward proven channels.

### 📈 Above-Average Orders
- Subquery computes the global average; outer query returns all orders above it.
- Effective way to identify premium transactions without hardcoding thresholds.

---

## 🔑 Key Takeaways

- SQL filtering and grouping revealed clear segmentation across products, channels, payment methods, and order statuses.
- Coupon and referral analysis supports data-driven marketing decisions.
- Monthly trend queries lay the groundwork for time-series and forecasting work.
- High-value and above-average order filters enable customer segmentation without external tools.