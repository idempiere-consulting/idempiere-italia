/*
 * Créé le 22 mars 2005
 *
 * TODO Pour changer le modčle de ce fichier généré, allez ŕ :
 * Fenętre - Préférences - Java - Style de code - Modčles de code
 */
package org.compiere.web;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.http.HttpServlet;

import javax.servlet.ServletException;
import javax.servlet.ServletConfig;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.compiere.interfaces.MD5;

/**
 * Servlet Class
 */
public class GetMD5FileServlet extends HttpServlet {

	/**
	 * 
	 */
	private MD5 md5;
	
	public GetMD5FileServlet() {
		super();
		// TODO Raccord de constructeur auto-généré		
	}

	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		try
		{
			Context context = new InitialContext();
			md5 = (MD5) context.lookup("java:/comp/env/ejb/compiere/MD5");
		}
		catch(Exception e)
		{
			throw new ServletException("Error getting EJB: java:/comp/env/ejb/compiere/MD5");
		}	
	}

	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException,
		IOException {
		// TODO Auto-generated method stub
		String file = req.getParameter("File");
		PrintWriter out = resp.getWriter();
		out.println("<HTML><HEAD><TITLE>MD5 Hash</TITLE></HEAD><BODY>");
		out.println("File is: "+ file + "<BR>MD5 : "+ md5.getFileMD5(file)+"<BR>");
		//out.println(md5.getFileAsolutePath(file));
		out.println("</BODY></HTML>");
	}

}