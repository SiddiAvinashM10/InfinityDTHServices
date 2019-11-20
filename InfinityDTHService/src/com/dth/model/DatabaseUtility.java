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
			if(con != null)
				return con;
			else
				System.out.println("Db connection failed");
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
		String query = "select * from "+dbName+" where emailId = ?";
		try 
		{
			stmt = con.prepareStatement(query);
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
		String query = "update "+dbName+ " set flag = ? where emailId = ?";
		try 
		{
			stmt = con.prepareStatement(query);
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
		String query = "update "+dbName+ " set pwd = ? where emailId = ?";
		try 
		{
			stmt = con.prepareStatement(query);
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
