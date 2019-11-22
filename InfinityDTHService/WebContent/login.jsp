<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Main Logic</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="style.css">
<link href="https://fonts.googleapis.com/css?family=Calistoga:300,400"
	rel="stylesheet">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-3 col-sm"></div>
			<div class="col-md-6 col-sm">
				<div class="row">
					
					
					<!-- column for login card begins here-->
					
					<div class="col-md col-sm">
						<h6 class="display-4 headerfont text-center text-color login-font-size">Welcome
							back!! It's nice to see you</h6>
						<div class="shadow-lg p-3 mb-5 bg-white rounded-border">
							<div class="avatar backg-color"></div>

							<div class="card-body">

								<!-- login form begins here -->
								
								<form action="<%=request.getContextPath()%>/ControllerServlet" method="post">
									<div class="form-group">
										<br>
										<br>
										
										<br> <input type="email" name="userName" class="form-control"
											id="inputEmail1"
											aria-describedby="emailHelp"
											placeholder="email(abc@mail.com)" required> <small
											id="emailHelp" class="form-text text-muted">We'll be
											'shush' about it</small>
									</div>
									<!-- Hidden Input  -->
									<input type="hidden" name="option" value="login"/>
									<div class="form-group">
										<input type="password" name="password" class="form-control"
											id="inputPassword" placeholder="password" required>
											
									<%
										if(request.getAttribute("errorMessage") != null)
										{
										out.println(request.getAttribute("errorMessage"));
										}
										%>
									</div>
									<button type="submit"
										class="btn btn-info btn-block position button-color"
										data-toggle="button" aria-pressed="false" autocomplete="off">
										Login ></button>
									<br>
									<br>
									<br>
									<br>
									<p class="text-center bg-color-grey">Don't have an account
										yet?</p>
									<a href="customerRegistration.jsp" class="text-center"><p class="font-size">SignUp</p></a>
								</form>
								
								<!-- login form ends here -->
							</div>
						</div>
					</div>
					<!-- column for login card ends here-->

				</div>
			<!-- <a href="changePassword.jsp"><p class="text-center">Change Your Password Here</p></a> -->
			</div>
			<div class="col-md-3 col-sm"></div>

		</div>
	</div>
</body>
</html>