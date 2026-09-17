# POWER BI DAX FORMULA NOTES
## Beginner Reference: Excel Formula -> Power BI DAX

---

## 1. SUM()

### Command
SUM()

### Use Case
Used to calculate the total of a numeric column.

### Syntax
Total Sales =
SUM(Sales[Sales])

### Example
Total Sales =
SUM(ecommerce_sales_customer_analytics_150k[net_sales])

### Result
Adds all values in the net_sales column.

---

## 2. AVERAGE()

### Command
AVERAGE()

### Use Case
Used to calculate the average of a numeric column.

### Syntax
Average Sales =
AVERAGE(Sales[Sales])

### Example
Average Rating =
AVERAGE(ecommerce_sales_customer_analytics_150k[customer_rating])

### Result
Returns the average customer rating.

---

## 3. COUNT()

### Command
COUNT()

### Use Case
Counts numeric values in a column.

### Syntax
Total Records =
COUNT(Sales[Order_ID])

### Example
Order Count =
COUNT(ecommerce_sales_customer_analytics_150k[order_id])

### Note
COUNT() counts numeric values. For unique orders, DISTINCTCOUNT() is usually more appropriate.

---

## 4. COUNTA()

### Command
COUNTA()

### Use Case
Counts non-blank values in a column.

### Syntax
Customer Records =
COUNTA(Sales[Customer_ID])

### Example
Customer Records =
COUNTA(ecommerce_sales_customer_analytics_150k[customer_id])

### Note
COUNTA() counts values that are not blank, including text.

---

## 5. COUNTIF()

### Command
CALCULATE() + condition

### Use Case
Used when you want to count rows that satisfy a condition.

### Excel
COUNTIF()

### Power BI DAX Example
Electronics Orders =
CALCULATE(
    COUNTROWS(Sales),
    Sales[category] = "Electronics"
)

### Result
Counts the rows where category is Electronics.

### Beginner Note
Power BI does not normally use COUNTIF() in DAX. Use CALCULATE() with a filter condition.

---

## 6. COUNTIFS()

### Command
CALCULATE() + multiple conditions

### Use Case
Used when you want to count rows using more than one condition.

### Example
Online Electronics Orders =
CALCULATE(
    COUNTROWS(Sales),
    Sales[category] = "Electronics",
    Sales[sales_channel] = "Online"
)

### Result
Counts Electronics orders that came through the Online channel.

---

## 7. SUMIF()

### Command
CALCULATE() + SUM()

### Use Case
Used to calculate a total based on one condition.

### Example
Electronics Sales =
CALCULATE(
    SUM(Sales[net_sales]),
    Sales[category] = "Electronics"
)

### Result
Calculates sales only for Electronics.

---

## 8. SUMIFS()

### Command
CALCULATE() + SUM()

### Use Case
Used to calculate a total based on multiple conditions.

### Example
Online Electronics Sales =
CALCULATE(
    SUM(Sales[net_sales]),
    Sales[category] = "Electronics",
    Sales[sales_channel] = "Online"
)

### Result
Calculates Electronics sales from the Online channel.

---

## 9. IF()

### Command
IF()

### Use Case
Used to create a condition.

### Syntax
IF(condition, value_if_true, value_if_false)

### Example
Profit Status =
IF(
    Sales[profit] > 5000,
    "High Profit",
    "Low Profit"
)

### Result
If profit is greater than 5000, returns High Profit. Otherwise returns Low Profit.

### Note
This type of row-level classification is commonly created as a calculated column.

---

## 10. AND()

### Command
AND()

### Use Case
Used when multiple conditions must be TRUE.

### Example
High Value Customer =
IF(
    AND(
        Sales[net_sales] > 10000,
        Sales[profit] > 2000
    ),
    "Yes",
    "No"
)

### Result
Returns Yes when both conditions are satisfied.

---

## 11. OR()

### Command
OR()

### Use Case
Used when at least one of multiple conditions must be TRUE.

### Example
Priority Order =
IF(
    OR(
        Sales[net_sales] > 20000,
        Sales[profit] > 5000
    ),
    "Priority",
    "Normal"
)

### Result
Returns Priority when either condition is TRUE.

---

## 12. ROUND()

### Command
ROUND()

### Use Case
Used to round a number to a specified number of decimal places.

### Syntax
ROUND(number, number_of_digits)

### Example
Rounded Sales =
ROUND(
    Sales[net_sales],
    0
)

### Result
Rounds sales to the nearest whole number.

---

## 13. MAX()

### Command
MAX()

### Use Case
Returns the largest value in a column.

### Example
Maximum Order Value =
MAX(Sales[net_sales])

### Result
Returns the highest order value.

---

## 14. MIN()

### Command
MIN()

### Use Case
Returns the smallest value in a column.

### Example
Minimum Order Value =
MIN(Sales[net_sales])

### Result
Returns the lowest order value.

---

## 15. DISTINCT()

### Command
DISTINCT()

### Use Case
Returns a table containing unique values from a column.

### Example
Unique Customers =
DISTINCT(
    Sales[customer_id]
)

### Important
DISTINCT() returns a table, not a single number.

### For counting unique customers
Use:

Unique Customers =
DISTINCTCOUNT(
    Sales[customer_id]
)

---

## 16. XLOOKUP()

### Command
RELATED() / LOOKUPVALUE()

### Use Case
Used to bring a value from another table.

### Recommended Approach
If there is an established relationship between tables, use RELATED().

### Example
Product Category =
RELATED(
    Product[category]
)

### Requirement
A valid relationship must exist between the tables.

---

## 17. VLOOKUP()

### Command
RELATED() / LOOKUPVALUE()

### Use Case
Used to retrieve information from another table.

### Example
Product Name =
LOOKUPVALUE(
    Product[product_name],
    Product[product_id],
    Sales[product_id]
)

### Result
Returns the product name matching the product ID.

### Beginner Note
When tables are properly related, RELATED() is often simpler and preferred for a calculated column.

---

## 18. CONCATENATE()

### Command
CONCATENATE() or &

### Use Case
Used to combine text values.

### Example
Full Name =
Sales[first_name] & " " & Sales[last_name]

### Result
Combines first name and last name.

### Recommended
Use & for simple text combinations.

---

## 19. LEFT()

### Command
LEFT()

### Use Case
Extracts characters from the beginning of a text value.

### Syntax
LEFT(text, number_of_characters)

### Example
Customer Code =
LEFT(
    Sales[customer_id],
    5
)

### Result
Returns the first 5 characters.

---

## 20. RIGHT()

### Command
RIGHT()

### Use Case
Extracts characters from the end of a text value.

### Example
Last Characters =
RIGHT(
    Sales[customer_id],
    4
)

### Result
Returns the last 4 characters.

---

## 21. LEN()

### Command
LEN()

### Use Case
Counts the number of characters in a text value.

### Example
Customer ID Length =
LEN(
    Sales[customer_id]
)

### Result
Returns the number of characters in the customer ID.

---

## 22. UPPER()

### Command
UPPER()

### Use Case
Converts text to uppercase.

### Example
Upper Category =
UPPER(
    Sales[category]
)

### Result
"electronics" becomes "ELECTRONICS".

---

## 23. LOWER()

### Command
LOWER()

### Use Case
Converts text to lowercase.

### Example
Lower Category =
LOWER(
    Sales[category]
)

### Result
"ELECTRONICS" becomes "electronics".

---

## 24. TRIM()

### Command
TRIM()

### Use Case
Removes extra spaces from text.

### Example
Clean Customer Name =
TRIM(
    Sales[customer_name]
)

### Result
Removes unnecessary spaces from the beginning, end, and repeated spaces in text.

---

# IMPORTANT: CALCULATED COLUMN VS MEASURE

## Calculated Column

Use a calculated column when you need a value for every row.

### Example

Profit Status =
IF(
    Sales[profit] > 5000,
    "High",
    "Low"
)

Each row gets its own result.

---

## Measure

Use a measure for dynamic calculations used in cards, charts, tables, and KPIs.

### Example

Total Sales =
SUM(Sales[net_sales])

The result changes automatically when filters or slicers are applied.

---

# COMMON BEGINNER MEASURES

## Total Sales

Total Sales =
SUM(Sales[net_sales])

## Total Profit

Total Profit =
SUM(Sales[profit])

## Total Orders

Total Orders =
DISTINCTCOUNT(Sales[order_id])

## Total Customers

Total Customers =
DISTINCTCOUNT(Sales[customer_id])

## Average Order Value

Average Order Value =
DIVIDE(
    [Total Sales],
    [Total Orders],
    0
)

## Profit Margin

Profit Margin =
DIVIDE(
    [Total Profit],
    [Total Sales],
    0
)

---

# BASIC DAX FUNCTIONS TO LEARN IN ORDER

1. SUM()
2. AVERAGE()
3. COUNT()
4. COUNTA()
5. DISTINCTCOUNT()
6. MIN()
7. MAX()
8. IF()
9. DIVIDE()
10. CALCULATE()
11. FILTER()
12. RELATED()
13. LOOKUPVALUE()
14. SUMX()
15. Date and Time Functions
16. Time Intelligence

---

# QUICK REFERENCE

Excel Formula       -> Power BI DAX

SUM()               -> SUM()
AVERAGE()           -> AVERAGE()
COUNT()             -> COUNT()
COUNTA()            -> COUNTA()
COUNTIF()           -> CALCULATE() + COUNTROWS()
COUNTIFS()          -> CALCULATE() + COUNTROWS()
SUMIF()             -> CALCULATE() + SUM()
SUMIFS()            -> CALCULATE() + SUM()
IF()                -> IF()
AND()               -> AND()
OR()                -> OR()
ROUND()             -> ROUND()
MAX()               -> MAX()
MIN()               -> MIN()
Unique values       -> DISTINCT() / DISTINCTCOUNT()
XLOOKUP()           -> RELATED() / LOOKUPVALUE()
VLOOKUP()           -> RELATED() / LOOKUPVALUE()
CONCATENATE()       -> CONCATENATE() / &
LEFT()              -> LEFT()
RIGHT()             -> RIGHT()
LEN()               -> LEN()
UPPER()             -> UPPER()
LOWER()             -> LOWER()
TRIM()              -> TRIM()

---

# BEGINNER PRACTICE TASK

Using the e-commerce dataset, create these measures:

1. Total Sales
2. Total Profit
3. Total Orders
4. Total Customers
5. Total Quantity
6. Average Order Value
7. Average Rating
8. Profit Margin
9. Electronics Sales
10. Online Sales
11. Returned Orders
12. Return Rate

Then create these visuals:

1. Card - Total Sales
2. Card - Total Profit
3. Card - Total Orders
4. Card - Total Customers
5. Line Chart - Sales by Month
6. Bar Chart - Sales by Category
7. Bar Chart - Sales by Region
8. Table - Top Products

