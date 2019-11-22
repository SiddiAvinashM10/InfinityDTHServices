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
				return "homePage.jsp";
				
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
	
	//Maybe we need to add 
	public boolean createCustomer(Connection con, Customer c)
	{
		PreparedStatement stmt, stmt1;
		String query = "insert into customerSchema (firstName, lastName, emailId, phoneNumber, address1, address2, landmark, zipCode, city, state, flag, pwd) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		String query1 = "insert into roleSchema(emailId, role) values(?, ?)";
		try 
		{
			stmt1 = con.prepareStatement(query1);
			stmt1.setString(1, c.getEmailId());
			stmt1.setString(2, "c");
			int rs1 = stmt1.executeUpdate();
			
			stmt = con.prepareStatement(query);
			stmt.setString(1, c.getFirstname());
			stmt.setString(2, c.getLastName());
			stmt.setString(3, c.getEmailId());
			stmt.setString(4, c.getPhoneNumber());
			stmt.setString(5, c.getAddress1());
			stmt.setString(6, c.getAddress2());
			stmt.setString(7, c.getLandmark());
			stmt.setInt(8, c.getZipCode());
			stmt.setString(9, c.getCity());
			stmt.setString(10, c.getState());
			stmt.setInt(11, c.getFlag());
			stmt.setString(12, c.getPwd());
			int rs = stmt.executeUpdate();
			
			if(rs == 1 && rs1 == 1)
			{
				System.out.println("Insert Successfull");
				return true;
			}	
		} 
		catch (SQLException e) 
		{	
			e.printStackTrace();
		}
		System.out.println("Insert Failed");
		return false;
	}
}
