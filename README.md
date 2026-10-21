# Customer Behavior Data Analytics Project

## 📌 Project Overview

This project analyzes customer purchasing behavior to identify trends in customer segmentation, product preferences, subscription status, revenue generation, and customer satisfaction.

The project follows an end-to-end data analytics workflow, from loading and cleaning raw data to performing exploratory data analysis (EDA), querying data using SQL, and developing an interactive Power BI dashboard.

The goal is to transform raw customer data into meaningful insights that support data-driven business decisions.

## 🎯 Project Objectives

- Analyze customer purchasing patterns and behavior.
- Clean and prepare data for accurate analysis.
- Perform Exploratory Data Analysis (EDA) using Python.
- Use SQL to analyze customer segments, revenue, discounts, and product preferences.
- Develop an interactive Power BI dashboard.
- Identify key business trends and performance indicators.
- Present findings through a structured analytical report and presentation.

## 📂 Dataset

The project uses a customer purchasing dataset containing information about customer demographics, purchases, subscriptions, discounts, and ratings.

**Key columns include:**

| Column | Description |
|---|---|
| `customer_id` | Unique customer identifier |
| `category` | Product category |
| `item_purchased` | Item purchased by the customer |
| `purchase_amount` | Amount spent on a purchase |
| `previous_purchases` | Number of previous purchases |
| `subscription_status` | Customer subscription status |
| `discount_applied` | Whether a discount was applied |
| `review_rating` | Customer review rating |
| `gender` | Customer gender |
| `age` | Customer age |
| `shipping_type` | Shipping method selected |

*Note: Column names and availability should be verified against the actual dataset.*

## 🛠️ Tools and Technologies

- **Python:** Data loading, cleaning, and exploratory data analysis.
- **Pandas:** Data manipulation and preparation.
- **NumPy:** Numerical operations.
- **PostgreSQL:** Database management and query execution.
- **Power BI:** Interactive dashboard development.
- **Microsoft Excel:** Initial data inspection and validation.
- **Git & GitHub:** Version control and project documentation.

## 🔄 Project Workflow

### 1. Data Loading

- Imported the raw dataset into Python using Pandas.
- Inspected the dataset structure, column names, and data types.
- Loaded the prepared data into PostgreSQL for SQL analysis.

### 2. Data Cleaning

- Checked for missing and duplicate records.
- Validated column data types.
- Identified inconsistent values and formatting issues.
- Prepared the dataset for reliable analysis.

### 3. Exploratory Data Analysis (EDA)

Performed exploratory analysis to understand customer behavior and purchasing trends.

Key areas of investigation included:

- Customer demographics and distribution.
- Purchase amount distribution.
- Product category performance.
- Subscription patterns.
- Customer review ratings.
- Discount usage and purchasing behavior.

### 4. SQL Analysis

Used SQL queries to extract business insights from the customer dataset.

**Key analyses included:**

- Customer segmentation into New, Returning, and Loyal customers.
- Total customer count and average purchase amount.
- Average customer review rating.
- Discount application rate by product.
- Top three most frequently purchased items within each category.
- Revenue and sales comparisons across product categories.
- Customer purchasing patterns based on subscription status.

SQL concepts used:

- Common Table Expressions (CTEs)
- `CASE WHEN` statements
- Aggregate functions such as `COUNT()`, `SUM()`, and `AVG()`
- `GROUP BY` and `ORDER BY`
- Window functions such as `ROW_NUMBER()`
- Conditional aggregation

### 5. Power BI Dashboard

Developed an interactive Customer Behavior Dashboard to present the analytical findings visually.

**Dashboard components:**

- **KPI Cards:** Number of customers, average purchase amount, and average review rating.
- **Subscription Analysis:** Customer distribution by subscription status.
- **Revenue by Category:** Revenue comparison across product categories.
- **Sales by Category:** Category-wise sales performance.
- **Sales by Age Group:** Comparison of purchasing activity across age groups.
- **Interactive Slicers:** Subscription status, gender, product category, and shipping type.

The dashboard enables users to explore customer behavior through interactive filters and visual summaries.

### 6. Reporting and Presentation

- Summarized key findings from Python and SQL analysis.
- Documented business insights and recommendations.
- Prepared a project report highlighting methodology and results.
- Created a presentation using Gamma to communicate the project's objectives, analysis, dashboard, and conclusions.

## 📊 Key Performance Indicators (KPIs)

The dashboard tracks the following indicators:

| KPI | Purpose |
|---|---|
| Number of Customers | Measures the size of the customer base |
| Average Purchase Amount | Measures average customer spending |
| Average Review Rating | Indicates customer satisfaction |
| Revenue by Category | Compares revenue contribution across categories |
| Sales by Category | Evaluates category-level sales performance |
| Customer Subscription Status | Examines subscription distribution |

## 💡 Business Insights

The analysis is designed to help answer the following business questions:

1. Which product categories generate the highest revenue?
2. Which items are purchased most frequently within each category?
3. How do purchasing patterns differ between customer segments?
4. What proportion of customers have active subscriptions?
5. How frequently are discounts applied across products?
6. How do customer ratings vary across purchasing patterns?
7. Which age groups contribute most to sales?
8. Which customer segments may offer opportunities for retention and repeat purchases?

*Add the actual findings from your SQL results and Power BI dashboard before publishing the project.*

## ▶️ How to Run the Project

### Prerequisites

Install or prepare the following tools:

- Python 3.12
- Jupyter Notebook or VS Code
- PostgreSQL and pgAdmin
- Power BI Desktop

### Step 1: Clone the Repository

```bash
git clone https://github.com/YOUR_USERNAME/customer-behavior-analysis.git
cd customer-behavior-analysis
```

### Step 2: Install Python Dependencies

```bash
pip install pandas numpy matplotlib seaborn sqlalchemy psycopg2-binary jupyter
```

### Step 3: Load and Analyze the Dataset

1. Place the dataset in the `data/` directory.
2. Open the Jupyter Notebook in the `notebooks/` directory.
3. Run the cells to load, clean, and explore the data.

### Step 4: Set Up PostgreSQL

1. Create a PostgreSQL database.
2. Import the cleaned dataset into a table named `customer`.
3. Open the SQL scripts in the `sql/` directory.
4. Execute the queries to reproduce the analysis.

### Step 5: Open the Power BI Dashboard

1. Open the `.pbix` file in Power BI Desktop.
2. Configure the data source if required.
3. Refresh the data.
4. Use the slicers and visuals to explore the results.

## 📁 Project Structure

```text
customer-behavior-analysis/
│
├── data/
│   └── customer_data.csv
│
├── notebooks/
│   └── customer_behavior_eda.ipynb
│
├── sql/
│   ├── customer_segmentation.sql
│   ├── discount_analysis.sql
│   └── top_items_by_category.sql
│
├── dashboard/
│   └── customer_behavior_dashboard.pbix
│
├── reports/
│   └── customer_behavior_report.pdf
│
├── presentation/
│   └── customer_behavior_presentation.pdf
│
├── screenshots/
│   └── dashboard.png
│
├── requirements.txt
└── README.md
```

*Update the filenames and folders to match the files actually included in your repository.*

## 📈 Results and Deliverables

The project produces the following deliverables:

- A cleaned and analyzed customer dataset.
- A Python notebook documenting EDA and data preparation.
- SQL scripts for business analysis.
- An interactive Power BI dashboard.
- A report summarizing analytical findings.
- A presentation explaining the methodology and results.

## 🚀 Future Improvements

- Automate the data loading and cleaning process.
- Add customer retention and cohort analysis.
- Develop customer lifetime value (CLV) metrics.
- Build customer segmentation models using machine learning.
- Publish the dashboard to Power BI Service where appropriate.
- Integrate additional datasets for deeper business insights.

## 👨‍💻 Author

**Your Name**

Aspiring Data Analyst | Python | SQL | Power BI | Excel

- **GitHub:** https://github.com/YOUR_USERNAME
- **LinkedIn:** https://www.linkedin.com/in/YOUR_PROFILE/

## 📄 License

This project is intended for educational and portfolio purposes. Add an appropriate license if you plan to distribute or reuse the project publicly.
