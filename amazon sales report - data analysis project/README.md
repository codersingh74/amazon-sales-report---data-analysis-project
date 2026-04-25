# 🛒 Amazon India Fashion Sales — End-to-End Data Analyst Project

![Project Banner](https://img.shields.io/badge/Role-Data%20Analyst-orange?style=for-the-badge)
![SQL](https://img.shields.io/badge/SQL-SQLite%2FMySQL-blue?style=for-the-badge&logo=mysql)
![Excel](https://img.shields.io/badge/Excel-Advanced-green?style=for-the-badge&logo=microsoft-excel)
![PowerBI](https://img.shields.io/badge/Power%20BI-Dashboard-yellow?style=for-the-badge&logo=powerbi)
![Python](https://img.shields.io/badge/Python-Pandas-purple?style=for-the-badge&logo=python)

---

## 📌 Project Overview

This is a **complete, real-world style Data Analyst portfolio project** built on Amazon India's fashion sales dataset (March–June 2022). The project covers the full data analyst workflow:

> **Raw Data → Cleaning → SQL Analysis → Excel Reporting → Power BI Dashboard → Business Insights**

This project simulates an actual analyst assignment at an e-commerce company where management needs answers to business-critical questions about sales performance, cancellation problems, and regional opportunities.

---

## 🗂️ Dataset Information

| Property | Detail |
|----------|--------|
| Source | Amazon India Fashion Sales (Real Dataset) |
| Records | **1,28,975 orders** |
| Time Period | March 31, 2022 — June 29, 2022 |
| Categories | Set, Kurta, Western Dress, Top, Ethnic Dress, Blouse, Bottom, Saree, Dupatta |
| Geography | Pan India (28+ states) |
| File | `Amazon Sale Report.csv` → `amazon_cleaned.csv` |

### Original Columns
```
Order ID, Date, Status, Fulfilment, Sales Channel, ship-service-level,
Style, SKU, Category, Size, ASIN, Courier Status, Qty, currency,
Amount, ship-city, ship-state, ship-postal-code, B2B, promotion-ids,
fulfilled-by
```

---

## ❓ Business Problems Solved (The Questions)

This project answers **10 real business questions** that a Data/Business Analyst is expected to answer:

### Phase 1 — Data Quality
| # | Problem |
|---|---------|
| P1 | `Amount` and `currency` columns had **7,795 null values** — which orders are affected and why? |
| P2 | `Courier Status` had **6,872 blanks** — is there a pattern (are these all cancelled orders)? |
| P3 | `ship-state` had inconsistent casing (e.g., "Gujarat" vs "GUJARAT") — how to standardize? |
| P4 | `Date` was in `MM-DD-YY` format — needed conversion to proper `YYYY-MM-DD` datetime |
| P5 | `Unnamed: 22` column was 100% empty — should it be dropped? What about `fulfilled-by`? |

### Phase 2 — Business Analysis (SQL)
| # | Business Question |
|---|-----------------|
| Q1 | Which **fashion category** generates the most revenue and has the best average order value? |
| Q2 | Which category has the **highest cancellation rate** and needs urgent fixing? |
| Q3 | Which **states** are our biggest markets? Where should we invest in logistics? |
| Q4 | Which **sizes** (S/M/L/XL/XXL/3XL) are most popular and most profitable? |
| Q5 | Is the business **growing month-over-month**? What months had peak cancellations? |
| Q6 | How does **B2B vs B2C** compare — is the B2B segment worth investing in? |
| Q7 | What is the **most popular category in each state**? (Regional preference analysis) |
| Q8 | Is **Amazon Fulfilment (FBA)** more reliable than Merchant fulfilment? By how much? |
| Q9 | Do customers paying for **Expedited shipping** cancel less than Standard shipping customers? |
| Q10 | Do **promotional orders** have higher volumes but lower value? Is promotion ROI positive? |

---

## 📊 Key Findings (From Real Data)

| Metric | Value |
|--------|-------|
| 📦 Total Orders | 1,28,975 |
| 💰 Net Revenue | ₹7.22 Crore (₹72,273,492) |
| ❌ Cancellation Rate | **14.2%** (18,332 cancelled orders) |
| ✅ Delivery Rate | 22.3% (rest "Shipped" / in-transit) |
| 🏆 Top Category | **Set** (highest revenue) |
| 🗺️ Top State | **Maharashtra** (₹1.5Cr+ revenue) |
| 👕 Most Popular Size | **M** (22,711 orders) |
| 📅 Peak Month | **June 2022** |
| 🏭 FBA vs Merchant | Amazon FBA: 69.5% of orders |
| 👔 B2B Share | <1% orders but higher avg value |

---

## 🔧 Tools & Technologies Used

| Tool | Purpose |
|------|---------|
| **Python (Pandas, NumPy)** | Data cleaning, transformation, EDA |
| **openpyxl** | Excel workbook creation with formatting & charts |
| **SQL (SQLite/MySQL)** | Business queries, aggregations, window functions |
| **Power BI Desktop** | Interactive dashboard, DAX measures |
| **Excel** | Pivot tables, conditional formatting, charts |

---

## 📁 Project File Structure

```
amazon_project/
│
├── 📄 README.md                    ← You are here
│
├── 📊 Data Files
│   ├── Amazon Sale Report.csv      ← Original raw data
│   └── amazon_cleaned.csv          ← Cleaned dataset (30 columns)
│
├── 🐍 Analysis
│   └── amazon_queries.sql          ← 10 SQL queries with business context
│
├── 📗 Excel
│   └── amazon_analysis.xlsx        ← 6-sheet professional workbook
│       ├── Sheet 1: Clean Data     (1,000 row sample with formatting)
│       ├── Sheet 2: Pivot Analysis (3 pivot tables)
│       ├── Sheet 3: KPI Summary    (KPI cards + category + size tables)
│       ├── Sheet 4: Charts         (Bar, Line, Pie charts)
│       ├── Sheet 5: Fulfilment     (FBA vs Merchant + B2B vs B2C)
│       └── Sheet 6: Business Insights (Findings + Action Items)
│
└── 📊 Power BI
    └── PowerBI_Setup_Guide.txt     ← DAX measures + dashboard layout guide
```

---

## 🧹 Data Cleaning Steps (Phase 1)

### Problems Found in Raw Data

```python
# Problem 1: 7,795 rows had null Amount and Currency
# Root Cause: These are all Cancelled orders (Amount never captured)
# Solution: Fill Amount → 0, Currency → 'INR', flag as is_cancelled = 1

# Problem 2: 6,872 null Courier Status values
# Root Cause: Cancelled orders have no courier assigned
# Solution: Fill with 'Not Applicable'

# Problem 3: ship-state inconsistent casing
# e.g., "Gujarat", "GUJARAT", "gujarat" are all the same state
# Solution: df['ship_state'] = df['ship_state'].str.upper().str.strip()

# Problem 4: Date format MM-DD-YY
# Solution: pd.to_datetime(df['date'], format='%m-%d-%y')

# Problem 5: Unnamed: 22 column — 100% empty → Dropped
# fulfilled-by — 89,698 nulls (Amazon-fulfilled don't have this) → Kept, noted

# Problem 6: Column names had spaces, hyphens, mixed case
# Solution: Standardized to snake_case
```

### New Columns Added

| New Column | Formula | Purpose |
|------------|---------|---------|
| `order_revenue` | `qty × amount` | Actual revenue per order |
| `is_cancelled` | `1 if status == 'Cancelled' else 0` | Flag for analysis |
| `is_delivered` | `1 if status == 'Shipped - Delivered to Buyer' else 0` | Delivery metric |
| `is_returned` | `1 if status in [returned statuses] else 0` | Return metric |
| `year`, `month`, `month_name` | Extracted from `date` | Time analysis |
| `week` | `date.dt.isocalendar().week` | Weekly trends |

---

## 🗄️ SQL Highlights

### Most Interesting Query — State × Category Preference (Window Function)

```sql
WITH state_category_counts AS (
    SELECT
        ship_state,
        category,
        COUNT(*) AS order_count,
        SUM(order_revenue) AS revenue,
        ROW_NUMBER() OVER (
            PARTITION BY ship_state
            ORDER BY COUNT(*) DESC
        ) AS rn
    FROM orders
    WHERE is_cancelled = 0
      AND ship_state IS NOT NULL
    GROUP BY ship_state, category
)
SELECT ship_state, category AS top_category, order_count, revenue
FROM state_category_counts
WHERE rn = 1
ORDER BY order_count DESC;
```
> **Finding:** "Set" dominates in southern states (Maharashtra, Karnataka, Telangana). "Kurta" leads in northern states (UP, Delhi, Rajasthan).

### Cancellation Rate by Category

```sql
SELECT
    category,
    COUNT(*) AS total_orders,
    SUM(is_cancelled) AS cancelled_orders,
    ROUND(SUM(is_cancelled) * 100.0 / COUNT(*), 2) AS cancellation_rate_pct
FROM orders
GROUP BY category
ORDER BY cancellation_rate_pct DESC;
```
> **Finding:** "Saree" has the highest cancellation rate (~16%). "Set" has the highest absolute cancellations (7,200+) due to volume.

---

## 📈 Excel Workbook Highlights

- **6 fully formatted sheets** with professional Amazon color theme (Orange #FF9900, Dark Navy #232F3E)
- **Pivot Table 1:** Category × Status cross-tab with conditional formatting (red = high cancel rate)
- **Pivot Table 2:** Top 15 states by revenue with alternating row colors
- **Pivot Table 3:** Monthly order trend with cancel rate column
- **3 Charts:** Revenue by Category (Bar), Monthly Trend (Line), Fulfilment Split (Pie)
- **KPI Cards Row:** 6 key metrics at a glance

---

## 📊 Power BI Dashboard

### Page 1 — Sales Overview
- **5 KPI Cards:** Total Orders, Net Revenue, Avg Order Value, Cancellation Rate, Delivery Rate
- **Line Chart:** Monthly Revenue & Orders Trend (April–June 2022)
- **Horizontal Bar:** Top 10 States by Revenue
- **Donut Chart:** Category Revenue Share
- **Slicers:** Category, Date Range, Fulfilment Type

### Page 2 — Operations Deep Dive
- **Matrix Visual:** Category × Order Status (heatmap-style)
- **India Map:** State-wise order density
- **Bar Chart:** Size-wise demand comparison
- **Table:** Bottom performers by delivery success rate

### DAX Measures Written
```dax
Total Revenue = 
SUMX(FILTER(orders, orders[is_cancelled]=0), orders[order_revenue])

Cancellation Rate = 
DIVIDE(COUNTROWS(FILTER(orders, orders[is_cancelled]=1)), COUNTROWS(orders), 0)

MoM Revenue Growth = 
DIVIDE([Total Revenue] - [Revenue Last Month], [Revenue Last Month], 0)
```

---

## 💡 Top 3 Business Recommendations

1. **Fix Cancellation (Priority 1):** 14.2% cancellation rate = ₹~1 Crore lost revenue. Root cause appears to be size unavailability — implement real-time stock checks on listing pages.

2. **Expand Tier-2 States:** Maharashtra + Karnataka + Tamil Nadu = 40% orders. States like MP, Bihar, Rajasthan are massively underpenetrated — targeted regional campaigns can unlock ₹50L+ additional revenue.

3. **Push FBA Adoption:** Amazon-fulfilled orders have higher delivery success and lower returns. Incentivizing Merchant sellers to switch to FBA will improve customer satisfaction scores.

---

## 🚀 How to Run This Project

### 1. Python / Data Cleaning
```bash
pip install pandas numpy openpyxl
python data_cleaning.py
```

### 2. SQL Analysis
```bash
# Load into SQLite
sqlite3 amazon_sales.db
.import amazon_cleaned.csv orders
.read amazon_queries.sql
```

### 3. Excel
Open `amazon_analysis.xlsx` directly in Microsoft Excel 2016+

### 4. Power BI
1. Open Power BI Desktop
2. Get Data → CSV → Select `amazon_cleaned.csv`
3. Follow `PowerBI_Setup_Guide.txt` step by step

---

## 👤 About This Project

This project was built as part of a **Data Analyst Portfolio** to demonstrate skills in:
- ✅ Real-world data cleaning & preparation
- ✅ SQL querying (basic to advanced with CTEs & Window Functions)
- ✅ Excel reporting (Pivot Tables, Charts, Conditional Formatting)
- ✅ Power BI dashboard creation with DAX measures
- ✅ Business storytelling — translating data into actionable recommendations

**Dataset:** Amazon India Fashion Sales (Public Dataset)  
**Tools:** Python, SQL, Excel, Power BI  

---

*⭐ If you found this project useful, consider starring the repository!*
