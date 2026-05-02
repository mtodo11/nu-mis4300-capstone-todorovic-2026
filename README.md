# nu-mis4300-capstone-todorovic-2026

## Book Store Inventory Oversight

### Question of Concern
The concept of this project is to determine if the bookstore company in Calgary is running into stockouts in a positive or negative way. It costs money to move inventory between the warehouse and the in person locations. 

This problem matters due to overspending on shipping of inventory to a store just to sit on a shelf where as that store location may not get enough traffic to match the inventory that have.

**Dataset Link:**
https://www.kaggle.com/datasets/gabriellecharlton/bookstore-financial-dataset-2019-2024-calgary

### Key Findings & Business Impact
- **Best Performing Model: Prophet** was selected as the final most efficient model. It outperformed SARIMA by better capturing aggressive seasonality of the Calgary book store market. **Prophet** provided a robust and scalable results that is easily adjustable compared to SARIMA.
- **Prophet:** Resulted a **MAPE: 7.8%** for a 30 day forecast and a **32.5 error reduction** compared to SARIMA
- **The "Supply Limit:** Random Forest Regression Model revealed that total incoming quantity (total_qty) accounts for **88.9%** of the feature importance for revenue, suggesting a physical supply limit on store earnings.
- **Stockouts:** Every analyzed store is currently running into monthly stockouts, hindering potential revenue.
- **Target Strategy:** To reach a **MOS of 1.5**, the following shipments were calcuated for January 2025:
-   **YYC-DT:** 5,742 units
-   **YYC-NW:** 4,121 units
-   **YYC-SE:** 2,316 units

### Data Prepartion and & Engineering

- **SQL Data Prep:** Filtered out unnecessary columns to reduce overengineered results. Generated new aggregate columns
- **Python Filtering & Joins:** Joined the two datasets together and filtered out 2019 & 2020 to remove outliers caused by COVID-19 pandemic
- **Feature Engineering:** Created **Months of Supply (MOS)** feature using the formula *MOS* = "total_qty/units_sold*
- **Financial Metrics:** Calculated **Weighted Average Unit Price (wavg_unit_price)** and Total Net Revenue to align inventory costs with sales performance.
- *Did not use Revenue.* It included gst so it would have skewed the units sold.

### Modeling Comparison
| Model      | Performance Metric | Business Utility |
| ---------- | ---------- | ---------- |
| Random Forest | **R^2: 95%** | "Sanity Check" and used to determine revenue drivers|
| SARIMA | **11.56% MAPE** | Identified clear spikes in December but was not robust for scaling for multiple stores |
| Prophet | **7.8% MAPE** | Highly scalable: handled retail seasonality with roughly 92% accuracy|
 
 ### Replication
- Edit this

### Variables I plan to use in the "Inventory Dataset";
- Month
- From
- To
- QTY
- unit_cost
- unit_price

### Variables I plan to use in the "Sales Dataset";
- Date
- Year
- Store_id
- transactions
- revenue
- gst_collected
- net_revnue

### Risks and Challenges
Determining what is the ideal amount of inventory per store. 
Categorizing;
- Overstock
- Properly stocked
- Understocked
- Properly joining the tables as there is only one or two indicators to join the datasets

### Steps Process
- Data Cleaning - Remove Null Values.
- Feature Engineering the datasets seperately.
- Joining the tables together to efficiently determine stocking factors.
- Model Creation to determine how each store is stocked

### Modeling
- Random Forest Regression Model
- SARIMA
- Prophet

