WITH CTE_YoY_Sales AS (

    SELECT YEAR(INVOICEDATE) Y,
     MONTH(INVOICEDATE) M,
    SUM(TOTAL) T
     from RAW_SALES
    GROUP BY YEAR(INVOICEDATE), MONTH(INVOICEDATE)
)
SELECT  "Y" as "Year", "M" as "Month",
"T" as "Revenue"
from CTE_YoY_Sales