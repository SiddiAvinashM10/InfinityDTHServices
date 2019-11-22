<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>IDTHS Home Page</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="style.css">
<link href="https://fonts.googleapis.com/css?family=Calistoga:300,400"
	rel="stylesheet">
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

	<!-- Title for Home Page -->


	<div class="container">
		<div class="row">
			<div class="col-md-2 col-sm"></div>
			<div class="col-md-8 col-sm">
				<div class="row">

					<!-- column for card begins here-->
					
					<div class="col-md col-sm">
						<h6 class="display-4 headerfont text-center text-color">Infinity
							DTH Services</h6>
						<br>
						<p class="text-center">You are the Admin</p>

					</div>

					<!-- column that contains card ends here-->

				</div>

				<!-- three links the admin can choose from-->

				<div class="row">
					<div class=col-md>
						<div
							class="card card-background-color btn btn-info btn-block position button-color">
							<a href="customerRegistration.jsp">
								<p>Customer</p>
							</a>
						</div>
					</div>
					<div class=col-md>
						<div
							class="card card-background-color btn btn-info btn-block position button-color">
							<a href="operatorRegistration.jsp">
								<p>Operator</p>
							</a>
						</div>
					</div>
					<div class=col-md>
						<div
							class="card card-background-color btn btn-info btn-block position button-color">
							<a href="retailerRegistration.jsp">
								<p>Retailer</p>
							</a>
						</div>
					</div>


				</div>
				<br> 
				<form action="<%=request.getContextPath()%>/ControllerServlet" method="post">
					<!-- Hidden Input  -->
					<input type="hidden" name="option" value="logout"/>
					<input type="submit" value="logout">
				</form>
			</div>
			<div class="col-md-2 col-sm"></div>

		</div>
	</div>

</body>
</html>