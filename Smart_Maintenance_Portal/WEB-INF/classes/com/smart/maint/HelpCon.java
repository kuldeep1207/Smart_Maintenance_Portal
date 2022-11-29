package com.smart.maint;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smart.db.DbConnect;

/**
 * Servlet implementation class HelpCon
 */
public class HelpCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HelpCon() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String hname=request.getParameter("name");
		String hmobile=request.getParameter("mobile");
		
		try
		{
			Connection con = DbConnect.connect();
			PreparedStatement ps1=con.prepareStatement("insert into helpcontact values (?,?)");
			ps1.setString(1,hname);
			ps1.setString(2,hmobile);
			int i=ps1.executeUpdate();
			
			if(i==0)
			{
				response.sendRedirect("ind.html");
			}
			else
			{
				response.sendRedirect("help.html");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
