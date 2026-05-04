# Navigation & Details

## Find Datasets
Click the 'datasets' folder
In the folder is the 2 datasets I have used in the this project
- 'bookstore_inventory.csv'
- 'bookstore_sales.csv'

## Data Cleaning & Feature Engineering
Click on the 'notebook' folder
- Old Data Preperation occurred in the 'bookstore_stocking_process.ipynb' & 'bookstore_dataprep.ipynb'
- Ran into joining issues so I resorted to SQL and started fresh
#### Most of the Data Cleaning occurred in BigQuery
#### Click on the 'SQL Code' folder 
- to see the Queries built before joining the tables together
- Got rid of unnecessary columns using these queries
- Calculated a weighted average for unit price
#### Click on 'bookstore_MOS.ipynb'
- In here you will find the calculations for Month of Supply. What does this mean? This is where I answer my question of if a store is 'understocked', 'properly stocked' or overstocked'. 

## Advanced Model Analysis
I used 3 different models in this code.
- Random Forest Regression
- SARIMA
- Prophet
- Click on 'bookstore_MOS&Forecasting_Analysis.ipynb'

Random Forest Regression model was used to see the importance of each column and what is driving revenue up. It was determined that total_qty was a big factor in the profitablity of the stores. This displays that there is a "Supply Limit" hindering the stores from selling more so I decided to look into how much stock each store needed to meet a higher MOS. SARIMA helped me determine the highs and lows of forecasted months for the demand of books for the downtown store. However SARIMA is prone to skewing data due to noise of seasonality. Prophet helped me determine how much inventory was needed to raise the each stores MOS to 1.5.

## Final Results
In the 'notebook' folder click into the 'Final Product' folder
- 'bookstore_Final_Analysis.ipynb'  
This is the file that has the final two models need for the analysis. Random Forest Regressor Model will be used again after the store restocks shelves to determine what Feature Importance is the most significant after stockouts have been resolved. Prophet model will be the next ongoing Forest Model for this retail book store company as it has displayed the best accuracies.
