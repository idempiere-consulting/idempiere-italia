SET SQLBLANKLINES ON
SET DEFINE OFF

-- summary fields on info windows
-- 19/11/2018 14h7min2s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (213819,0,'Calculate Sum (Σ)','Calculate the Sum of numeric content or length','Calculate the Sum (Σ) of the data if the field is numeric, otherwise total sum length of the field.',897,'IsSummarized','''N''',1,'N','N','Y','N','N',0,'N',20,0,0,'Y',TO_DATE('2018-11-19 14:07:02','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-19 14:07:02','YYYY-MM-DD HH24:MI:SS'),100,1241,'Y','N','D','N','N','N','Y','1cfe5ea9-9a5f-4cbf-9152-6de5e6d550bc','Y',0,'N','N','N')
;

-- 19/11/2018 14h7min2s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name,Placeholder, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy,AD_Column_Trl_UU ) SELECT l.AD_Language,t.AD_Column_ID, t.Name,t.Placeholder, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy,Generate_UUID() FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=213819 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 19/11/2018 14h7min7s BRST
ALTER TABLE AD_InfoColumn ADD IsSummarized CHAR(1) DEFAULT 'N' CHECK (IsSummarized IN ('Y','N')) NOT NULL
;

-- 19/11/2018 14h7min38s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan) VALUES (205863,'Calculate Sum (Σ)','Calculate the Sum of numeric content or length','Calculate the Sum (Σ) of the data if the field is numeric, otherwise total sum length of the field.',844,213819,'Y',1,10270,'N','N','N','N',0,0,'Y',TO_DATE('2018-11-19 14:07:38','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-19 14:07:38','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','ab121c9a-a688-4d15-bb35-9c2c96c6a840','Y',10270,2,2)
;

-- 19/11/2018 14h7min38s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help,Placeholder, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy,AD_Field_Trl_UU ) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help,t.Placeholder, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy,Generate_UUID() FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=205863 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/11/2018 14h8min16s BRST
UPDATE AD_Field SET SeqNo=170, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2018-11-19 14:08:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=203829
;

-- 19/11/2018 14h8min16s BRST
UPDATE AD_Field SET SeqNo=180, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2018-11-19 14:08:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=201719
;

-- 19/11/2018 14h8min16s BRST
UPDATE AD_Field SET SeqNo=190, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2018-11-19 14:08:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=203471
;

-- 19/11/2018 14h8min16s BRST
UPDATE AD_Field SET SeqNo=200, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2018-11-19 14:08:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=201720
;

-- 19/11/2018 14h8min16s BRST
UPDATE AD_Field SET SeqNo=210, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2018-11-19 14:08:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=201625
;

-- 19/11/2018 14h8min16s BRST
UPDATE AD_Field SET SeqNo=220, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2018-11-19 14:08:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=203048
;

-- 19/11/2018 14h8min16s BRST
UPDATE AD_Field SET SeqNo=230, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2018-11-19 14:08:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=201635
;

-- 19/11/2018 14h8min16s BRST
UPDATE AD_Field SET SeqNo=240, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2018-11-19 14:08:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=201636
;

-- 19/11/2018 14h8min16s BRST
UPDATE AD_Field SET SeqNo=250, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2018-11-19 14:08:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=13603
;

-- 19/11/2018 14h8min16s BRST
UPDATE AD_Field SET SeqNo=260, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2018-11-19 14:08:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=201622
;

-- 19/11/2018 14h8min16s BRST
UPDATE AD_Field SET SeqNo=270, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2018-11-19 14:08:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=201623
;

-- 19/11/2018 14h8min16s BRST
UPDATE AD_Field SET SeqNo=280, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2018-11-19 14:08:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=13597
;

-- 19/11/2018 14h8min16s BRST
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=290, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, XPosition=5, IsToolbarButton=NULL,Updated=TO_DATE('2018-11-19 14:08:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=205863
;

-- 19/11/2018 14h8min16s BRST
--UPDATE AD_Field SET SeqNo=300, AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, IsToolbarButton=NULL,Updated=TO_DATE('2018-11-19 14:08:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1507884
--;

-- set default value
update ad_infocolumn set issummarized = 'N'
;

-- info window style, summary and special form
-- 24/11/2018 12h48min20s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,FKConstraintType) VALUES (213820,0,'Field Style','Field CSS Style ',895,'AD_FieldStyle_ID',10,'N','N','N','N','N',0,'N',18,200121,0,0,'Y',TO_DATE('2018-11-24 12:48:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-24 12:48:20','YYYY-MM-DD HH24:MI:SS'),100,203012,'Y','N','D','N','N','N','Y','5ccefe9d-2aa6-4856-a724-40d401e00ebf','Y',0,'N','N','N')
;

-- 24/11/2018 12h48min20s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name,Placeholder, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy,AD_Column_Trl_UU ) SELECT l.AD_Language,t.AD_Column_ID, t.Name,t.Placeholder, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy,Generate_UUID() FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=213820 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 24/11/2018 12h48min34s BRST
UPDATE AD_Column SET FKConstraintName='ADFieldStyle_ADInfoWindow', FKConstraintType='N',Updated=TO_DATE('2018-11-24 12:48:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=213820
;

-- 24/11/2018 12h48min34s BRST
ALTER TABLE AD_InfoWindow ADD AD_FieldStyle_ID NUMBER(10) DEFAULT NULL
;

-- 24/11/2018 12h48min34s BRST
ALTER TABLE AD_InfoWindow ADD CONSTRAINT ADFieldStyle_ADInfoWindow FOREIGN KEY (AD_FieldStyle_ID) REFERENCES ad_style(ad_style_id) DEFERRABLE INITIALLY DEFERRED
;

-- 24/11/2018 12h48min47s BRST
--UPDATE AD_Column SET FKConstraintName='COFFieldStyle_ADInfoWindow',Updated=TO_DATE('2018-11-24 12:48:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1522994
--;

-- 24/11/2018 12h49min41s BRST
UPDATE AD_Column SET FKConstraintName='ADFieldStyle_ADInfoWindow', FKConstraintType='N',Updated=TO_DATE('2018-11-24 12:49:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=213820
;

-- 24/11/2018 12h49min41s BRST
--ALTER TABLE AD_InfoWindow ADD AD_FieldStyle_ID NUMBER(10) DEFAULT NULL
--;

-- 24/11/2018 12h49min41s BRST
--ALTER TABLE AD_InfoWindow ADD CONSTRAINT ADFieldStyle_ADInfoWindow FOREIGN KEY (AD_FieldStyle_ID) REFERENCES ad_style(ad_style_id) DEFERRABLE INITIALLY DEFERRED
--;

-- 24/11/2018 12h51min1s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,ColumnSpan) VALUES (205864,'Field Style','Field CSS Style ',842,213820,'Y',10,240,'N','N','N','N',0,0,'Y',TO_DATE('2018-11-24 12:51:01','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-24 12:51:01','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','D','8881da52-7748-4460-af76-fb3c75c99f36','Y',150,2)
;

-- 24/11/2018 12h51min1s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help,Placeholder, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy,AD_Field_Trl_UU ) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help,t.Placeholder, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy,Generate_UUID() FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=205864 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

SELECT register_migration_script('201811241409_IDEMPIERE-3831.sql') FROM dual
;
