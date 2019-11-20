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
		HttpSession session = req.getSession();
		
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
						
						session.setAttribute("username", userName);
						session.setAttribute("dbName", dbName);
						
						if(flag == 0)
						{
							db.updateFlag(con, userName, dbName);//dbName possibly redundant.
							res.sendRedirect("changePassword.jsp");
							//where to, after changing password????!!!
						}
						else
						{
							String jspName = l.switchDbToJsp(dbName);
							if(jspName != null)
							{
								res.sendRedirect(jspName);
							}
							else
							{
								//Ideally should not reach here. Maybe we can remove it later.
								System.out.println("Database not present.");
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
				
			case "changePassword":
				//Possible error of trying to get attribute when its not set.
				//Test Case idea: after you reach the change password page, go back on browser and see if it still works.
				//You might need to add some response headers(Don't remember exactly). Learn this later.
				String newPassword = req.getParameter("nPassword");
				if(db.updatePassword(con, (String)session.getAttribute("userName"), newPassword, (String)session.getAttribute("dbName")))
				{
					//If success, do we need to send a message before we redirect to the respective pages???!!!
					String jspName = l.switchDbToJsp((String)session.getAttribute("dbName"));
					if(jspName != null)
					{
						res.sendRedirect(jspName);
					}
					else
					{
						//Ideally should not reach here. Maybe we can remove it later.
						System.out.println("Database not present.");
					}
				}
				else
				{
					//Fail condition will occur when there is an error with updating value in database. Otherwise ideally it should not.
					res.sendRedirect("changePassword.jsp");
				}
				break;
				
			case "register":
				
				
				break;
		}
	}

}
