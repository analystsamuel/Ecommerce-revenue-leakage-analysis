# \# E-commerce Order Cancellation \& Revenue Leakage Analysis

# 

# An end-to-end data analytics project investigating order cancellations, returns and revenue leakage using \*\*Python, Pandas, MySQL and Power BI\*\*.

# 

# The project explores Amazon sales data to understand how many orders translate into actual revenue, where revenue is being lost, and which areas of the business require attention.

# 

# \---

# 

# \## Dashboard Preview

# 

# !\[E-commerce Revenue Leakage Dashboard](ecommerce\_dashboard.png)

# 

# \---

# 

# \## 1. Business Problem

# 

# Businesses often focus on the number of orders they receive and their total sales value. However, receiving orders does not necessarily mean generating retained revenue.

# 

# Cancelled, returned, rejected, lost and damaged orders can contribute to significant revenue leakage.

# 

# Without proper analysis, sellers may struggle to identify:

# 

# \- How many orders fail to generate successful sales.

# \- How much revenue is associated with unsuccessful orders.

# \- Which product categories experience higher cancellation rates.

# \- Whether fulfilment methods influence order cancellations.

# \- Which regions contribute most to sales.

# \- Where operational improvements should be prioritised.

# 

# \## 2. Business Gap

# 

# The key gap identified in this project is the lack of visibility into the relationship between order outcomes and retained revenue.

# 

# Businesses may track incoming orders and sales performance without having a clear understanding of how much potential revenue is lost through unsuccessful order fulfilment.

# 

# This project addresses that gap by transforming raw sales data into actionable business insights.

# 

# \## 3. Project Objectives

# 

# The main objectives were to:

# 

# \- Clean and prepare raw Amazon sales data for analysis.

# \- Investigate order outcomes and cancellation patterns.

# \- Quantify revenue associated with cancelled, returned, rejected and lost orders.

# \- Compare cancellation rates across fulfilment methods.

# \- Identify product categories with higher revenue exposure.

# \- Analyse geographical sales distribution.

# \- Develop an interactive dashboard for monitoring order performance and revenue leakage.

# \- Provide recommendations based on analytical findings.

# 

# \## 4. Dataset Overview

# 

# The project uses an Amazon sales orders dataset containing:

# 

# | Attribute | Description |

# |---|---|

# | Original records | 128,975 rows |

# | Original columns | 24 |

# | Cleaned records | 128,975 rows |

# | Cleaned columns | 22 |

# | Data period | March – June 2022 |

# | Primary data | Amazon sales orders |

# 

# The dataset contains information relating to orders, products, sales amounts, order statuses, fulfilment methods, promotions and shipping locations.

# 

# \*\*Note:\*\* March represents a partial month in the dataset.

# 

# \## 5. Tools and Technologies

# 

# | Tool | Purpose |

# |---|---|

# | Python | Data cleaning and preparation |

# | Pandas | Data manipulation and transformation |

# | MySQL | Exploratory data analysis |

# | DBeaver | Database management and SQL execution |

# | Power BI | Data visualization and dashboard development |

# 

# \## 6. Project Workflow

# 

# The project followed an end-to-end analytical workflow.

# 

# \*\*Raw Data → Python Cleaning → MySQL Analysis → Power BI Dashboard → Business Insights\*\*

# 

# \### Phase 1: Data Cleaning and Preparation (Python / Pandas)

# 

# The original dataset contained 128,975 rows and 24 columns.

# 

# The cleaning process included:

# 

# \*\*Structural cleaning\*\*

# \- Removed unnecessary `index` and `Unnamed: 22` columns.

# \- Standardised column names using lowercase and underscores.

# \- Checked for duplicate records; none were found.

# 

# \*\*Missing value treatment\*\*

# 

# | Column | Missing values | Treatment |

# |---|---:|---|

# | amount | 7,795 | Replaced with 0 |

# | currency | 7,795 | Replaced with Unknown |

# | courier\_status | 6,872 | Replaced with Unknown |

# | fulfilled\_by | 89,698 | Replaced with Unknown |

# | promotion\_ids | 49,153 | Replaced with No Promotion |

# | Shipping location fields | 33 each | Replaced with Unknown |

# 

# These treatments were based on the interpretation of the missing values in the dataset.

# 

# \*\*Data standardisation\*\*

# \- Corrected inconsistent category casing.

# \- Standardised state names, abbreviations and spelling variations.

# \- Reduced unique state values from 48 to 37.

# \- Standardised high-volume city names and merged known duplicates.

# 

# \*\*Data type conversion\*\*

# \- Converted the date column from text to datetime.

# \- Converted postal codes from numeric values to text identifiers.

# 

# The cleaned dataset retained all 128,975 records and contained 22 columns with no remaining null values.

# 

# \*\*Known limitation:\*\* Approximately 7,000 unique city values remained because of rare spelling variations and inconsistent entries. City-level analysis therefore focuses on high-volume cities.

# 

# \### Phase 2: SQL Exploratory Data Analysis (MySQL)

# 

# The cleaned dataset was imported into MySQL using DBeaver.

# 

# \*\*Database:\*\* `samaina`

# 

# \*\*Table:\*\* `ecommerce\_sales`

# 

# SQL was used to investigate the business questions behind the project.

# 

# Key analytical areas included:

# 

# \- Overall dataset size and distinct order counts.

# \- Date range and total revenue.

# \- Validation of zero-amount records.

# \- Distribution of order outcomes.

# \- Revenue associated with different order statuses.

# \- Cancellation rates and revenue leakage.

# 

# Order outcomes were grouped into:

# 

# \- Fulfilled

# \- Cancelled

# \- Returned / Rejected

# \- Lost / Damaged

# 

# A data-loading issue was also identified during the process. An unnecessary index column caused values to shift into incorrect database columns. This was resolved by removing the column, re-exporting the cleaned CSV and reloading the table.

# 

# The data was then validated using SQL queries to confirm that the records were correctly aligned.

# 

# \### Phase 3: Power BI Dashboard Development

# 

# Power BI was used to transform the analytical results into an interactive business intelligence dashboard.

# 

# The dashboard provides a view of sales performance, order outcomes and revenue leakage.

# 

# Key dashboard features include:

# 

# \- Revenue and order performance indicators.

# \- Order cancellation and leakage analysis.

# \- Product category comparisons.

# \- Fulfilment method comparisons.

# \- Geographical sales analysis.

# \- INR/USD currency switching.

# \- Interactive filters and slicers.

# 

# The dashboard is designed to help users explore the factors contributing to revenue leakage and identify areas requiring operational attention.

# 

# \## 7. Key Business Insights

# 

# The analysis revealed several important findings.

# 

# \### Order Outcomes

# \- Approximately 14.2% of order lines were cancelled.

# \- Total revenue leakage, including cancelled, returned/rejected and lost/damaged orders, accounted for approximately 15.9% of order lines.

# 

# \### Revenue Leakage

# \- Total gross order value was approximately ₹78.6 million.

# \- Approximately ₹8.3 million was associated with leaked orders.

# \- This represented approximately 10.6% of gross order value.

# \- Revenue after accounting for the identified leakage was approximately ₹70.3 million.

# 

# \### Fulfilment Performance

# \- Merchant-fulfilled orders had a higher cancellation rate of approximately 17%.

# \- Amazon-fulfilled orders had a cancellation rate of approximately 13%.

# 

# This suggests that merchant fulfilment deserves further investigation.

# 

# \### Product Category Performance

# \- Cancellation rates across categories were relatively similar, ranging from approximately 12% to 15%.

# \- Set and Kurta recorded the highest cancellation rates.

# \- Set was the highest revenue-generating category and also had the highest cancellation rate.

# 

# This makes Set an important category to monitor because of its revenue exposure.

# 

# \### Geographical Performance

# \- Bengaluru and Hyderabad were among the top revenue-generating cities.

# \- Geographical analysis helps identify where sales are concentrated.

# 

# \## 8. Business Recommendations

# 

# Based on the findings, the following actions are recommended:

# 

# 1\. \*\*Investigate merchant fulfilment:\*\* Examine why merchant-fulfilled orders experience higher cancellation rates.

# 

# 2\. \*\*Monitor high-exposure categories:\*\* Prioritize Set orders because the category generates substantial revenue while also experiencing relatively high cancellations.

# 

# 3\. \*\*Improve order tracking:\*\* Monitor order outcomes to identify patterns in cancellations, returns and unsuccessful deliveries.

# 

# 4\. \*\*Strengthen fulfilment processes:\*\* Investigate operational issues that may contribute to unsuccessful orders.

# 

# 5\. \*\*Monitor revenue leakage:\*\* Regularly track the value of orders that fail to translate into retained revenue.

# 

# These recommendations provide potential areas for further operational investigation rather than establishing the causes of cancellations.

# 

# \## 9. Assumptions and Limitations

# 

# The analysis includes several assumptions and limitations:

# 

# \- The dataset covers March to June 2022, with March representing a partial month.

# \- Original sales amounts are denominated in INR.

# \- USD conversion uses a fixed exchange rate of 78 INR per USD, adjustable in the dashboard.

# \- Gross revenue includes order value associated with unsuccessful order outcomes.

# \- Blank amounts on cancelled orders were replaced with zero. Consequently, the estimated revenue leakage is a minimum based on the available amount data.

# \- Cancellation and leakage rates are calculated using order line items rather than distinct orders.

# \- Approximately 7,000 unique city spellings remain; geographical analysis focuses on high-volume cities.

# 

# \## 10. Project Structure

# 

# ```text

# Ecommerce-revenue-leakage/

# │

# ├── amazon\_sales\_raw.csv

# ├── amazon\_sales\_cleaned.csv

# ├── amazon\_sales\_cleaning.ipynb

# ├── ecommerce\_queries.sql

# ├── Ecommerce\_Revenue\_Leakage\_Dashboard.pbix

# ├── ecommerce\_dashboard.png

# └── README.md

# ```

# 

# \## 11. Project Deliverables

# 

# The repository contains the following project files:

# 

# \- \*\*Raw dataset:\*\* Original Amazon sales data.

# \- \*\*Cleaned dataset:\*\* Prepared dataset for SQL analysis.

# \- \*\*Python notebook:\*\* Data cleaning and preparation process.

# \- \*\*SQL queries:\*\* Exploratory analysis and business investigations.

# \- \*\*Power BI file:\*\* Interactive dashboard.

# \- \*\*Dashboard preview:\*\* Static dashboard image for quick viewing.

# 

# \## 12. Conclusion

# 

# This project demonstrates how data analytics can help businesses move beyond simply tracking incoming orders and develop a clearer understanding of revenue performance.

# 

# By combining Python, SQL and Power BI, raw sales data was transformed into structured information, analyzed to identify revenue leakage patterns and presented through an interactive dashboard.

# 

# The findings highlight the importance of monitoring order outcomes, fulfilment performance and product-level revenue exposure when making operational decisions.

# 

# \*\*The ultimate goal is to turn sales data into actionable insights that help businesses understand where revenue is being lost and where improvements should be prioritized.\*\*

# 

# \---

# 

# \*\*Project Category:\*\* End-to-End Data Analytics / Business Intelligence

# 

# \*\*Tools:\*\* Python, Pandas, MySQL, Power BI

# 

# \*\*Focus Areas:\*\* Data Cleaning, Exploratory Data Analysis, SQL, Data Visualization, Revenue Leakage Analysis, Business Intelligence

