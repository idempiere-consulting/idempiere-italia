DROP VIEW c_invoice_header_vt;

CREATE OR REPLACE VIEW c_invoice_header_vt
AS
  SELECT i.ad_client_id,
         i.ad_org_id,
         i.isactive,
         i.created,
         i.createdby,
         i.updated,
         i.updatedby,
         dt.ad_language,
         i.c_invoice_id,
         i.issotrx,
         i.documentno,
         i.docstatus,
         i.c_doctype_id,
         i.c_bpartner_id,
         bp.value                         AS bpvalue,
         bp.taxid                         AS bptaxid,
         bp.naics,
         bp.duns,
         oi.c_location_id                 AS org_location_id,
         oi.taxid,
         dt.printname                     AS documenttype,
         dt.documentnote                  AS documenttypenote,
         i.c_order_id,
         i.salesrep_id,
         COALESCE(ubp.name, u.name)       AS salesrep_name,
         i.dateinvoiced,
         bpgt.greeting                    AS bpgreeting,
         bp.name,
         bp.name2,
         bpcgt.greeting                   AS bpcontactgreeting,
         bpc.title,
         bpc.phone,
         NULLIF(bpc.name, bp.name)        AS contactname,
         bpl.c_location_id,
         bp.referenceno,
         l.postal
         || l.postal_add                  AS postal,
         i.description,
         i.poreference,
         i.dateordered,
         i.c_currency_id,
         ptt.name                         AS paymentterm,
         ptt.documentnote                 AS paymenttermnote,
         i.c_charge_id,
         i.chargeamt,
         i.totallines,
         i.grandtotal,
         i.grandtotal                     AS amtinwords,
         i.m_pricelist_id,
         i.istaxincluded,
         i.c_campaign_id,
         i.c_project_id,
         i.c_activity_id,
         i.ispaid,
         COALESCE(oi.logo_id, ci.logo_id) AS logo_id,
         i.ad_orgtrx_id                   AS c_invoice_ad_orgtrx_id,
         i.ad_user_id,
         i.c_bpartner_location_id,
         i.c_conversiontype_id,
         i.c_doctypetarget_id,
         i.c_dunninglevel_id,
         i.c_payment_id,
         i.dateacct,
         i.dateprinted,
         i.docaction,
         i.dunninggrace,
         i.generateto,
         i.invoicecollectiontype,
         i.isapproved,
         i.isdiscountprinted,
         i.isindispute,
         i.ispayschedulevalid,
         i.isprinted,
         i.isselfservice                  AS c_invoice_isselfservice,
         i.istransferred,
         i.m_rma_id,
         i.paymentrule,
         i.posted,
         i.processedon,
         i.processing,
         i.ref_invoice_id,
         i.reversal_id,
         i.sendemail,
         i.user1_id,
         i.user2_id,
         ptt.ad_org_id                    AS c_paymentterm_ad_org_id,
         pt.afterdelivery,
         pt.c_paymentterm_id,
         ptt.description                  AS c_paymentterm_description,
         pt.discount,
         pt.discount2,
         pt.discountdays,
         pt.discountdays2,
         pt.fixmonthcutoff,
         pt.fixmonthday,
         pt.fixmonthoffset,
         pt.gracedays,
         ptt.isactive                     AS c_paymentterm_isactive,
         pt.isdefault,
         pt.isduefixed,
         pt.isnextbusinessday,
         pt.isvalid,
         pt.netday,
         pt.netdays,
         pt.paymenttermusage,
         pt.value                         AS c_paymentterm_value,
         bp.acqusitioncost                AS bp_acqusitioncost,
         bp.actuallifetimevalue           AS bp_actuallifetimevalue,
         bp.ad_language                   AS bp_ad_language,
         bp.ad_orgbp_id                   AS bp_ad_orgbp_id,
         bp.ad_org_id                     AS bp_ad_org_id,
         bp.bpartner_parent_id            AS bp_bpartner_parent_id,
         bp.c_bp_group_id                 AS bp_c_bp_group_id,
         bp.c_dunning_id                  AS bp_c_dunning_id,
         bp.c_greeting_id                 AS bp_c_greeting_id,
         bp.c_invoiceschedule_id          AS bp_c_invoiceschedule_id,
         bp.c_paymentterm_id              AS bp_c_paymentterm_id,
         bp.created                       AS bp_created,
         bp.createdby                     AS bp_createdby,
         bp.c_taxgroup_id                 AS bp_c_taxgroup_id,
         bp.deliveryrule                  AS bp_deliveryrule,
         bp.deliveryviarule               AS bp_deliveryviarule,
         bp.description                   AS bp_description,
         bp.dunninggrace                  AS bp_dunninggrace,
         bp.firstsale                     AS bp_firstsale,
         bp.flatdiscount                  AS bp_flatdiscount,
         bp.freightcostrule               AS bp_freightcostrule,
         bp.invoicerule                   AS bp_invoicerule,
         bp.isactive                      AS bp_isactive,
         bp.iscustomer                    AS bp_iscustomer,
         bp.isdiscountprinted             AS bp_isdiscountprinted,
         bp.isemployee                    AS bp_isemployee,
         bp.ismanufacturer                AS bp_ismanufacturer,
         bp.isonetime                     AS bp_isonetime,
         bp.ispotaxexempt                 AS bp_ispotaxexempt,
         bp.isprospect                    AS bp_isprospect,
         bp.issalesrep                    AS bp_issalesrep,
         bp.issummary                     AS bp_issummary,
         bp.istaxexempt                   AS bp_istaxexempt,
         bp.isvendor                      AS bp_isvendor,
         bp.logo_id                       AS bp_logo_id,
         bp.m_discountschema_id           AS bp_m_discountschema_id,
         bp.m_pricelist_id                AS bp_m_pricelist_id,
         bp.naics                         AS bp_naics,
         bp.numberemployees               AS bp_numberemployees,
         bp.paymentrule                   AS bp_paymentrule,
         bp.paymentrulepo                 AS bp_paymentrulepo,
         bp.po_discountschema_id          AS bp_po_discountschema_id,
         bp.po_paymentterm_id             AS bp_po_paymentterm_id,
         bp.po_pricelist_id               AS bp_po_pricelist_id,
         bp.poreference                   AS bp_poreference,
         bp.potentiallifetimevalue        AS bp_potentiallifetimevalue,
         bp.rating                        AS bp_rating,
         bp.salesrep_id                   AS bp_salesrep_id,
         bp.salesvolume                   AS bp_salesvolume,
         bp.sendemail                     AS bp_sendemail,
         bp.shareofcustomer               AS bp_shareofcustomer,
         bp.shelflifeminpct               AS bp_shelflifeminpct,
         bp.so_creditlimit                AS bp_so_creditlimit,
         bp.socreditstatus                AS bp_socreditstatus,
         bp.so_creditused                 AS bp_so_creditused,
         bp.so_description                AS bp_so_description,
         bp.totalopenbalance              AS bp_totalopenbalance,
         bp.updated                       AS bp_updated,
         bp.updatedby                     AS bp_updatedby,
         bp.url                           AS bp_url,
         bpgt.isactive                    AS c_greeting_isactive,
         bpg.isfirstnameonly,
         bpgt.name                        AS c_greeting_name,
         bpl.ad_org_id                    AS bp_location_ad_org_id,
         bpl.c_bpartner_id                AS bp_location_c_bpartner_id,
         bpl.created                      AS bp_location_created,
         bpl.createdby                    AS bp_location_createdby,
         bpl.c_salesregion_id,
         bpl.fax                          AS bp_location_fax,
         bpl.isactive                     AS bp_location_isactive,
         bpl.isbillto,
         bpl.isdn,
         bpl.ispayfrom,
         bpl.isremitto,
         bpl.isshipto,
         bpl.name                         AS bp_location_name,
         bpl.phone                        AS bp_location_phone,
         bpl.phone2                       AS bp_location_phone2,
         bpl.updated                      AS bp_location_updated,
         bpl.updatedby                    AS bp_location_updatedby,
         l.address1,
         l.address2,
         l.address3,
         l.address4,
         l.ad_org_id                      AS c_location_ad_org_id,
         l.c_city_id,
         l.c_country_id,
         l.city,
         l.created                        AS c_location_created,
         l.createdby                      AS c_location_createdby,
         l.c_region_id,
         l.isactive                       AS c_location_isactive,
         l.regionname,
         l.updated                        AS c_location_updated,
         l.updatedby                      AS c_location_updatedby,
         bpc.ad_org_id                    AS ad_user_ad_org_id,
         bpc.ad_orgtrx_id                 AS ad_user_ad_ad_orgtrx_id,
         bpc.birthday                     AS ad_user_ad_birthday,
         bpc.c_bpartner_id                AS ad_user_c_bpartner_id,
         bpc.c_bpartner_location_id       AS ad_user_c_bpartner_location_id,
         bpc.c_greeting_id                AS ad_user_c_greeting_id,
         bpc.comments                     AS ad_user_comments,
         bpc.created                      AS ad_user_created,
         bpc.createdby                    AS ad_user_createdby,
         bpc.description                  AS ad_user_description,
         bpc.email                        AS ad_user_email,
         bpc.fax                          AS ad_user_fax,
         bpc.isactive                     AS ad_user_isactive,
         bpc.lastcontact                  AS ad_user_lastcontact,
         bpc.lastresult                   AS ad_user_lastresult,
         bpc.phone2                       AS ad_user_phone2,
         bpc.supervisor_id                AS ad_user_supervisor_id,
         bpc.updated                      AS ad_user_updated,
         bpc.updatedby                    AS ad_user_updatedby,
         bpc.value                        AS ad_user_value,
         bpcgt.isactive                   AS user_greeting_isactive,
         bpcg.isfirstnameonly             AS user_greeting_isfirstnameonly,
         bpcgt.name                       AS user_greeting_name,
         oi.ad_org_id                     AS ad_orginfo_ad_org_id,
         oi.ad_orgtype_id,
         oi.c_calendar_id,
         oi.created                       AS ad_orginfo_created,
         oi.createdby                     AS ad_orginfo_createdby,
         oi.dropship_warehouse_id,
         oi.duns                          AS ad_orginfo_duns,
         oi.email                         AS ad_orginfo_email,
         oi.fax                           AS ad_orginfo_fax,
         oi.isactive                      AS ad_orginfo_isactive,
         oi.m_warehouse_id,
         oi.parent_org_id,
         oi.phone                         AS ad_orginfo_phone,
         oi.phone2                        AS ad_orginfo_phone2,
         oi.receiptfootermsg,
         oi.supervisor_id,
         oi.updated                       AS ad_orginfo_updated,
         oi.updatedby                     AS ad_orginfo_updatedby,
         u.ad_org_id                      AS salesrep_ad_org_id,
         u.ad_orgtrx_id                   AS salesrep_ad_ad_orgtrx_id,
         u.birthday                       AS salesrep_ad_birthday,
         u.c_bpartner_id                  AS salesrep_c_bpartner_id,
         u.c_bpartner_location_id         AS salesrep_c_bp_location_id,
         u.c_greeting_id                  AS salesrep_c_greeting_id,
         u.comments                       AS salesrep_comments,
         u.created                        AS salesrep_created,
         u.createdby                      AS salesrep_createdby,
         u.description                    AS salesrep_description,
         u.email                          AS salesrep_email,
         u.fax                            AS salesrep_fax,
         u.isactive                       AS salesrep_isactive,
         u.lastcontact                    AS salesrep_lastcontact,
         u.lastresult                     AS salesrep_lastresult,
         u.phone                          AS salesrep_phone,
         u.phone2                         AS salesrep_phone2,
         u.supervisor_id                  AS salesrep_supervisor_id,
         u.title                          AS salesrep_title,
         u.updated                        AS salesrep_updated,
         u.updatedby                      AS salesrep_updatedby,
         u.value                          AS salesrep_value,
         ubp.acqusitioncost               AS bpartner_acqusitioncost,
         ubp.actuallifetimevalue          AS bpartner_actuallifetimevalue,
         ubp.ad_language                  AS bpartner_ad_language,
         ubp.ad_orgbp_id                  AS bpartner_ad_orgbp_id,
         ubp.ad_org_id                    AS bpartner_ad_org_id,
         ubp.bpartner_parent_id           AS bpartner_bpartner_parent_id,
         ubp.c_bp_group_id                AS bpartner_c_bp_group_id,
         ubp.c_dunning_id                 AS bpartner_c_dunning_id,
         ubp.c_greeting_id                AS bpartner_c_greeting_id,
         ubp.c_invoiceschedule_id         AS bpartner_c_invoiceschedule_id,
         ubp.c_paymentterm_id             AS bpartner_c_paymentterm_id,
         ubp.created                      AS bpartner_created,
         ubp.createdby                    AS bpartner_createdby,
         ubp.c_taxgroup_id                AS bpartner_c_taxgroup_id,
         ubp.deliveryrule                 AS bpartner_deliveryrule,
         ubp.deliveryviarule              AS bpartner_deliveryviarule,
         ubp.description                  AS bpartner_description,
         ubp.dunninggrace                 AS bpartner_dunninggrace,
         ubp.duns                         AS bpartner_duns,
         ubp.firstsale                    AS bpartner_firstsale,
         ubp.flatdiscount                 AS bpartner_flatdiscount,
         ubp.freightcostrule              AS bpartner_freightcostrule,
         ubp.invoicerule                  AS bpartner_invoicerule,
         ubp.isactive                     AS bpartner_isactive,
         ubp.iscustomer                   AS bpartner_iscustomer,
         ubp.isdiscountprinted            AS bpartner_isdiscountprinted,
         ubp.isemployee                   AS bpartner_isemployee,
         ubp.ismanufacturer               AS bpartner_ismanufacturer,
         ubp.isonetime                    AS bpartner_isonetime,
         ubp.ispotaxexempt                AS bpartner_ispotaxexempt,
         ubp.isprospect                   AS bpartner_isprospect,
         ubp.issalesrep                   AS bpartner_issalesrep,
         ubp.issummary                    AS bpartner_issummary,
         ubp.istaxexempt                  AS bpartner_istaxexempt,
         ubp.isvendor                     AS bpartner_isvendor,
         ubp.logo_id                      AS bpartner_logo_id,
         ubp.m_discountschema_id          AS bpartner_m_discountschema_id,
         ubp.m_pricelist_id               AS bpartner_m_pricelist_id,
         ubp.naics                        AS bpartner_naics,
         ubp.name2                        AS bpartner_name2,
         ubp.numberemployees              AS bpartner_numberemployees,
         ubp.paymentrule                  AS bpartner_paymentrule,
         ubp.paymentrulepo                AS bpartner_paymentrulepo,
         ubp.po_discountschema_id         AS bpartner_po_discountschema_id,
         ubp.po_paymentterm_id            AS bpartner_po_paymentterm_id,
         ubp.po_pricelist_id              AS bpartner_po_pricelist_id,
         ubp.poreference                  AS bpartner_poreference,
         ubp.potentiallifetimevalue       AS bpartner_potentiallifetimeval,
         ubp.rating                       AS bpartner_rating,
         ubp.referenceno                  AS bpartner_referenceno,
         ubp.salesrep_id                  AS bpartner_salesrep_id,
         ubp.salesvolume                  AS bpartner_salesvolume,
         ubp.sendemail                    AS bpartner_sendemail,
         ubp.shareofcustomer              AS bpartner_shareofcustomer,
         ubp.shelflifeminpct              AS bpartner_shelflifeminpct,
         ubp.so_creditlimit               AS bpartner_so_creditlimit,
         ubp.socreditstatus               AS bpartner_socreditstatus,
         ubp.so_creditused                AS bpartner_so_creditused,
         ubp.so_description               AS bpartner_so_description,
         ubp.taxid                        AS bpartner_taxid,
         ubp.totalopenbalance             AS bpartner_totalopenbalance,
         ubp.updated                      AS bpartner_updated,
         ubp.updatedby                    AS bpartner_updatedby,
         ubp.url                          AS bpartner_url,
         ubp.value                        AS bpartner_value,
	 cur.cursymbol,
	 cur.description                  AS cur_description
  FROM   c_invoice i
         JOIN c_doctype_trl dt
           ON i.c_doctype_id = dt.c_doctype_id
         JOIN c_paymentterm pt
           ON i.c_paymentterm_id = pt.c_paymentterm_id
         JOIN c_paymentterm_trl ptt
           ON i.c_paymentterm_id = ptt.c_paymentterm_id
              AND dt.ad_language = ptt.ad_language
         JOIN c_bpartner bp
           ON i.c_bpartner_id = bp.c_bpartner_id
         LEFT JOIN c_greeting bpg
                ON bp.c_greeting_id = bpg.c_greeting_id
         LEFT JOIN c_greeting_trl bpgt
                ON bp.c_greeting_id = bpgt.c_greeting_id
                   AND dt.ad_language = bpgt.ad_language
         JOIN c_bpartner_location bpl
           ON i.c_bpartner_location_id = bpl.c_bpartner_location_id
         JOIN c_location l
           ON bpl.c_location_id = l.c_location_id
         LEFT JOIN ad_user bpc
                ON i.ad_user_id = bpc.ad_user_id
         LEFT JOIN c_greeting bpcg
                ON bpc.c_greeting_id = bpcg.c_greeting_id
         LEFT JOIN c_greeting_trl bpcgt
                ON bpc.c_greeting_id = bpcgt.c_greeting_id
                   AND dt.ad_language = bpcgt.ad_language
         JOIN ad_orginfo oi
           ON i.ad_org_id = oi.ad_org_id
         JOIN ad_clientinfo ci
           ON i.ad_client_id = ci.ad_client_id
         LEFT JOIN ad_user u
                ON i.salesrep_id = u.ad_user_id
         LEFT JOIN c_bpartner ubp
                ON u.c_bpartner_id = ubp.c_bpartner_id
         LEFT JOIN c_currency_trl cur
                ON i.c_currency_id = cur.c_currency_id 
                   AND dt.ad_language = cur.ad_language
;

