WITH CTE_YoY_Sales AS (

    SELECT YEAR(INVOICEDATE) Y,
    SUM(TOTAL) T
     from RAW_SALES
    GROUP BY YEAR(INVOICEDATE)
)
SELECT  "Y" as "Year",
"T" as "Revenue"
from CTE_YoY_Sales