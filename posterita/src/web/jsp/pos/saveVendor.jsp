<%--
 *  Product: Posterita Web-Based POS and Adempiere Plugin
 *  Copyright (C) 2007  Posterita Ltd
 *  This file is part of POSterita
 *  
 *  POSterita is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License along
 *  with this program; if not, write to the Free Software Foundation, Inc.,
 *  51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 *
 * @author Martine
--%>



<%@ page import="org.posterita.Constants" %>
<%@ page import="org.posterita.user.*" %>
<%@ page import="org.posterita.beans.UDIBean" %>
<%@ page import="org.posterita.core.MenuItem" %>


<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>	
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-tiles.tld" prefix="tiles"%>	
<%@ taglib uri="/WEB-INF/pos.tld" prefix="pos"%>

<bean:define id="title"><pos:element textOnly="true" columnName="Vendor_ID"/></bean:define>
<%@ include file="/jsp/include/posHeader.jsp" %>
<%@ include file="/jsp/include/errors.jsp" %> 

<html:form action="/SaveVendorAction">
<html:hidden property="action" value="saveVendor"/>
<table class="main">
	<tr>
		<td>
			<html:hidden property="bpartnerId"/>
			
			<fieldset>
				<legend><pos:element columnName="Vendor_ID"/></legend>
				<table>
					<tr>
					<td>
						<label><pos:element columnName="Name"/>:</label><mandatory>*</mandatory>
					</td>
				
					<td>
						<html:text property="partnerName" styleClass="text"/>
					</td>
					</tr>
			

				</table>
			</fieldset>
		</td>
	</tr>

	<tr>
	<td>
		<fieldset style="height:180px;">
			<legend><pos:element columnName="address"/></legend>	
			<table>
			<tr>
				<td><label><pos:element columnName="address1"/>:</label></td>
				<td><html:text property="address1" styleClass="text"/></td>
			</tr>
			<tr>
				<td><label><pos:element columnName="address2"/>:</label></td>
				<td><html:text property="address2" styleClass="text"/></td>
			</tr>
			<tr>
				<td><label><pos:element columnName="city"/>:</label></td>
				<td><html:text property="city" styleClass="text"/></td>
			</tr>
			<tr>
				<td><label><pos:element columnName="email"/>:</label></td>
				<td><html:text property="email" styleClass="text"/></td>
			</tr>
			</table>
			</fieldset>
			</td>
		
			<td>
			<fieldset style="height:180px;">
			<legend><pos:element columnName="phone"/></legend>	
			<table>
			<tr>
				<td><label><pos:element columnName="phone"/>:</label></td>
				<td><html:text property="phone" styleClass="text"/></td>
			</tr>
			<tr>
				<td><label><pos:element columnName="phone2"/>:</label></td>
				<td><html:text property="phone2" styleClass="text"/></td>
			</tr>
			<tr>
				<td><label><pos:element columnName="fax"/>:</td>
				<td><html:text property="fax" styleClass="text"/></td>
			</tr>
			<tr><td>&nbsp;</td></tr>
	</table>
	</fieldset>
	</td>
</tr>

</table>	
<tr>
	<td colspan="2" align="right">
		<html:submit styleClass="save smallbutton">&nbsp;</html:submit>
	</td>
</tr>
</table>

</html:form>    									 					 
<%@ include file="/jsp/include/posFooter.jsp" %>