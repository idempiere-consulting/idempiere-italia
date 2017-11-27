package org.compiere.util;

import java.sql.Timestamp;
import java.util.Calendar;

import org.compiere.model.MPaySchedule;
import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.util.Env;
import org.compiere.util.TimeUtil;


/**
 *	<b>UtilCal_Ord_Inv:</b> <br>
 *
 *  This class is used by the Orders and Invoices, 
 *  for various calculations ....
 *
 * 	@author 	Andrea Checchia
 * 	@version 	$Id: UtilCal_Ord_Inv.java,v 1.0 2013/11/07 11:42:35  $
 */
public class UtilCal_Ord_Inv {

	/**
	 * Calculate dueDate in PaySchedule...
	 */
	public static Timestamp calculateDueDate(Timestamp date, int C_BPartner_ID, MPaySchedule ps){
		Timestamp dateCalculate = null;
		
		String fixedDate = ps.get_ValueAsString("FixedDate");
		int    numbFixedDate = 0;
		int    tempYear = 0;
		
		//se nel caso fosse il primo del mese, per il bug del "fine mese esatto", si aggiunge +1
		if(fixedDate.startsWith("FM")){
			long timestamp = date.getTime();
			Calendar calTmp = Calendar.getInstance();
			calTmp.setTimeInMillis(timestamp);
			if(calTmp.get(Calendar.DAY_OF_MONTH)==1){
				calTmp.add(Calendar.DAY_OF_MONTH, 1);
				date = new Timestamp (calTmp.getTimeInMillis());
			}
		}
		//
		
		if(ps.get_ValueAsInt("NetMonths")>0)
			dateCalculate = TimeUtil.addMonths(date, ps.get_ValueAsInt("NetMonths"));
		else
			dateCalculate = TimeUtil.addDays(date, ps.getNetDays());

		Calendar cal = null;
		if(fixedDate.trim().length()>0 && !fixedDate.equals("0")){
			//Calendar cal = null;
			
			if(fixedDate.startsWith("FM")){
				if(!fixedDate.substring(2).trim().equals(""))
					numbFixedDate = Integer.parseInt(fixedDate.substring(2).trim());
				
				dateCalculate = getMonthFinalDay(dateCalculate);
				
			}
			else{
				numbFixedDate = Integer.parseInt(fixedDate);
			}
			
			if(numbFixedDate > 0){
				
				cal = TimeUtil.getCalendar(dateCalculate);
				cal.setTime(dateCalculate);
				cal.set(Calendar.HOUR_OF_DAY, 0);
				cal.set(Calendar.MILLISECOND, 0);
				cal.set(Calendar.SECOND, 0);
				cal.set(Calendar.MINUTE, 0);
				
				if(cal.get(Calendar.DAY_OF_MONTH)>numbFixedDate){
					cal.set(Calendar.DAY_OF_MONTH, numbFixedDate);
					cal.add(Calendar.MONTH, 1);
				}
				else{
					cal.set(Calendar.DAY_OF_MONTH, numbFixedDate);
				}
				
				dateCalculate = new Timestamp(cal.getTimeInMillis());
			}
		}
		
		final String whereClause = "C_BPartner_ID=? AND AD_Client_ID=?";
//		MBPPayTermExcl bpPTexcl = new Query(Env.getCtx(),I_C_BP_PaymentTerm_Excluded.Table_Name,whereClause,null)
//		.setParameters(C_BPartner_ID,Env.getAD_Client_ID(Env.getCtx()))
//		.firstOnly();
		PO bpPTexcl = new Query(Env.getCtx(),"C_BP_PaymentTerm_Excluded",whereClause,null)
				.setParameters(C_BPartner_ID,Env.getAD_Client_ID(Env.getCtx()))
				.firstOnly();
		
		if(bpPTexcl != null){
			cal = TimeUtil.getCalendar(dateCalculate);
			cal.setTime(dateCalculate);
			tempYear = cal.get(Calendar.YEAR);
			cal.set(Calendar.YEAR, 0);
			
			Calendar cal_from = TimeUtil.getCalendar((Timestamp)bpPTexcl.get_Value("DateFrom"));
			cal_from.setTime((Timestamp)bpPTexcl.get_Value("DateFrom"));
			cal_from.set(Calendar.YEAR, 0);
			
			Calendar cal_to = TimeUtil.getCalendar((Timestamp)bpPTexcl.get_Value("DateTo"));
			cal_to.setTime((Timestamp)bpPTexcl.get_Value("DateTo"));
			cal_to.set(Calendar.YEAR, 0);

			if((cal.equals(cal_from) || cal.equals(cal_to))
					|| (cal.after(cal_from) && cal.before(cal_to))){
				
			/*	cal = TimeUtil.getCalendar(dateCalculate);
				cal.setTime(dateCalculate);
				cal.set(Calendar.HOUR_OF_DAY, 0);
				cal.set(Calendar.MILLISECOND, 0);
				cal.set(Calendar.SECOND, 0);
				cal.set(Calendar.MINUTE, 0);
			*/	cal.set(Calendar.YEAR, tempYear);
				cal.add(Calendar.MONTH, 1);
				
				dateCalculate = new Timestamp(cal.getTimeInMillis());
			}
		}
		
		return dateCalculate;
	}
	
	
	/**
	 * [ CNET ] Get final date in month
	 * @param day day; if null current time will be used
	 * @return first day of the month (time will be 00:00)
	 */
	private static Timestamp getMonthFinalDay (Timestamp day)
	{

		Calendar cal = TimeUtil.getCalendar(day);
		cal.setTimeInMillis(day.getTime());
		
		int finalDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
		cal.set(Calendar.HOUR_OF_DAY, 0);
		cal.set(Calendar.MINUTE, 0);
		cal.set(Calendar.SECOND, 0);
		cal.set(Calendar.MILLISECOND, 0);
		//
		cal.set(Calendar.DAY_OF_MONTH, finalDay);	//	final
		return new Timestamp (cal.getTimeInMillis());
	}	//	getMonthFinalDay 
}
