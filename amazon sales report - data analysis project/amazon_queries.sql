-- ============================================================
-- AMAZON INDIA FASHION SALES ANALYSIS — SQL QUERIES
-- Dataset: Amazon Sale Report (Mar-Jun 2022)
-- Total Records: 128,975 orders
-- Analyst Assignment: AmazonIN Fashion Analytics
-- ============================================================

-- TABLE SETUP (SQLite / MySQL compatible)
-- Load amazon_cleaned.csv into a table called 'orders'

-- ============================================================
-- PHASE 2 — BUSINESS QUESTIONS
-- ============================================================

-- -------------------------------------------------------
-- Q1: Revenue by Category
-- Business Question: Which fashion category generates
-- the most revenue and has the highest avg order value?
-- -------------------------------------------------------
SELECT
    category,
    COUNT(*) AS total_orders,
    SUM(order_revenue) AS total_revenue,
    ROUND(AVG(order_revenue), 2) AS avg_order_value,
    SUM(qty) AS total_units_sold
FROM orders
WHERE is_cancelled = 0
GROUP BY category
ORDER BY total_revenue DESC;


-- -------------------------------------------------------
-- Q2: Cancellation Rate by Category
-- Business Question: Which category has the worst
-- cancellation problem that needs urgent attention?
-- -------------------------------------------------------
SELECT
    category,
    COUNT(*) AS total_orders,
    SUM(is_cancelled) AS cancelled_orders,
    ROUND(SUM(is_cancelled) * 100.0 / COUNT(*), 2) AS cancellation_rate_pct
FROM orders
GROUP BY category
ORDER BY cancellation_rate_pct DESC;


-- -------------------------------------------------------
-- Q3: Top 10 States by Revenue (with RANK)
-- Business Question: Which states are our biggest markets
-- and where should we focus logistics investment?
-- -------------------------------------------------------
SELECT
    ship_state,
    COUNT(*) AS total_orders,
    SUM(order_revenue) AS total_revenue,
    ROUND(AVG(order_revenue), 2) AS avg_order_value,
    RANK() OVER (ORDER BY SUM(order_revenue) DESC) AS revenue_rank
FROM orders
WHERE is_cancelled = 0
  AND ship_state IS NOT NULL
GROUP BY ship_state
ORDER BY revenue_rank
LIMIT 10;


-- -------------------------------------------------------
-- Q4: Size Demand Analysis
-- Business Question: Which sizes are most popular and
-- most profitable? Helps with inventory planning.
-- -------------------------------------------------------
SELECT
    size,
    COUNT(*) AS total_orders,
    SUM(qty) AS total_units,
    SUM(order_revenue) AS total_revenue,
    ROUND(AVG(amount), 2) AS avg_price
FROM orders
WHERE is_cancelled = 0
GROUP BY size
ORDER BY total_units DESC;


-- -------------------------------------------------------
-- Q5: Monthly Revenue & Order Trend
-- Business Question: Is the business growing month over
-- month? What months had highest cancellations?
-- -------------------------------------------------------
SELECT
    month_name,
    month,
    COUNT(*) AS total_orders,
    SUM(is_cancelled) AS cancellations,
    SUM(is_delivered) AS delivered_orders,
    ROUND(SUM(CASE WHEN is_cancelled = 0 THEN order_revenue ELSE 0 END), 2) AS net_revenue,
    ROUND(SUM(is_cancelled) * 100.0 / COUNT(*), 2) AS cancel_rate_pct
FROM orders
GROUP BY month, month_name
ORDER BY month;


-- -------------------------------------------------------
-- Q6: B2B vs B2C Comparison
-- Business Question: Is our B2B segment worth investing
-- in? How does it compare to regular consumers?
-- -------------------------------------------------------
SELECT
    CASE WHEN b2b = 1 THEN 'B2B' ELSE 'B2C' END AS customer_type,
    COUNT(*) AS total_orders,
    SUM(order_revenue) AS total_revenue,
    ROUND(AVG(order_revenue), 2) AS avg_order_value,
    ROUND(SUM(is_cancelled) * 100.0 / COUNT(*), 2) AS cancellation_rate_pct,
    SUM(qty) AS total_units
FROM orders
GROUP BY customer_type;


-- -------------------------------------------------------
-- Q7 (ADVANCED): Most Popular Category per State
-- Business Question: What does each state prefer to buy?
-- Helps regional marketing campaigns.
-- Uses CTE + ROW_NUMBER window function
-- -------------------------------------------------------
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
SELECT
    ship_state,
    category AS top_category,
    order_count,
    revenue
FROM state_category_counts
WHERE rn = 1
ORDER BY order_count DESC;


-- -------------------------------------------------------
-- Q8: Fulfilment Efficiency Analysis
-- Business Question: Should we push sellers to use
-- Amazon fulfilment vs self-shipping?
-- -------------------------------------------------------
SELECT
    fulfilment,
    COUNT(*) AS total_orders,
    SUM(is_delivered) AS delivered,
    SUM(is_returned) AS returned,
    SUM(is_cancelled) AS cancelled,
    ROUND(SUM(is_delivered) * 100.0 / COUNT(*), 2) AS delivery_success_rate_pct,
    ROUND(SUM(is_returned) * 100.0 / COUNT(*), 2) AS return_rate_pct,
    ROUND(SUM(is_cancelled) * 100.0 / COUNT(*), 2) AS cancellation_rate_pct,
    ROUND(AVG(CASE WHEN is_cancelled = 0 THEN order_revenue END), 2) AS avg_revenue_per_order
FROM orders
GROUP BY fulfilment;


-- -------------------------------------------------------
-- Q9: Service Level Analysis
-- Business Question: Do customers who pay for Expedited
-- shipping cancel less? Is premium shipping profitable?
-- -------------------------------------------------------
SELECT
    ship_service_level,
    COUNT(*) AS total_orders,
    ROUND(AVG(amount), 2) AS avg_order_amount,
    ROUND(SUM(is_cancelled) * 100.0 / COUNT(*), 2) AS cancel_rate_pct,
    ROUND(SUM(is_delivered) * 100.0 / COUNT(*), 2) AS delivery_rate_pct
FROM orders
GROUP BY ship_service_level;


-- -------------------------------------------------------
-- Q10: Promotion Impact Analysis
-- Business Question: Do promotional orders have higher
-- volumes but lower value? Is promotion ROI positive?
-- -------------------------------------------------------
SELECT
    CASE WHEN promotion_ids IS NOT NULL AND promotion_ids != ''
         THEN 'Promotional Order'
         ELSE 'Regular Order'
    END AS order_type,
    COUNT(*) AS total_orders,
    ROUND(AVG(amount), 2) AS avg_order_amount,
    SUM(order_revenue) AS total_revenue,
    ROUND(SUM(is_cancelled) * 100.0 / COUNT(*), 2) AS cancellation_rate_pct
FROM orders
GROUP BY order_type;

-- ============================================================
-- END OF QUERIES
-- ============================================================
