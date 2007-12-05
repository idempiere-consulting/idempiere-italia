/**********************************************************************
 * This file is part of Adempiere ERP Bazaar                          *
 * http://www.adempiere.org                                           *
 *                                                                    *
 * Copyright (C) Trifon Trifonov.                                     *
 * Copyright (C) Contributors                                         *
 *                                                                    *
 * This program is free software;
 you can redistribute it and/or      *
 * modify it under the terms of the GNU General Public License        *
 * as published by the Free Software Foundation;
 either version 2     *
 * of the License, or (at your option) any later version.             *
 *                                                                    *
 * This program is distributed in the hope that it will be useful,    *
 * but WITHOUT ANY WARRANTY;
 without even the implied warranty of     *
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the       *
 * GNU General Public License for more details.                       *
 *                                                                    *
 * You should have received a copy of the GNU General Public License  *
 * along with this program;
 if not, write to the Free Software        *
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,         *
 * MA 02110-1301, USA.                                                *
 *                                                                    *
 * Contributors:                                                      *
 * - Trifon Trifonov (trifonnt@users.sourceforge.net)                 *
 *                                                                    *
 * Sponsors:                                                          *
 * - Company (http://www.site.com)                                    *
 **********************************************************************/
package org.compiere.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import org.compiere.util.KeyNamePair;

/** Generated Interface for AD_System
 *  @author Trifon Trifonov (generated) 
 *  @version Release 3.3.1b
 */
public interface I_AD_System 
{

    /** TableName=AD_System */
    public static final String Table_Name = "AD_System";

    /** AD_Table_ID=531 */
    public static final int Table_ID = MTable.getTable_ID(Table_Name);

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 4 - System 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(4);

    /** Load Meta Data */

    /** Column name AD_System_ID */
    public static final String COLUMNNAME_AD_System_ID = "AD_System_ID";

	/** Set System.
	  * System Definition
	  */
	public void setAD_System_ID (int AD_System_ID);

	/** Get System.
	  * System Definition
	  */
	public int getAD_System_ID();

    /** Column name CustomPrefix */
    public static final String COLUMNNAME_CustomPrefix = "CustomPrefix";

	/** Set Custom Prefix.
	  * Prefix for Custom entities
	  */
	public void setCustomPrefix (String CustomPrefix);

	/** Get Custom Prefix.
	  * Prefix for Custom entities
	  */
	public String getCustomPrefix();

    /** Column name DBAddress */
    public static final String COLUMNNAME_DBAddress = "DBAddress";

	/** Set DB Address.
	  * JDBC URL of the database server
	  */
	public void setDBAddress (String DBAddress);

	/** Get DB Address.
	  * JDBC URL of the database server
	  */
	public String getDBAddress();

    /** Column name DBInstance */
    public static final String COLUMNNAME_DBInstance = "DBInstance";

	/** Set Database Name.
	  * Database Name
	  */
	public void setDBInstance (String DBInstance);

	/** Get Database Name.
	  * Database Name
	  */
	public String getDBInstance();

    /** Column name Description */
    public static final String COLUMNNAME_Description = "Description";

	/** Set Description.
	  * Optional short description of the record
	  */
	public void setDescription (String Description);

	/** Get Description.
	  * Optional short description of the record
	  */
	public String getDescription();

    /** Column name EncryptionKey */
    public static final String COLUMNNAME_EncryptionKey = "EncryptionKey";

	/** Set Encryption Class.
	  * Encryption Class used for securing data content
	  */
	public void setEncryptionKey (String EncryptionKey);

	/** Get Encryption Class.
	  * Encryption Class used for securing data content
	  */
	public String getEncryptionKey();

    /** Column name IDRangeEnd */
    public static final String COLUMNNAME_IDRangeEnd = "IDRangeEnd";

	/** Set ID Range End.
	  * End if the ID Range used
	  */
	public void setIDRangeEnd (BigDecimal IDRangeEnd);

	/** Get ID Range End.
	  * End if the ID Range used
	  */
	public BigDecimal getIDRangeEnd();

    /** Column name IDRangeStart */
    public static final String COLUMNNAME_IDRangeStart = "IDRangeStart";

	/** Set ID Range Start.
	  * Start of the ID Range used
	  */
	public void setIDRangeStart (BigDecimal IDRangeStart);

	/** Get ID Range Start.
	  * Start of the ID Range used
	  */
	public BigDecimal getIDRangeStart();

    /** Column name Info */
    public static final String COLUMNNAME_Info = "Info";

	/** Set Info.
	  * Information
	  */
	public void setInfo (String Info);

	/** Get Info.
	  * Information
	  */
	public String getInfo();

    /** Column name IsAllowStatistics */
    public static final String COLUMNNAME_IsAllowStatistics = "IsAllowStatistics";

	/** Set Maintain Statistics.
	  * Maintain general statistics
	  */
	public void setIsAllowStatistics (boolean IsAllowStatistics);

	/** Get Maintain Statistics.
	  * Maintain general statistics
	  */
	public boolean isAllowStatistics();

    /** Column name IsAutoErrorReport */
    public static final String COLUMNNAME_IsAutoErrorReport = "IsAutoErrorReport";

	/** Set Error Reporting.
	  * Automatically report Errors
	  */
	public void setIsAutoErrorReport (boolean IsAutoErrorReport);

	/** Get Error Reporting.
	  * Automatically report Errors
	  */
	public boolean isAutoErrorReport();

    /** Column name IsJustMigrated */
    public static final String COLUMNNAME_IsJustMigrated = "IsJustMigrated";

	/** Set Just Migrated.
	  * Value set by Migration for post-Migation tasks.
	  */
	public void setIsJustMigrated (boolean IsJustMigrated);

	/** Get Just Migrated.
	  * Value set by Migration for post-Migation tasks.
	  */
	public boolean isJustMigrated();

    /** Column name LDAPDomain */
    public static final String COLUMNNAME_LDAPDomain = "LDAPDomain";

	/** Set LDAP Domain.
	  * Directory service domain name - e.g. adempiere.org
	  */
	public void setLDAPDomain (String LDAPDomain);

	/** Get LDAP Domain.
	  * Directory service domain name - e.g. adempiere.org
	  */
	public String getLDAPDomain();

    /** Column name LDAPHost */
    public static final String COLUMNNAME_LDAPHost = "LDAPHost";

	/** Set LDAP URL.
	  * Connection String to LDAP server starting with ldap://
	  */
	public void setLDAPHost (String LDAPHost);

	/** Get LDAP URL.
	  * Connection String to LDAP server starting with ldap://
	  */
	public String getLDAPHost();

    /** Column name Name */
    public static final String COLUMNNAME_Name = "Name";

	/** Set Name.
	  * Alphanumeric identifier of the entity
	  */
	public void setName (String Name);

	/** Get Name.
	  * Alphanumeric identifier of the entity
	  */
	public String getName();

    /** Column name NoProcessors */
    public static final String COLUMNNAME_NoProcessors = "NoProcessors";

	/** Set Processors.
	  * Number of Database Processors
	  */
	public void setNoProcessors (int NoProcessors);

	/** Get Processors.
	  * Number of Database Processors
	  */
	public int getNoProcessors();

    /** Column name OldName */
    public static final String COLUMNNAME_OldName = "OldName";

	/** Set Old Name	  */
	public void setOldName (String OldName);

	/** Get Old Name	  */
	public String getOldName();

    /** Column name Password */
    public static final String COLUMNNAME_Password = "Password";

	/** Set Password.
	  * Password of any length (case sensitive)
	  */
	public void setPassword (String Password);

	/** Get Password.
	  * Password of any length (case sensitive)
	  */
	public String getPassword();

    /** Column name Processing */
    public static final String COLUMNNAME_Processing = "Processing";

	/** Set Process Now	  */
	public void setProcessing (boolean Processing);

	/** Get Process Now	  */
	public boolean isProcessing();

    /** Column name ProfileInfo */
    public static final String COLUMNNAME_ProfileInfo = "ProfileInfo";

	/** Set Profile.
	  * Information to help profiling the system for solving support issues
	  */
	public void setProfileInfo (String ProfileInfo);

	/** Get Profile.
	  * Information to help profiling the system for solving support issues
	  */
	public String getProfileInfo();

    /** Column name Record_ID */
    public static final String COLUMNNAME_Record_ID = "Record_ID";

	/** Set Record ID.
	  * Direct internal record ID
	  */
	public void setRecord_ID (int Record_ID);

	/** Get Record ID.
	  * Direct internal record ID
	  */
	public int getRecord_ID();

    /** Column name ReleaseNo */
    public static final String COLUMNNAME_ReleaseNo = "ReleaseNo";

	/** Set Release No.
	  * Internal Release Number
	  */
	public void setReleaseNo (String ReleaseNo);

	/** Get Release No.
	  * Internal Release Number
	  */
	public String getReleaseNo();

    /** Column name ReplicationType */
    public static final String COLUMNNAME_ReplicationType = "ReplicationType";

	/** Set Replication Type.
	  * Type of Data Replication
	  */
	public void setReplicationType (String ReplicationType);

	/** Get Replication Type.
	  * Type of Data Replication
	  */
	public String getReplicationType();

    /** Column name StatisticsInfo */
    public static final String COLUMNNAME_StatisticsInfo = "StatisticsInfo";

	/** Set Statistics.
	  * Information to help profiling the system for solving support issues
	  */
	public void setStatisticsInfo (String StatisticsInfo);

	/** Get Statistics.
	  * Information to help profiling the system for solving support issues
	  */
	public String getStatisticsInfo();

    /** Column name Summary */
    public static final String COLUMNNAME_Summary = "Summary";

	/** Set Summary.
	  * Textual summary of this request
	  */
	public void setSummary (String Summary);

	/** Get Summary.
	  * Textual summary of this request
	  */
	public String getSummary();

    /** Column name SupportEMail */
    public static final String COLUMNNAME_SupportEMail = "SupportEMail";

	/** Set Support EMail.
	  * EMail address to send support information and updates to
	  */
	public void setSupportEMail (String SupportEMail);

	/** Get Support EMail.
	  * EMail address to send support information and updates to
	  */
	public String getSupportEMail();

    /** Column name SupportExpDate */
    public static final String COLUMNNAME_SupportExpDate = "SupportExpDate";

	/** Set Support Expires.
	  * Date when the Adempiere support expires
	  */
	public void setSupportExpDate (Timestamp SupportExpDate);

	/** Get Support Expires.
	  * Date when the Adempiere support expires
	  */
	public Timestamp getSupportExpDate();

    /** Column name SupportUnits */
    public static final String COLUMNNAME_SupportUnits = "SupportUnits";

	/** Set Internal Users.
	  * Number of Internal Users for Adempiere Support
	  */
	public void setSupportUnits (int SupportUnits);

	/** Get Internal Users.
	  * Number of Internal Users for Adempiere Support
	  */
	public int getSupportUnits();

    /** Column name SystemStatus */
    public static final String COLUMNNAME_SystemStatus = "SystemStatus";

	/** Set System Status.
	  * Status of the system - Support priority depends on system status
	  */
	public void setSystemStatus (String SystemStatus);

	/** Get System Status.
	  * Status of the system - Support priority depends on system status
	  */
	public String getSystemStatus();

    /** Column name UserName */
    public static final String COLUMNNAME_UserName = "UserName";

	/** Set Registered EMail.
	  * Email of the responsible for the System
	  */
	public void setUserName (String UserName);

	/** Get Registered EMail.
	  * Email of the responsible for the System
	  */
	public String getUserName();

    /** Column name Version */
    public static final String COLUMNNAME_Version = "Version";

	/** Set Version.
	  * Version of the table definition
	  */
	public void setVersion (String Version);

	/** Get Version.
	  * Version of the table definition
	  */
	public String getVersion();
}
