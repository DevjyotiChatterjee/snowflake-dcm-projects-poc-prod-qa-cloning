DEFINE task {{db_prefix}}DB_1."TRANSFORM"."DAILY_CLEANUP"
	schedule='USING CRON 0 0 * * * UTC'
    STARTED = TRUE
    as CALL {{db_prefix}}DB_1.TRANSFORM.CLEANSE_DATA();