package com.dth.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Logic {

	//Maybe this function should go in Database Utility. We can think of it as ReadOne. 
	public String getUserType(Connection con, String userName)
	{
		String query = "select role from roleSchema where emailID=?";
		try 
		{
			PreparedStatement stmt=con.prepareStatement(query);
			stmt.setString(1,userName);
			
			ResultSet rs = stmt.executeQuery();
			
			if(rs.next())
			{
				if(rs.getString("role").equals("c"))
				{
					return "customerSchema";
				}
				else if(rs.getString("role").equals("o"))
				{
					return "operatorSchema";
				}
				else
				{
					return "adminSchema";
				}
			}
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		
		return null;
	}
	
	public String switchDbToJsp(String dbName)
	{
		switch(dbName)
		{
			case "customerSchema":
				return "success.jsp";

			case "operatorSchema":
				//What page goes here??
				break;
				
			case "adminSchema":
				return "admin.jsp";
				
		}
		return null;
	}
	
	public int loginValidation(Connection con, DatabaseUtility db, String userName, String password)
	{
		String dbName = getUserType(con, userName);
		
		try 
		{
			ResultSet rs = db.readAll(con, userName, dbName);
			String pwd = "";
			
			while(rs.next())
			{
				pwd = rs.getString("pwd");
				if(pwd.equals(password))
				{
					return rs.getInt("flag"); 
				}
			}
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}  
		
		return -1;
	}
}
