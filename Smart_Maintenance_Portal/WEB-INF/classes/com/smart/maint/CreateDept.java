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
 * Servlet implementation class CreateDept
 */
public class CreateDept extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateDept() {
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
		String demail=request.getParameter("email");
		String dpass=request.getParameter("password");
		String dname=request.getParameter("name");
		String dmobile=request.getParameter("mobile");
		String daddress=request.getParameter("address");
		String dtaluka=request.getParameter("taluka");
		String ddistrict=request.getParameter("district");
		
	
		
		
		try
		{
			Connection con = DbConnect.connect();
			PreparedStatement ps1=con.prepareStatement("insert into deptdetail values (?,?,?,?,?,?,?,?)");
			ps1.setInt(1,id);
			ps1.setString(2,demail);
			ps1.setString(3,dpass);
			ps1.setString(4,dname);
			ps1.setString(5,dmobile);
			ps1.setString(6,daddress);
			ps1.setString(7,dtaluka);
			ps1.setString(8,ddistrict);
			int i=ps1.executeUpdate();
			
			if(i==0)
			{
				response.sendRedirect("ind.html");
			}
			else
			{
				response.sendRedirect("addep.html");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
}
}


