DEFINE dynamic table {{db_prefix}}DB_1.TRANSFORM.DT_SALES_BASE(
	SALE_ID,
	AMOUNT
) target_lag = '10 minutes' refresh_mode = AUTO initialize = ON_SCHEDULE warehouse = PROD_WH
 as
    SELECT SALE_ID, AMOUNT FROM {{db_prefix}}DB_1.TRANSFORM.VW_VALID_SALES;