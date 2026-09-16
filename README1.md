POWER BI – FIRST CLASS PRACTICAL GUIDE
School Data Analysis using Excel + Power BI
============================================================

FILE USED
School_data.xlsx

CLASS OBJECTIVE
- Open Power BI Desktop
- Import an Excel file
- Understand the Power BI interface
- Check the imported school data
- Open Power Query Editor
- Perform basic data cleaning
- Add simple columns in Power Query
- Apply the changes
- Create the first basic visual

DATASET CHECK
Sheet: School_Data
Rows excluding header: 100
Columns: Student_ID, Student_Name, Gender, DOB, Class, Section, Tamil, English, Maths, Science, Social, Attendance

Sheet: Practice_Instructions
Rows excluding header: 11
Columns: Power Query Add Column Practice

============================================================
STEP 1 – OPEN POWER BI DESKTOP
============================================================
1. Open Power BI Desktop.
2. Wait for the Power BI start screen.
3. Do not create a dashboard yet.
4. First understand the process:
   Excel File → Power Query → Data Model → Visuals → Report

Teacher explanation:
Power BI is used to connect to data, clean and transform data,
build a data model, create calculations, and present the results
using interactive reports.

============================================================
STEP 2 – IMPORT THE EXCEL FILE
============================================================
1. Click Home.
2. Click Get data.
3. Select Excel workbook.
4. Browse and select School_data.xlsx.
5. Click Open.
6. The Navigator window will appear.
7. Select the required school-data sheet/table.
8. Click Transform Data.

IMPORTANT:
Choose Transform Data instead of Load for the first class.
This lets students see Power Query before loading the final data.

============================================================
STEP 3 – UNDERSTAND POWER QUERY EDITOR
============================================================
Explain these areas:
1. Queries pane – shows imported tables/sheets.
2. Data preview – shows rows and columns.
3. Formula bar – shows transformation formulas when available.
4. Applied Steps – records every transformation.
5. Ribbon – contains cleaning and transformation tools.

Teacher point:
Power Query does not normally change the original Excel file.
It records the steps needed to transform the imported data.

============================================================
STEP 4 – CHECK COLUMN NAMES
============================================================
1. Look at the column headers.
2. Make sure the first row contains proper column names.
3. If required, use Home → Use First Row as Headers.
4. Check that there are no unnecessary blank columns.

Practice:
Ask students to identify:
- Student-related columns
- Class/grade-related columns
- Marks/score-related columns
- Attendance-related columns
- Any other school-related fields in the workbook

============================================================
STEP 5 – CHECK DATA TYPES
============================================================
1. Click a column.
2. Look at the data type icon beside the column name.
3. Check whether the type is correct.
4. Typical types are:
   Text
   Whole Number
   Decimal Number
   Date
   Date/Time
   True/False
5. To change a type, select the column.
6. Go to Transform → Data Type.

Example:
Student Name → Text
Age → Whole Number
Marks → Whole Number or Decimal Number
Date → Date

============================================================
STEP 6 – REMOVE DUPLICATES
============================================================
1. Select the column(s) that identify a unique student record.
2. Go to Home → Remove Rows → Remove Duplicates.
3. Check the row count before and after.
4. Explain that duplicate removal depends on the business rule.

Class question:
Should two rows with the same student name always be treated as duplicates?
Answer: No. A student can have multiple valid records depending on the dataset.

============================================================
STEP 7 – HANDLE BLANK VALUES
============================================================
1. Find columns containing blank/null values.
2. Use the filter dropdown to inspect blanks.
3. Decide what the blank means before replacing it.
4. Possible actions:
   - Keep the blank
   - Replace it
   - Remove the row

Teacher point:
Never replace every blank with 0 without understanding the meaning of the column.

============================================================
STEP 8 – RENAME A COLUMN
============================================================
1. Right-click the column name.
2. Select Rename.
3. Give the column a clear name.
4. Press Enter.

Example:
Stud_Name → Student Name

============================================================
STEP 9 – ADD A SIMPLE CUSTOM COLUMN
============================================================
1. Go to Add Column.
2. Click Custom Column.
3. Enter a meaningful column name.
4. Build a simple calculation using existing columns.

Example idea:
If the dataset contains multiple subject marks, create:
Total Marks = Subject 1 + Subject 2 + Subject 3

Do not type the exact formula until students identify the actual
column names in their workbook.

============================================================
STEP 10 – ADD AN IF CONDITION
============================================================
1. Go to Add Column.
2. Select Conditional Column.
3. Give the new column a name such as Result or Performance.
4. Create a simple rule based on the relevant marks/score column.
5. Example logic:
   If Marks >= pass mark → Pass
   Otherwise → Fail

Teacher point:
Conditional Column in Power Query is useful for creating categories
before the data enters the Power BI model.

============================================================
STEP 11 – REVIEW APPLIED STEPS
============================================================
1. Look at the Applied Steps pane.
2. You should see steps such as:
   Source
   Navigation
   Promoted Headers
   Changed Type
   Removed Duplicates
   Added Custom
3. Click each step to see how the data changed.
4. Explain that Power Query creates a repeatable transformation process.

============================================================
STEP 12 – CLOSE & APPLY
============================================================
1. After cleaning is complete, click Home.
2. Click Close & Apply.
3. Power BI will load the transformed data into the model.
4. Wait until the loading process finishes.

============================================================
STEP 13 – UNDERSTAND THE THREE MAIN VIEWS
============================================================
1. Report View
   Used to create charts, cards, tables and report pages.

2. Data View
   Used to inspect the loaded table data.

3. Model View
   Used to understand relationships between tables.

============================================================
STEP 14 – CREATE THE FIRST VISUAL
============================================================
1. Go to Report View.
2. Select a simple visual such as a Table or Column Chart.
3. Add a useful school field to the visual.
4. Add a numeric field such as marks, attendance, or another numeric measure.
5. Observe the result.

First-class visual ideas:
- Student count by class
- Average marks by class
- Attendance by class
- Student count by gender, if available

============================================================
STEP 15 – SAVE THE POWER BI FILE
============================================================
1. Click File → Save As.
2. Save the project as:
   School_Data_First_Class.pbix
3. Keep the Excel source file in a known folder.

============================================================
FIRST CLASS PRACTICE ASSIGNMENT
============================================================
Students must complete the following:
1. Import School_data.xlsx.
2. Open Power Query Editor.
3. Identify all columns and their data types.
4. Rename at least one unclear column if necessary.
5. Check for duplicate records.
6. Check for blank/null values.
7. Correct at least one incorrect data type if present.
8. Create one useful custom column, if the dataset supports it.
9. Create one conditional column, if the dataset supports it.
10. Close & Apply.
11. Create one table visual.
12. Create one column/bar chart.
13. Save the PBIX file.

============================================================
TEACHER CLASS FLOW
============================================================
15 min  – What is Power BI?
10 min  – Power BI interface
15 min  – Import Excel
30 min  – Power Query Editor
15 min  – Data cleaning
15 min  – Add Column / Conditional Column
10 min  – Close & Apply
10 min  – First visual
10 min  – Student practice

END OF FIRST CLASS
Next class: Power Query transformations + data cleaning practice + more visuals.
