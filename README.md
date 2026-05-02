# MIS-4300 Data Analytics Capstone Project

## Book Store Inventory Oversight

## Project Overview
This project takes a three bookstores in Calgary and uses inventory and sales data to help determine **Inventory Efficiency & Stocking Levels**. Categorizing stores to be **Overstocked, Understocked or Properly Stocked**. Moving inventory between warehouses and retail stores are costly so determining more efficient stocking levels will impact profitability.

### Research Question
How can we use inventory and sales data to determine **Stocking Levels**?

**Dataset Link:**
https://www.kaggle.com/datasets/gabriellecharlton/bookstore-financial-dataset-2019-2024-calgary

### Key Variables;
- **Month of Supply (MOS):** Calculates a proportion based statistic to determine Supply of the Month based on total units sold.
- **wavg_unit_price:** Determined the average price for the month based on the number of units being shipped in. 
- **total_qty:** Total Inventory being shipped into each store per month.
- **units_sold:** Estimated units sold based on Net Revenue and Weighted Average Price.

### Key Findings & Business Impact
- **Best Performing Model: Prophet** was selected as the final most efficient model. It outperformed SARIMA by better capturing aggressive seasonality of the Calgary book store market. **Prophet** provided a robust and scalable results that is easily adjustable compared to SARIMA.
- **Prophet:** Resulted a **MAPE: 7.8%** for a 30 day forecast and a **32.5 error reduction** compared to SARIMA
- **The "Supply Limit:** Random Forest Regression Model revealed that total incoming quantity (total_qty) accounts for **88.9%** of the feature importance for revenue, suggesting a physical supply limit on store earnings.
- **Stockouts:** Every analyzed store is currently running into monthly stockouts, hindering potential revenue.
- **Target Strategy:** To reach a **MOS of 1.5**, the following shipments were calcuated for January 2025:
-   **YYC-DT:** 5,742 units
-   **YYC-NW:** 4,121 units
-   **YYC-SE:** 2,316 units

### Data Prepartion & Engineering

- **SQL Data Prep:** Filtered out unnecessary columns to reduce overengineered results. Generated new aggregate columns
- **Python Filtering & Joins:** Joined the two datasets together and filtered out 2019 & 2020 to remove outliers caused by COVID-19 pandemic
- **Feature Engineering:** Created **Months of Supply (MOS)** feature using the formula *MOS* = "total_qty/units_sold*
- **Financial Metrics:** Calculated **Weighted Average Unit Price (wavg_unit_price)** and Total Net Revenue to align inventory costs with sales performance.
- *Did not use Revenue.* It included gst so it would have skewed the units sold.

### Modeling Comparison
| Model      | Performance Metric | Business Utility |
| ---------- | ---------- | ---------- |
| Random Forest | **R^2: 95%** | "Sanity Check" and used to determine revenue drivers|
| Random Forest Regressor | **Importance total_qty: 88.9%** | Determined revenue driver |
| SARIMA | **11.56% MAPE** | Identified clear spikes in December but was not robust for scaling for multiple stores |
| Prophet | **7.8% MAPE** | Highly scalable: handled retail seasonality with roughly 92% accuracy|
 
 ### Replication
- Step 1: Open notebook folder **(notebook/Final Product)**
- Step 2: Open "_bookstore_Final_Analysis.ipynb_"
- Step 3: Run all cells from top to bottom
- Raw Data files will be found in **(datasets):** "_bookstore_inventory.csv_" & "_bookstore_sales.csv_"
- Data Feature Engineered files are found in **(datasets/SQL Exports):** "_INV_STORE_LEVEL_WEIGHTED_AVG_PRICES.csv_" & "_Store_Level_SALE_Revenue.csv_"
- Final Results and outputs will appear in the last section of the notebook file
- For a detailed walkthrough of the project structure please follow the steps in **Navigation.md**

### Limitations
- Determining what is the ideal amount of inventory per store.   
Categorizing; 
- Overstock
- Properly stocked
- Understocked
- Properly joining the tables as there is only one or two indicators to join the datasets
 
__Feature Engineering Requirements__
- No Units Sold column
- No tracking of what books were sold
- No genres were tracked
