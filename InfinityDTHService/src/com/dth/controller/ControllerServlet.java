package com.dth.controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dth.model.DatabaseUtility;
import com.dth.model.Logic;


@WebServlet("/ControllerServlet")
public class ControllerServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		DatabaseUtility db = new DatabaseUtility();
		Connection con = db.getDbConnection();
		Logic l = new Logic();
		String option = req.getParameter("option");
		
		switch(option)
		{
		//Switch between users.
			case "login":
				String userName = req.getParameter("userName");
				String password = req.getParameter("password");
				//Possibly redundant, check later.
				String dbName = l.getUserType(con, userName);
				if(dbName != null)
				{
					int flag = l.loginValidation(con, db, userName, password);
					if(flag != -1)
					{
						HttpSession session = req.getSession();
						session.setAttribute("username", userName);
						session.setAttribute("dbName", dbName);
						
						if(flag == 0)
						{
							db.updateOneFlag(con, userName, dbName);//dbName possibly redundant.
							res.sendRedirect("passwordManagement.jsp");
							//where to, after changing password????!!!
						}
						else
						{
							switch(dbName)
							{
								case "customerSchema":
									res.sendRedirect("welcome.jsp");
									break;
								
								case "operatorSchema":
									//What page goes here??
									break;
									
								case "adminSchema":
									res.sendRedirect("admin.jsp");
									break;
							}
						}
					}
					else
					{
						//if password is incorrect, it ends up here.
						res.sendRedirect("login.jsp");
					}
				}
				else
				{
					//if userName is incorrect, it ends up here.
					res.sendRedirect("login.jsp");
				}
				break;
				
			case "passwordManagement":
				
				
				break;
				
			case "register":
				
				
				break;
		}
	}

}
