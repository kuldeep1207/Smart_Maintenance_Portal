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
 * Servlet implementation class UserRegi
 */
public class UserRegi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserRegi() {
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
		String uname=request.getParameter("name");
		String umobile=request.getParameter("mobile");
		String uemail=request.getParameter("email");
		String upass=request.getParameter("password");
		String uaddress=request.getParameter("address");
		

		try
		{
			Connection con = DbConnect.connect();
			PreparedStatement ps1=con.prepareStatement("insert into users values (?,?,?,?,?,?)");
			ps1.setInt(1,id);
			ps1.setString(2,uname);
			ps1.setString(3,umobile);
			ps1.setString(4,uemail);
			ps1.setString(5,upass);
			ps1.setString(6,uaddress);
			
			int i=ps1.executeUpdate();
			
			if(i==0)
			{
				response.sendRedirect("ind.html");
			}
			else
			{
				response.sendRedirect("uslogin.html");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
