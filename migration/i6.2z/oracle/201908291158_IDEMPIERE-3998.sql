SET SQLBLANKLINES ON
SET DEFINE OFF

-- IDEMPIERE-3998
-- Aug 29, 2019, 11:57:34 AM CEST
UPDATE AD_Column SET IsToolbarButton='Y',Updated=TO_DATE('2019-08-29 11:57:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=5944
;

-- Aug 29, 2019, 11:58:03 AM CEST
UPDATE AD_Column SET IsToolbarButton='Y',Updated=TO_DATE('2019-08-29 11:58:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=2355
;

SELECT register_migration_script('201908291158_IDEMPIERE-3998.sql') FROM dual
;

