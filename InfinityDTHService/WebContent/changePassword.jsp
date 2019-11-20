<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Password here!</title>
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
					<!-- column that contains card begins here-->
					<div class="col-md col-sm">
						<p class="display-4 headerfont text-center text-color regfontsize">Change your password here</p>
                            <div class="shadow-lg p-3 mb-5 bg-white rounded-border">
                                    <div class="avatar backg-color"></div> 
                          
							<div class="card-body">
							
							<!-- form begins here -->
								<form action="<%=request.getContextPath()%>/ControllerServlet" method="post">
									<div class="form-group"><br><br><br>
									<label for="inpuOldPassword">New Password</label>
									<input type="password" name="nPassword" class="form-control" id="inpuOldPassword"
											aria-describedby="emailHelp"
											required>
									</div>
									<!-- Hidden Input -->
									<input type="hidden" name="option" value="changePassword"/>
									<div class="form-group">
									<label for="inputNewPassword">Confirm Password</label>
										 <input type="password" name="cPassword" class="form-control"id="inputNewPassword" required>
									</div>
									<button type="submit" class="btn btn-info btn-block position button-color"
										data-toggle="button" aria-pressed="false" autocomplete="off">
                                        Submit ></button><br><br><br><br>
                                       
								</form>
								<!-- login form ends here -->
							</div>
						</div>
                    </div>
                    <!-- column that contains login card ends here-->

				</div>
			
			</div>
			<div class="col-md-3 col-sm"></div>
			
		</div>
	</div>
</body>
</html>