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
<%

	response.setHeader("cache-control", "no-cache, no-store, must-revalidate"); //HTTP 1.1
	response.setHeader("Pragma", "no-cache"); //HTTP 1.0
	response.setHeader("Expires", "0"); //Proxy
	
	if(session.getAttribute("userName") == null)
	{
		response.sendRedirect("login.jsp");
	}
%>

<script type="text/javascript">

  function checkForm(form)
  {
    if(form.nPassword.value != "" && form.nPassword.value == form.cPassword.value) {
      if(form.nPassword.value.length < 6) {
        alert("Error: Password must contain at least six characters!");
        form.nPassword.focus();
        return false;
      }
      if(form.nPassword.value == form.username.value) {
        alert("Error: Password must be different from Username!");
        form.nPassword.focus();
        return false;
      }
      re = /[0-9]/;
      if(!re.test(form.nPassword.value)) {
        alert("Error: password must contain at least one number (0-9)!");
        form.nPassword.focus();
        return false;
      }
      re = /[a-z]/;
      if(!re.test(form.nPassword.value)) {
        alert("Error: password must contain at least one lowercase letter (a-z)!");
        form.nPassword.focus();
        return false;
      }
      re = /[A-Z]/;
      if(!re.test(form.nPassword.value)) {
        alert("Error: password must contain at least one uppercase letter (A-Z)!");
        form.nPassword.focus();
        return false;
      }
    } else {
      alert("Error: Please check that you've entered and confirmed your password!");
      form.nPassword.focus();
      return false;
    }

    //alert("You entered a valid password: " + form.nPassword.value);
    return true;
  }

</script>

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
								<form action="<%=request.getContextPath()%>/ControllerServlet" method="post" onsubmit="return checkForm(this);">
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