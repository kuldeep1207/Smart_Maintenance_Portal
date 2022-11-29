package com.smart.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnect
{
	static Connection obj=null;
	
	public static  Connection connect()
	{
		try
		{
			if (obj==null)
			{
				Class.forName("com.mysql.cj.jdbc.Driver");
				obj=DriverManager.getConnection("jdbc:mysql://localhost:3306/smartmaintance","root","");
				
		    }
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return obj;
	}


}
