-- IDEMPIERE-3831
-- Dec 15, 2018, 2:47:41 PM CET
INSERT INTO AD_SysConfig (AD_SysConfig_ID,AD_Client_ID,AD_Org_ID,Created,Updated,CreatedBy,UpdatedBy,IsActive,Name,Value,Description,EntityType,ConfigurationLevel,AD_SysConfig_UU) VALUES (200149,0,0,TO_TIMESTAMP('2018-12-15 14:47:40','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2018-12-15 14:47:40','YYYY-MM-DD HH24:MI:SS'),100,100,'Y','INFO_WINDOW_SHOW_SUMMARY_ON_HEADER','Y','Defines where summaries are shown on Info Windows - Y=Header | N=StatusLine','D','C','99bd8197-5672-4170-8c88-a2adbf629f0f')
;

-- Dec 15, 2018, 2:52:44 PM CET
UPDATE AD_Field SET SeqNo=300, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, SeqNoGrid=300, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-12-15 14:52:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=205588
;

-- Dec 15, 2018, 2:52:51 PM CET
UPDATE AD_Field SET AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, SeqNoGrid=290, IsToolbarButton=NULL,Updated=TO_TIMESTAMP('2018-12-15 14:52:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=205863
;

SELECT register_migration_script('201812151450_IDEMPIERE-3831_PR.sql') FROM dual
;

