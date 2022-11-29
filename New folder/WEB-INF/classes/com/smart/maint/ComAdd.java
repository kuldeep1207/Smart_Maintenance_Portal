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
 * Servlet implementation class ComAdd
 */
public class ComAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ComAdd() {
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
		String status="pending";
		String title=request.getParameter("title");
		String desc=request.getParameter("desc");
		String dep=request.getParameter("dept");
		GetSet.setDep(dep);
		String date=request.getParameter("date");
		String image=request.getParameter("image");
		String email=GetSet.getEmail();
		
		
	
		
		
		try
		{
			Connection con = DbConnect.connect();
			PreparedStatement ps1=con.prepareStatement("insert into addcom values (?,?,?,?,?,?,?,?)");
			ps1.setInt(1,id);
			ps1.setString(2,title);
			ps1.setString(3,desc);
			ps1.setString(4,dep);
			ps1.setString(5,date);
			ps1.setString(6,image);
			ps1.setString(7,email);
			ps1.setString(8,status);
			int i=ps1.executeUpdate();
			
			if(i==0)
			{
				response.sendRedirect("ind.html");
			}
			else
			{
				response.sendRedirect("AddCom.jsp");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
