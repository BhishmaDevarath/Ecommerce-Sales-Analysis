# 🛍️ E-Commerce Sales Analysis

## 📖 Project Overview
E-commerce businesses generate large volumes of transactional data every day — orders, payments, shipments, returns.

This project analyzes an **E-Commerce Sales dataset** to extract actionable insights on revenue, fulfillment performance, and customer behavior using **Excel, SQL Server, and Power BI**.

---

## 🛠️ Tools & Technologies
- **Excel** → Data preprocessing and initial cleaning
- **SQL Server (T-SQL)** → Data storage, querying, and transformations
- **Power BI** → Interactive dashboard creation
- **VS Code** → SQL script management
- **GitHub** → Project hosting and version control

---

## 🔎 Project Workflow
1. **Data Cleaning (Excel)**
   - Filled missing ShipCity, ShipState, and ShipPostalCode with `UNKNOWN`.
   - Filled missing ShipCountry with `IN` and Currency with `INR`.
   - Filled blank CourierStatus with `UNKNOWN`.
   - Removed rows with blank Amount values.
   - Standardized Dates to `YYYY-MM-DD`.
   - Dropped irrelevant columns (Unnamed: 23, Promotion-IDs, Fulfilled-By).

2. **Database Ingestion (SQL Server)**
   - Imported the cleaned CSV into a dedicated database/table for querying and analysis.

3. **Data Transformation (SQL)**
   - Built monthly, category-wise, and regional sales aggregations.
   - Compared B2B vs B2C revenue and order counts.
   - Identified top-performing SKUs, states, and cities.
   - Performed courier & fulfillment performance analysis.

4. **Visualization (Power BI)**
   - Developed a 4-page Power BI dashboard covering overview, regional insights, product performance, and B2B/B2C & fulfillment trends.

---

## 📊 Dashboard Preview

### 1️⃣ Sales Overview
![Sales Overview](./PowerBI%20Dashboard/Sales%20Overview.jpeg)

### 2️⃣ Product Performance
![Regional Insights](./PowerBI%20Dashboard/Product%20Performance.jpeg)

### 3️⃣ Shipping & Courier Insights
![Product & Category Analysis](./PowerBI%20Dashboard/Shipping%20&%20Courier%20Insights.jpeg)

### 4️⃣ B2B vs B2C & Fulfillment Trends
![B2B vs B2C & Fulfillment Trends](./PowerBI%20Dashboard/B2B%20vs%20B2C%20Analysis.jpeg)

---

## 💡 Key Insights
- 📌 **Top Categories:** Electronics and Apparel contribute the largest share of revenue.
- 📌 **Regional Performance:** Southern and Western regions show the highest total sales.
- 📌 **Fulfillment:** Standard and expedited shipping account for most revenue; expedited orders have higher AOV.
- 📌 **B2B vs B2C:** B2B shows higher average order value while B2C drives volume.
- 📌 **Courier Performance:** Delivery delays concentrate in high-volume metro cities.

---

## 🚀 Future Improvements
- Add predictive sales forecasting using Python (time series / ML).
- Publish dashboard to Power BI Service for scheduled refreshes and sharing.
- Implement customer segmentation and CLTV calculations for targeted marketing.

---

## 📌 Author
👤 **Aman Kumar Singh**  
📧 amankrsingh1831@gmail.com  
🔗 www.linkedin.com/in/aman-kumar-singh-3a3305387

---
