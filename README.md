<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&color=FF9900&height=200&section=header&text=Amazon%20India%20Sales%20Analysis&fontSize=40&fontColor=ffffff&fontAlignY=38&desc=End-to-End%20Data%20Analyst%20Portfolio%20Project&descAlignY=58&descSize=18" width="100%"/>

<br/>

<img src="https://img.shields.io/badge/Status-Completed-brightgreen?style=for-the-badge"/>
<img src="https://img.shields.io/badge/Domain-E--Commerce%20Analytics-FF9900?style=for-the-badge"/>
<img src="https://img.shields.io/badge/Records-1%2C28%2C975%20Orders-blue?style=for-the-badge"/>
<img src="https://img.shields.io/badge/Timeline-Mar–Jun%202022-purple?style=for-the-badge"/>

<br/><br/>

<img src="https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white"/>
<img src="https://img.shields.io/badge/Pandas-150458?style=for-the-badge&logo=pandas&logoColor=white"/>
<img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white"/>
<img src="https://img.shields.io/badge/Microsoft_Excel-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white"/>
<img src="https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black"/>
<img src="https://img.shields.io/badge/SQLite-003B57?style=for-the-badge&logo=sqlite&logoColor=white"/>

</div>

---

## 📋 Table of Contents

- [Project Overview](#-project-overview)
- [Business Objective](#-business-objective)
- [Dataset Information](#-dataset-information)
- [Workflow & Methodology](#-workflow--methodology)
- [Phase 1 — Data Cleaning & Preparation](#phase-1--data-cleaning--preparation)
- [Phase 2 — SQL Analysis](#phase-2--sql-analysis)
- [Phase 3 — Excel Reporting](#phase-3--excel-reporting)
- [Phase 4 — Power BI Dashboard](#phase-4--power-bi-dashboard)
- [Phase 5 — Business Insights & Recommendations](#phase-5--business-insights--recommendations)
- [Key Metrics at a Glance](#-key-metrics-at-a-glance)
- [Project Structure](#-project-structure)
- [Tools & Technologies](#-tools--technologies)
- [How to Run](#-how-to-run)
- [Skills Demonstrated](#-skills-demonstrated)
- [Connect](#-connect)

---

## 🎯 Project Overview

This is a **complete, production-style Data Analyst portfolio project** that simulates a real analyst assignment inside an e-commerce company. The entire pipeline — from raw messy data all the way to an executive Power BI dashboard and actionable business recommendations — is covered end to end.

The project is structured exactly how analysts work at companies like Amazon, Flipkart, or Myntra: receive raw data, clean it, answer business questions with SQL, build Excel reports for operations teams, build a Power BI dashboard for leadership, and finally communicate insights in plain business language.

> **Full Pipeline:**
> `Raw CSV` → `Python Cleaning` → `SQL Business Queries` → `Excel Pivot Reports` → `Power BI Dashboard` → `Business Recommendations`

---

## 🏢 Business Objective

**Scenario:** You have just joined the Business Intelligence team at an Indian fashion e-commerce company as a Junior Data Analyst. Your manager has handed you 3 months of raw order export data from Amazon India and asked you to deliver the following:

| # | Stakeholder Request | Deliverable |
|---|---|---|
| 1 | "Clean this raw data — it has quality issues" | `amazon_cleaned.csv` + cleaning report |
| 2 | "Answer 10 business questions about our sales performance" | `amazon_queries.sql` — 10 queries |
| 3 | "Build a report for the operations manager" | `amazon_analysis.xlsx` — 6-sheet workbook |
| 4 | "Build a dashboard for the leadership team" | Power BI `.pbix` — 2-page interactive dashboard |
| 5 | "Tell us what actions we should take next quarter" | Written business recommendations |

---

## 🗂️ Dataset Information

| Property | Detail |
|---|---|
| **Source** | Amazon India Fashion & Apparel Sales (Real Public Dataset) |
| **Total Records** | **1,28,975 orders** |
| **Time Period** | March 31, 2022 — June 29, 2022 (Q2 2022) |
| **Product Categories** | Set, Kurta, Western Dress, Top, Ethnic Dress, Blouse, Bottom, Saree, Dupatta |
| **Geography** | Pan India — 28+ states & Union Territories |
| **Sales Channels** | Amazon.in |
| **Raw File** | `Amazon Sale Report.csv` — 24 columns, uncleaned |
| **Clean File** | `amazon_cleaned.csv` — 30 columns after feature engineering |

<details>
<summary>📋 <b>View all 24 original columns</b></summary>

```
Order ID          — Unique order identifier
Date              — Order date (MM-DD-YY format — needs fixing)
Status            — Order status (Shipped / Cancelled / Pending / Returned)
Fulfilment        — Amazon FBA or Merchant fulfilled
Sales Channel     — Amazon.in
ship-service-level — Standard / Expedited
Style             — Internal style code
SKU               — Stock Keeping Unit
Category          — Product category (Set, Kurta, etc.)
Size              — Garment size (XS, S, M, L, XL, XXL, 3XL, Free)
ASIN              — Amazon Standard Identification Number
Courier Status    — Courier delivery status (6,872 nulls — data quality issue)
Qty               — Quantity ordered
currency          — Currency code (7,795 nulls — data quality issue)
Amount            — Order amount in INR (7,795 nulls — data quality issue)
ship-city         — Shipping destination city
ship-state        — Shipping destination state (inconsistent casing — data quality issue)
ship-postal-code  — Pincode
ship-country      — Country (all IN)
promotion-ids     — Applied promotion/discount codes
B2B               — Boolean: True if Business-to-Business order
fulfilled-by      — "Easy Ship" if merchant fulfilled (89,698 nulls for Amazon FBA orders)
Unnamed: 22       — Completely empty column (100% null — phantom column)
```
</details>

---

## 🔄 Workflow & Methodology

```
┌─────────────────────────────────────────────────────────────────────────┐
│                        PROJECT WORKFLOW                                  │
├──────────┬──────────┬──────────┬──────────┬──────────────────────────── │
│          │          │          │          │                              │
│  PHASE 1 │  PHASE 2 │  PHASE 3 │  PHASE 4 │         PHASE 5             │
│          │          │          │          │                              │
│   Data   │   SQL    │  Excel   │ Power BI │  Business Insights          │
│ Cleaning │ Analysis │ Reports  │Dashboard │  & Recommendations          │
│          │          │          │          │                              │
│ Python   │ 10 Query │ 6-Sheet  │ 2-Page   │  5 Findings                 │
│ Pandas   │ Business │Workbook  │Executive │  3 Action Items             │
│ openpyxl │Questions │+ Charts  │Dashboard │  Next Quarter Plan          │
│          │          │          │          │                              │
└──────────┴──────────┴──────────┴──────────┴─────────────────────────────┘
      ↓           ↓          ↓          ↓                ↓
amazon_      amazon_    amazon_    dashboard.      insights in
cleaned.csv  queries.sql analysis  pbix           README + xlsx
             .sql       .xlsx
```

---

## Phase 1 — Data Cleaning & Preparation

### 🔍 Data Quality Issues Found

Before any analysis, a full audit of the raw data was performed. Here are all issues found and how each was resolved:

| Issue # | Column | Problem | Records Affected | Root Cause Identified | Solution Applied |
|---|---|---|---|---|---|
| **DQ-01** | `Amount`, `currency` | Null values | **7,795 rows** | All null-amount rows = cancelled orders where payment was never processed | Filled `Amount → 0`, `currency → 'INR'`; cross-validated with `Status = 'Cancelled'` |
| **DQ-02** | `Courier Status` | Blank values | **6,872 rows** | Cancelled orders never get a courier assigned | Filled with `'Not Applicable'` after confirming all blanks are non-shipped orders |
| **DQ-03** | `ship-state` | Inconsistent casing | ~All rows | Source system exports state names in mixed formats | Standardized: `.str.upper().str.strip()` — "Gujarat", "GUJARAT", "gujarat" → `"GUJARAT"` |
| **DQ-04** | `Date` | Wrong format `MM-DD-YY` | All rows | System export format mismatch | Converted to `YYYY-MM-DD` datetime using `pd.to_datetime(format='%m-%d-%y')` |
| **DQ-05** | `Unnamed: 22` | 100% empty column | All rows | Phantom column from CSV export artifact | Dropped entirely |
| **DQ-06** | `fulfilled-by` | 89,698 nulls | 69.5% of rows | Amazon FBA orders don't populate this field (only Merchant orders do) | Kept column; noted behavior in documentation; not dropped |
| **DQ-07** | All columns | Spaces, hyphens, mixed case in names | All columns | Source system naming inconsistency | Renamed all columns to `snake_case` standard |

### ⚙️ Feature Engineering — New Columns Created

| New Column | Formula | Data Type | Business Purpose |
|---|---|---|---|
| `order_revenue` | `qty × amount` | Float | Actual revenue per order line (not just unit price) |
| `is_cancelled` | `1 if status == 'Cancelled' else 0` | Int (0/1) | Binary flag for cancellation analysis and filtering |
| `is_delivered` | `1 if status == 'Shipped - Delivered to Buyer' else 0` | Int (0/1) | Confirmed delivery tracking |
| `is_returned` | `1 if status in ['Shipped - Returned to Seller', 'Shipped - Returning to Seller']` | Int (0/1) | Return rate calculation |
| `year` | `date.dt.year` | Int | Year-level filtering |
| `month` | `date.dt.month` | Int | Numeric month for sorting |
| `month_name` | `date.dt.strftime('%B')` | String | Human-readable month labels in charts |
| `week` | `date.dt.isocalendar().week` | Int | Weekly trend analysis |

### 🐍 Cleaning Script (Key Code)

```python
import pandas as pd
import numpy as np

# Load raw data
df = pd.read_csv('Amazon Sale Report.csv', low_memory=False)
print(f"Raw shape: {df.shape}")  # (128975, 24)

# Step 1: Drop phantom and index columns
df.drop(columns=['Unnamed: 22', 'index'], errors='ignore', inplace=True)

# Step 2: Standardize all column names to snake_case
df.columns = [
    c.strip().lower().replace(' ', '_').replace('-', '_')
    for c in df.columns
]

# Step 3: Parse and fix date format
df['date'] = pd.to_datetime(df['date'], format='%m-%d-%y', errors='coerce')
df['year']       = df['date'].dt.year
df['month']      = df['date'].dt.month
df['month_name'] = df['date'].dt.strftime('%B')
df['week']       = df['date'].dt.isocalendar().week.astype(int)

# Step 4: Standardize state names (fix inconsistent casing)
df['ship_state'] = df['ship_state'].str.upper().str.strip()

# Step 5: Handle nulls — all tied to cancelled orders
df['amount']         = df['amount'].fillna(0)
df['currency']       = df['currency'].fillna('INR')
df['courier_status'] = df['courier_status'].fillna('Not Applicable')

# Step 6: Feature engineering
df['order_revenue'] = df['qty'] * df['amount']
df['is_cancelled']  = (df['status'] == 'Cancelled').astype(int)
df['is_delivered']  = (df['status'] == 'Shipped - Delivered to Buyer').astype(int)
df['is_returned']   = (df['status'].isin([
    'Shipped - Returned to Seller',
    'Shipped - Returning to Seller'
])).astype(int)
df['b2b'] = df['b2b'].astype(int)

# Save clean dataset
df.to_csv('amazon_cleaned.csv', index=False)
print(f"Clean shape: {df.shape}")  # (128975, 30)
```

**Result:** Raw 24-column dataset → Clean 30-column analytical dataset. Zero unexplained nulls remaining. All columns consistently named and typed.

---

## Phase 2 — SQL Analysis

All 10 business questions were answered using SQL (compatible with SQLite and MySQL). Queries progress from basic aggregations to advanced window functions.

### Database Setup

```sql
-- SQLite setup
sqlite3 amazon_sales.db
.mode csv
.headers on
.import amazon_cleaned.csv orders
```

### Query 1 — Revenue by Category
**Business Question:** Which fashion category generates the most revenue and has the highest average order value?

```sql
SELECT
    category,
    COUNT(*)                              AS total_orders,
    SUM(order_revenue)                    AS total_revenue,
    ROUND(AVG(order_revenue), 2)          AS avg_order_value,
    SUM(qty)                              AS total_units_sold
FROM orders
WHERE is_cancelled = 0
GROUP BY category
ORDER BY total_revenue DESC;
```
> **Finding:** "Set" leads in both total revenue and order volume. "Western Dress" has the highest average order value — premium positioning opportunity.

---

### Query 2 — Cancellation Rate by Category
**Business Question:** Which category has the worst cancellation problem?

```sql
SELECT
    category,
    COUNT(*)                                            AS total_orders,
    SUM(is_cancelled)                                   AS cancelled_orders,
    ROUND(SUM(is_cancelled) * 100.0 / COUNT(*), 2)     AS cancellation_rate_pct
FROM orders
GROUP BY category
ORDER BY cancellation_rate_pct DESC;
```
> **Finding:** "Saree" has the highest cancellation rate (~16%). "Set" has highest absolute cancellations (7,200+) due to sheer volume.

---

### Query 3 — Top 10 States by Revenue with Ranking
**Business Question:** Which states are our biggest markets? Uses `RANK()` window function.

```sql
SELECT
    ship_state,
    COUNT(*)                                    AS total_orders,
    SUM(order_revenue)                          AS total_revenue,
    ROUND(AVG(order_revenue), 2)                AS avg_order_value,
    RANK() OVER (ORDER BY SUM(order_revenue) DESC) AS revenue_rank
FROM orders
WHERE is_cancelled = 0 AND ship_state IS NOT NULL
GROUP BY ship_state
ORDER BY revenue_rank
LIMIT 10;
```
> **Finding:** Maharashtra ranks #1 (₹1.5Cr+). Top 3 states account for ~40% of all revenue — high geographic concentration risk.

---

### Query 4 — Size-wise Demand Analysis
**Business Question:** Which garment sizes are most popular and most profitable?

```sql
SELECT
    size,
    COUNT(*)                    AS total_orders,
    SUM(qty)                    AS total_units,
    SUM(order_revenue)          AS total_revenue,
    ROUND(AVG(amount), 2)       AS avg_price_per_unit
FROM orders
WHERE is_cancelled = 0
GROUP BY size
ORDER BY total_orders DESC;
```
> **Finding:** M, L, XL are top 3 sizes. 3XL demand is significantly higher than available inventory — likely causing cancellations.

---

### Query 5 — Monthly Business Trend
**Business Question:** Is the business growing month over month? When do cancellations peak?

```sql
SELECT
    month_name,
    month,
    COUNT(*)                                        AS total_orders,
    SUM(is_cancelled)                               AS cancellations,
    SUM(is_delivered)                               AS delivered,
    SUM(CASE WHEN is_cancelled = 0
             THEN order_revenue ELSE 0 END)         AS net_revenue,
    ROUND(SUM(is_cancelled)*100.0 / COUNT(*), 2)   AS cancel_rate_pct
FROM orders
GROUP BY month, month_name
ORDER BY month;
```

---

### Query 6 — B2B vs B2C Comparison
**Business Question:** Is the B2B segment worth investing in?

```sql
SELECT
    CASE WHEN b2b = 1 THEN 'B2B (Business)' ELSE 'B2C (Consumer)' END AS customer_type,
    COUNT(*)                                            AS total_orders,
    SUM(order_revenue)                                  AS total_revenue,
    ROUND(AVG(order_revenue), 2)                        AS avg_order_value,
    ROUND(SUM(is_cancelled) * 100.0 / COUNT(*), 2)     AS cancellation_rate_pct,
    SUM(qty)                                            AS total_units
FROM orders
GROUP BY customer_type;
```
> **Finding:** B2B is <1% of total orders but has 3× higher average order value than B2C. Low cancellation rate. Strong ROI potential.

---

### Query 7 — Most Popular Category per State *(Advanced: CTE + Window Function)*
**Business Question:** What does each state prefer to buy? Drives regional marketing strategy.

```sql
WITH state_category_counts AS (
    SELECT
        ship_state,
        category,
        COUNT(*)          AS order_count,
        SUM(order_revenue) AS revenue,
        ROW_NUMBER() OVER (
            PARTITION BY ship_state
            ORDER BY COUNT(*) DESC
        ) AS rn
    FROM orders
    WHERE is_cancelled = 0 AND ship_state IS NOT NULL
    GROUP BY ship_state, category
)
SELECT
    ship_state,
    category    AS top_category,
    order_count,
    revenue
FROM state_category_counts
WHERE rn = 1
ORDER BY order_count DESC;
```
> **Finding:** "Set" dominates South India (Maharashtra, Karnataka, Telangana). "Kurta" leads in North India (UP, Delhi, Rajasthan). This directly informs regional ad campaigns.

---

### Query 8 — Fulfilment Efficiency: Amazon FBA vs Merchant
**Business Question:** Should we push more sellers to use Amazon FBA?

```sql
SELECT
    fulfilment,
    COUNT(*)                                                AS total_orders,
    ROUND(SUM(is_delivered) * 100.0 / COUNT(*), 2)        AS delivery_success_rate_pct,
    ROUND(SUM(is_returned) * 100.0 / COUNT(*), 2)         AS return_rate_pct,
    ROUND(SUM(is_cancelled) * 100.0 / COUNT(*), 2)        AS cancellation_rate_pct,
    ROUND(AVG(CASE WHEN is_cancelled = 0
                   THEN order_revenue END), 2)             AS avg_revenue_per_order
FROM orders
GROUP BY fulfilment;
```

---

### Query 9 — Service Level Analysis (Expedited vs Standard)
**Business Question:** Do Expedited shipping customers behave differently?

```sql
SELECT
    ship_service_level,
    COUNT(*)                                            AS total_orders,
    ROUND(AVG(amount), 2)                               AS avg_order_amount,
    ROUND(SUM(is_cancelled) * 100.0 / COUNT(*), 2)     AS cancel_rate_pct,
    ROUND(SUM(is_delivered) * 100.0 / COUNT(*), 2)     AS delivery_rate_pct
FROM orders
GROUP BY ship_service_level;
```

---

### Query 10 — Promotional vs Regular Orders
**Business Question:** Do promotions drive volume but hurt revenue per order?

```sql
SELECT
    CASE
        WHEN promotion_ids IS NOT NULL AND promotion_ids != ''
        THEN 'Promotional Order'
        ELSE 'Regular Order'
    END AS order_type,
    COUNT(*)                                            AS total_orders,
    ROUND(AVG(amount), 2)                               AS avg_order_amount,
    SUM(order_revenue)                                  AS total_revenue,
    ROUND(SUM(is_cancelled) * 100.0 / COUNT(*), 2)     AS cancellation_rate_pct
FROM orders
GROUP BY order_type;
```

---

## Phase 3 — Excel Reporting

A **6-sheet professional Excel workbook** was built with full formatting, pivot tables, and charts — ready to share with an operations team without any additional setup.

### Workbook Structure

| Sheet | What's Inside | Key Features |
|---|---|---|
| **1. Clean Data** | 1,000-row formatted sample of `amazon_cleaned.csv` | Frozen headers, alternating row shading, cancelled rows highlighted red, number formatting on Amount |
| **2. Pivot Analysis** | 3 pivot tables: Category × Status, Top 15 States Revenue, Monthly Trend | Cross-tab with conditional formatting (red = high cancel rate >15%), revenue formatted with ₹ |
| **3. KPI Summary** | 6 KPI metric cards + Category performance table + Size analysis table | Color-coded KPI cards (orange for orders, blue for revenue, red for cancellations, green for delivery) |
| **4. Charts** | 3 embedded charts | Clustered Bar (Revenue by Category), Line Chart (Monthly trend), Pie Chart (FBA vs Merchant split) |
| **5. Fulfilment Analysis** | Amazon FBA vs Merchant deep dive + B2B vs B2C comparison | Delivery rate, return rate, cancel rate side-by-side for each fulfilment type |
| **6. Business Insights** | 5 insight cards + 3 action item recommendations | Color-highlighted finding cards with specific numbers, recommended actions with measurable targets |

### Color Theme
The workbook uses Amazon's brand palette: Primary `#FF9900` (Orange), Secondary `#232F3E` (Dark Navy), alternating rows in `#F2F2F2`, cancelled rows in `#FADBD8` (light red).

---

## Phase 4 — Power BI Dashboard

A **2-page interactive executive dashboard** built in Power BI Desktop with 8 DAX measures and full slicer interactivity.

### Page 1: Sales Overview Dashboard

```
┌─────────────┬─────────────┬─────────────┬─────────────┬─────────────┐
│  📦 Total   │  💰 Net     │  🧾 Avg     │  ❌ Cancel  │  ✅ Delivery│
│   Orders    │  Revenue    │ Order Value │    Rate     │    Rate     │
│  1,28,975   │ ₹7.22 Cr   │    ₹648     │   14.2%     │   22.3%     │
└─────────────┴─────────────┴─────────────┴─────────────┴─────────────┘
┌────────────────────────────────┐  ┌──────────────────────────────────┐
│   Monthly Revenue & Orders     │  │   Top 10 States by Revenue       │
│   Trend — Line Chart           │  │   Horizontal Bar Chart           │
│   (April → May → June 2022)    │  │   with rank labels               │
└────────────────────────────────┘  └──────────────────────────────────┘
┌──────────────────┐  ┌──────────────────┐  ┌────────────────────────┐
│ Category Revenue │  │ Fulfilment Type  │  │ 🔽 Slicers             │
│ Share — Donut    │  │ Split — Donut    │  │  • Category            │
│                  │  │ FBA vs Merchant  │  │  • Date Range          │
│                  │  │                  │  │  • Fulfilment Type     │
└──────────────────┘  └──────────────────┘  └────────────────────────┘
```

### Page 2: Operations Deep Dive

```
┌──────────────────────────────┐  ┌──────────────────────────────────┐
│  Category × Order Status     │  │  India State Map                 │
│  Matrix Visual (Heatmap)     │  │  Bubble size = Total Orders      │
│  Rows: Category              │  │  Color = Revenue intensity       │
│  Cols: Cancelled/Shipped/... │  │                                  │
└──────────────────────────────┘  └──────────────────────────────────┘
┌──────────────────────────────┐  ┌──────────────────────────────────┐
│  Size-wise Demand            │  │  Bottom 5 States by              │
│  Clustered Bar Chart         │  │  Delivery Rate — Table           │
│  (XS → S → M → L → XL...)   │  │  with conditional formatting     │
└──────────────────────────────┘  └──────────────────────────────────┘
```

### DAX Measures — All 8

```dax
-- 1. Core Revenue (excludes cancelled orders)
Total Revenue =
SUMX(
    FILTER(orders, orders[is_cancelled] = 0),
    orders[order_revenue]
)

-- 2. Cancellation Rate
Cancellation Rate =
DIVIDE(
    COUNTROWS(FILTER(orders, orders[is_cancelled] = 1)),
    COUNTROWS(orders),
    0
)

-- 3. Delivery Success Rate
Delivery Rate =
DIVIDE(
    COUNTROWS(FILTER(orders, orders[is_delivered] = 1)),
    COUNTROWS(orders),
    0
)

-- 4. Average Order Value (non-cancelled only)
Avg Order Value =
DIVIDE([Total Revenue],
       COUNTROWS(FILTER(orders, orders[is_cancelled] = 0)))

-- 5. B2B Revenue
B2B Revenue =
CALCULATE([Total Revenue], orders[b2b] = 1)

-- 6. B2B Order Share %
B2B Order Share =
DIVIDE(
    CALCULATE(COUNTROWS(orders), orders[b2b] = 1),
    COUNTROWS(orders)
)

-- 7. Previous Month Revenue (Time Intelligence)
Revenue Last Month =
CALCULATE(
    [Total Revenue],
    DATEADD(DateTable[Date], -1, MONTH)
)

-- 8. Month-over-Month Revenue Growth
MoM Revenue Growth =
DIVIDE(
    [Total Revenue] - [Revenue Last Month],
    [Revenue Last Month],
    0
)
```

### Date Table (Required for Time Intelligence)

```dax
DateTable =
CALENDAR(DATE(2022, 3, 1), DATE(2022, 6, 30))

-- Calculated columns added to DateTable:
Month Name = FORMAT(DateTable[Date], "MMMM")
Month Num  = MONTH(DateTable[Date])
Quarter    = "Q" & QUARTER(DateTable[Date])
Week Num   = WEEKNUM(DateTable[Date])
```

---

## Phase 5 — Business Insights & Recommendations

### 📊 Key Metrics at a Glance

<table>
<tr>
<th>📦 Volume</th>
<th>💰 Revenue</th>
<th>⚠️ Operations</th>
</tr>
<tr>
<td>

| Metric | Value |
|---|---|
| Total Orders | **1,28,975** |
| Total Units Sold | **1,10,992** |
| Peak Month | **June 2022** |
| Top Category | **Set** |
| Most Popular Size | **M (22,711 orders)** |
| Top State | **Maharashtra** |

</td>
<td>

| Metric | Value |
|---|---|
| Net Revenue | **₹7.22 Crore** |
| Avg Order Value | **₹648** |
| Amazon FBA Share | **69.5%** |
| B2B Avg Order Value | **3× higher than B2C** |
| Top Revenue State | **Maharashtra (₹1.5Cr+)** |

</td>
<td>

| Metric | Value |
|---|---|
| Cancellation Rate | **14.2%** |
| Cancelled Orders | **18,332** |
| Est. Revenue Lost | **₹~1 Crore** |
| Return Rate | Low (<2%) |
| Highest Cancel Category | **Saree (16%)** |

</td>
</tr>
</table>

---

### 💡 5 Key Business Findings

**Finding 1 — 🚨 Cancellation Rate is Costing ₹1 Crore+ Per Quarter**

14.2% of all orders (18,332 orders) are cancelled. Cross-referencing the data reveals that all orders with `Amount = 0` are cancelled — meaning the product was out of stock at the time of ordering. The "Set" category has 7,200+ cancellations purely due to volume, while "Saree" has the worst rate at 16%. This is a direct inventory management failure.

**Finding 2 — 🗺️ Revenue is Dangerously Concentrated in 3 States**

Maharashtra + Karnataka + Tamil Nadu account for approximately 40% of all orders and revenue. This creates significant business risk. Meanwhile, large states like Rajasthan, Madhya Pradesh, Uttar Pradesh, and Bihar show demand signals (orders exist) but have very low penetration — they represent the clearest growth opportunity.

**Finding 3 — 🚚 Amazon FBA Significantly Outperforms Merchant Fulfilment**

Amazon-fulfilled (FBA) orders have measurably higher delivery success rates and lower return rates compared to Merchant-fulfilled orders. Merchant-fulfilled orders show higher "Returned to Seller" and "Rejected" rates. Since 30.5% of orders are still Merchant-fulfilled, pushing sellers to adopt FBA would directly improve customer experience metrics.

**Finding 4 — 👔 B2B Segment is Small But Highly Valuable**

B2B orders represent less than 1% of total order count but carry an average order value roughly 3× higher than regular B2C orders and have lower cancellation rates. This segment is currently under-served — a dedicated B2B sales and account management effort could yield disproportionate revenue returns.

**Finding 5 — 👗 Regional Category Preferences are Clear and Actionable**

SQL analysis (CTE + ROW_NUMBER window function) reveals distinct regional buying patterns: "Set" dominates South and West India (Maharashtra, Karnataka, Telangana), while "Kurta" leads in North India (Uttar Pradesh, Delhi, Rajasthan). This insight directly enables region-specific ad creative and inventory stocking strategies.

---

### 🎯 3 Recommended Actions for Next Quarter

| Priority | Action | Target Metric | How |
|---|---|---|---|
| 🔴 **P1 — Critical** | Reduce cancellation rate from 14.2% → below 10% | Save ₹40L+ in lost revenue per quarter | Implement real-time size + stock availability checks on listing pages. Auto-hide out-of-stock size options rather than accepting orders that will be cancelled. |
| 🟡 **P2 — High** | Increase order share from Tier-2 states by 30% | Unlock ₹50L+ new revenue per quarter | Run Hindi-language targeted campaigns in UP, Rajasthan, MP, Bihar. Push COD (Cash on Delivery) as primary payment option in these states. |
| 🟢 **P3 — Medium** | Move 40% of Merchant-fulfilled sellers to Amazon FBA | Improve delivery rate by 5–8% | Offer FBA fee waiver for first 3 months to small sellers. Focus on Saree and Ethnic Dress categories where Merchant fulfilment dominates and cancellations are highest. |

---

## 📁 Project Structure

```
📦 amazon-india-sales-analysis/
│
├── 📄 README.md                        ← This file — full project documentation
│
├── 📂 data/
│   ├── Amazon Sale Report.csv          ← Original raw dataset (24 columns, uncleaned)
│   └── amazon_cleaned.csv              ← Cleaned & feature-engineered dataset (30 columns)
│
├── 🐍 data_cleaning.py                 ← Python script — run this to reproduce cleaned data
│
├── 🗄️ amazon_queries.sql               ← 10 SQL business queries with comments & findings
│
├── 📗 amazon_analysis.xlsx             ← 6-sheet Excel workbook
│   ├── Sheet 1 — Clean Data            → 1,000 row formatted sample with conditional formatting
│   ├── Sheet 2 — Pivot Analysis        → 3 pivot tables: Category×Status, States, Monthly
│   ├── Sheet 3 — KPI Summary           → 6 KPI metric cards + Category + Size tables
│   ├── Sheet 4 — Charts                → Clustered Bar, Line Chart, Pie Chart
│   ├── Sheet 5 — Fulfilment Analysis   → FBA vs Merchant + B2B vs B2C deep dive
│   └── Sheet 6 — Business Insights     → 5 findings + 3 action items with targets
│
└── 📊 PowerBI_Setup_Guide.txt          ← Step-by-step: Data types → DAX → Dashboard layout
```

---

## 🔧 Tools & Technologies

| Tool | Version | How It Was Used |
|---|---|---|
| **Python** | 3.10+ | Orchestration, data cleaning pipeline, Excel file generation |
| **Pandas** | 1.5+ | Data loading, null handling, type conversions, feature engineering, GroupBy aggregations |
| **NumPy** | 1.23+ | Numerical operations, vectorized computations |
| **openpyxl** | 3.1+ | Programmatic Excel workbook creation — sheets, pivot data, charts, conditional formatting, color themes |
| **SQL (SQLite)** | 3.39+ | All 10 business queries — from basic `GROUP BY` to advanced `CTE + ROW_NUMBER OVER PARTITION BY` |
| **MySQL** | 8.0+ | Alternative query execution environment (all queries tested on both) |
| **Microsoft Excel** | 2016+ | Pivot Tables, Conditional Formatting rules, Chart formatting, KPI layout |
| **Power BI Desktop** | 2024 | Data modeling, Date Table creation, 8 DAX measures, 2-page interactive dashboard |

---

## 🚀 How to Run

### Prerequisites
```bash
Python 3.8+
pip install pandas numpy openpyxl
SQLite3 (built into Python) or MySQL 8.0+
Microsoft Excel 2016+ or LibreOffice Calc
Power BI Desktop (free — download from Microsoft)
```

### Step 1 — Reproduce the Cleaned Data
```bash
# Clone the repository
git clone https://github.com/your-username/amazon-india-sales-analysis.git
cd amazon-india-sales-analysis

# Install Python dependencies
pip install pandas numpy openpyxl

# Run the cleaning script
python data_cleaning.py

# Expected output:
# Raw shape: (128975, 24)
# Clean shape: (128975, 30)
# ✅ Cleaned file saved: amazon_cleaned.csv
```

### Step 2 — Run SQL Queries
```bash
# Option A: SQLite (no additional installation)
sqlite3 amazon_sales.db
.mode csv
.headers on
.import amazon_cleaned.csv orders
.read amazon_queries.sql

# Option B: MySQL
mysql -u root -p
CREATE DATABASE amazon_sales;
USE amazon_sales;
# Import CSV using MySQL Workbench Table Data Import Wizard
SOURCE amazon_queries.sql;
```

### Step 3 — View Excel Report
```
Open amazon_analysis.xlsx in Microsoft Excel 2016 or newer.
All 6 sheets, pivot tables, charts, and formatting are pre-built.
No additional setup required.
```

### Step 4 — Build the Power BI Dashboard
```
1. Open Power BI Desktop
2. Click: Home → Get Data → Text/CSV → Select amazon_cleaned.csv
3. In Power Query Editor: set correct data types for all columns
4. Close & Apply
5. Open PowerBI_Setup_Guide.txt and follow all steps:
   - Create Date Table (DAX formula provided)
   - Create relationship: DateTable[Date] → orders[date]
   - Create all 8 DAX measures (code provided in guide)
   - Build Page 1: Sales Overview (layout diagram provided)
   - Build Page 2: Operations Deep Dive (layout diagram provided)
```

---

## 🎯 Skills Demonstrated

| Category | Skills |
|---|---|
| **Data Cleaning** | Null identification & imputation strategy, type conversion, string standardization, feature engineering, audit documentation |
| **SQL** | `SELECT`, `WHERE`, `GROUP BY`, `ORDER BY`, `HAVING`, `CASE WHEN`, `JOIN`, `LIMIT` — plus advanced: `CTE (WITH)`, `ROW_NUMBER()`, `RANK()`, `PARTITION BY`, `DATEADD` |
| **Excel** | Pivot Tables, `XLOOKUP`, Conditional Formatting rules, Chart creation (Bar/Line/Pie), Freeze Panes, Number Formatting, multi-sheet workbook design |
| **Power BI** | Data Import, Power Query, Data Type management, Date Table creation, Relationships, DAX (`SUMX`, `DIVIDE`, `FILTER`, `CALCULATE`, `COUNTROWS`, `DATEADD`), Slicer setup, Map Visual, Matrix Visual |
| **Business Analysis** | KPI definition, root cause analysis, trend identification, geographic analysis, segment comparison (B2B vs B2C, FBA vs Merchant) |
| **Communication** | Translating data findings into plain-language business insights, writing actionable recommendations with measurable targets, executive dashboard design |

---

## 📬 Connect

<div align="center">

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Let's%20Connect-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://linkedin.com/in/your-profile)
[![GitHub](https://img.shields.io/badge/GitHub-Follow%20Me-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/your-username)
[![Email](https://img.shields.io/badge/Email-Get%20In%20Touch-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:your@email.com)

<br/>

*⭐ If this project helped you — please give it a star. It helps others find it.*

<br/>

**Dataset:** Amazon India Fashion Sales (Public) &nbsp;|&nbsp; **Role:** Data Analyst &nbsp;|&nbsp; **Domain:** E-Commerce &nbsp;|&nbsp; **Year:** 2024

</div>

<img src="https://capsule-render.vercel.app/api?type=waving&color=FF9900&height=100&section=footer" width="100%"/>
