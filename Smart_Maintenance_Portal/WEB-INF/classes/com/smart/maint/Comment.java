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
 * Servlet implementation class Comment
 */
public class Comment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Comment() {
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
		String com=request.getParameter("com");
		try
		{
			Connection con = DbConnect.connect();
			PreparedStatement ps1=con.prepareStatement("insert into comment values (?,?)");
			ps1.setInt(1,id);
			ps1.setString(2,com);
			int i=ps1.executeUpdate();
			
			if(i==0)
			{
				response.sendRedirect("ind.html");
			}
			else
			{
				response.sendRedirect("viewcom.jsp");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
