DEFINE dynamic table {{db_prefix}}DB_2.ANALYTICS.DT_SALES_AGGREGATE(
	TOTAL_SALES,
	TOTAL_REVENUE
) target_lag = '20 minutes' refresh_mode = AUTO initialize = ON_SCHEDULE warehouse = PROD_WH
 as
    SELECT COUNT(SALE_ID) as TOTAL_SALES, SUM(AMOUNT) as TOTAL_REVENUE 
    FROM {{db_prefix}}DB_1.TRANSFORM.DT_SALES_BASE;