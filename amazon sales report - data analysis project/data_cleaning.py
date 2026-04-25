import pandas as pd
import numpy as np

# ============================================================
# Amazon India Fashion Sales — Data Cleaning Script
# ============================================================

print("Loading raw data...")
df = pd.read_csv('Amazon Sale Report.csv', low_memory=False)
print(f"Raw data shape: {df.shape}")

# Step 1: Drop useless columns
df.drop(columns=['Unnamed: 22', 'index'], errors='ignore', inplace=True)

# Step 2: Standardize column names to snake_case
df.columns = [c.strip().lower().replace(' ', '_').replace('-', '_') for c in df.columns]

# Step 3: Fix date format MM-DD-YY → YYYY-MM-DD
df['date'] = pd.to_datetime(df['date'], format='%m-%d-%y', errors='coerce')
df['year']       = df['date'].dt.year
df['month']      = df['date'].dt.month
df['month_name'] = df['date'].dt.strftime('%B')
df['week']       = df['date'].dt.isocalendar().week.astype(int)

# Step 4: Standardize ship_state (fix inconsistent casing)
df['ship_state'] = df['ship_state'].str.upper().str.strip()

# Step 5: Handle null Amount (all are cancelled orders)
print(f"Null Amount rows: {df['amount'].isna().sum()}")
df['amount']   = df['amount'].fillna(0)
df['currency'] = df['currency'].fillna('INR')

# Step 6: Handle null Courier Status (all are cancelled/pending)
df['courier_status'] = df['courier_status'].fillna('Not Applicable')

# Step 7: Add new analytical columns
df['order_revenue'] = df['qty'] * df['amount']
df['is_cancelled']  = (df['status'] == 'Cancelled').astype(int)
df['is_delivered']  = (df['status'] == 'Shipped - Delivered to Buyer').astype(int)
df['is_returned']   = (df['status'].isin([
    'Shipped - Returned to Seller',
    'Shipped - Returning to Seller'
])).astype(int)
df['b2b'] = df['b2b'].astype(int)

# Step 8: Summary Report
print("\n=== CLEANING SUMMARY ===")
print(f"Final shape: {df.shape}")
print(f"Total Orders: {len(df):,}")
print(f"Cancelled Orders: {df['is_cancelled'].sum():,} ({df['is_cancelled'].mean()*100:.1f}%)")
print(f"Delivered Orders: {df['is_delivered'].sum():,} ({df['is_delivered'].mean()*100:.1f}%)")
print(f"Net Revenue: INR {df[df['is_cancelled']==0]['order_revenue'].sum():,.0f}")
print(f"Remaining Nulls:\n{df.isnull().sum()[df.isnull().sum()>0]}")

# Save
df.to_csv('amazon_cleaned.csv', index=False)
print("\n✅ Cleaned file saved: amazon_cleaned.csv")
