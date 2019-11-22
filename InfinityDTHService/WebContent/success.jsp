<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

	response.setHeader("cache-control", "no-cache, no-store, must-revalidate"); //HTTP 1.1
	response.setHeader("Pragma", "no-cache"); //HTTP 1.0
	response.setHeader("Expires", "0"); //Proxy
	
	if(session.getAttribute("userName") == null)
	{
		response.sendRedirect("login.jsp");
	}
%>

<h1>Welcome ${userName}</h1>
<form action="<%=request.getContextPath()%>/ControllerServlet" method="post">
	<!-- Hidden Input  -->
	<input type="hidden" name="option" value="logout"/>
	<input type="submit" value="logout">
</form>
</body>
</html>