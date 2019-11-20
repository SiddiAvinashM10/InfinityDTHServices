package com.dth.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DatabaseUtility {
	
	public Connection getDbConnection()
	{
		try 
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tcs12345");
			return con;
		} 
		catch (Exception e) 
		{	
			e.printStackTrace();
		}
		return null;
	}
	
	public ResultSet readAll(Connection con,String userName, String dbName)
	{
		PreparedStatement stmt;
		try 
		{
			stmt = con.prepareStatement("select password, flag from "+dbName+" where emailId = ?");
			stmt.setString(1, userName);
			ResultSet rs = stmt.executeQuery();
			if(rs != null)
			{
				return rs;
			}
		}
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		return null;
	}
	
	public void updateFlag(Connection con, String userName, String dbName)
	{
		PreparedStatement stmt;
		try 
		{
			stmt = con.prepareStatement("update "+dbName+ "set flag = ? where emailId = ?");
			stmt.setInt(1, 1);
			stmt.setString(2, userName);
			int rs = stmt.executeUpdate();
			//Will not need this string. Remove it later.
			if(rs == 1)
			{
				System.out.println("Update Successfull");
			}
			else
			{
				System.out.println("Update Failed");
			}
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
	}
	
	public boolean updatePassword(Connection con, String userName, String password, String dbName)
	{
		PreparedStatement stmt;
		try 
		{
			stmt = con.prepareStatement("update "+dbName+ "set password = ? where emailId = ?");
			stmt.setString(1, password);
			stmt.setString(2, userName);
			int rs = stmt.executeUpdate();
			//Will not need this string. Remove it later.
			if(rs == 1)
			{
				System.out.println("Update Successfull");
				return true;
			}
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		
		System.out.println("Update Failed");
		return false;
	}
}
