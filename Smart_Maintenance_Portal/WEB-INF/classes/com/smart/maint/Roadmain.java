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
 * Servlet implementation class Roadmain
 */
public class Roadmain extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Roadmain() {
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
		int id=0;
		
		String rname=request.getParameter("name");
		String rloc=request.getParameter("location");
		String dname=request.getParameter("dept");
		String date=request.getParameter("date");
		
		
	
		
		
		try
		{
			Connection con = DbConnect.connect();
			PreparedStatement ps1=con.prepareStatement("insert into road values (?,?,?,?,?)");
			ps1.setInt(1,id);
			ps1.setString(2,rname);
			ps1.setString(3,rloc);
			ps1.setString(4,dname);
			ps1.setString(5,date);
			
			int i=ps1.executeUpdate();
			
			if(i==0)
			{
				response.sendRedirect("ind.html");
			}
			else
			{
				response.sendRedirect("addRm.jsp");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
