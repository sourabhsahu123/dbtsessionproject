WITH CTE_Customer as (

    SELECT DISTINCT "CUSTOMER","GENDER"
    FROM RAW_SALES
)

SELECT "CUSTOMER" as "CUSTOMER",
"GENDER" as "GENDER"
 from CTE_Customer