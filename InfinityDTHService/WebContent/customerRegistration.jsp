<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Registration</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="style.css">
<link href="https://fonts.googleapis.com/css?family=Calistoga:300,400"
	rel="stylesheet">
</head>
<body>

<script type="text/javascript">

  function checkForm(form)
  {
    if(form.emailId.value == "") {
      alert("Error: Email Id cannot be blank!");
      form.emailId.focus();
      return false;
    }
    re = /^[a-zA-Z]+ [a-zA-Z]+$/;
    if(!re.test(form.firstName.value)) {
      alert("Error: firstName must contain only letters and/or spaces");
      form.firstName.focus();
      return false;
    }
    /* if(!re.test(form.lastName.value)) {
        alert("Error: lastName must contain only letters and/or spaces");
        form.lastName.focus();
        return false;
      } */
    
    return true;
  }

</script>



	<div class="container">
		<div class="row">
			<div class="col-md-1 col-sm"></div>
			<div class="col-md-10 col-sm">
				<div class="row">
					
					<!-- column that contains login card begins here-->

					<div class="col-md col-sm">
						<h6 class="display-4 headerfont text-center text-color login-font-size">Register with us!(Customer)</h6>
						<div class="shadow-lg p-3 mb-5 bg-white rounded-border">
							<div class="avatar backg-color"></div>
							<p class="dpfont">Default Password: ChangePwd@123</p>
							<div class="card-body">


								<!-- form begins here -->
								<form action="<%=request.getContextPath()%>/ControllerServlet" method="post" onsubmit="return checkForm(this);">
									<div class="form-row">
										<div class="form-group col-md-6">
											<label for="inputFName">First Name</label> <input type="text" name="firstName"
												class="form-control" id="inputFName" required>
										</div>
										<!-- Hidden Input  -->
										<input type="hidden" name="option" value="customerRegister"/>
										<div class="form-group col-md-6">
											<label for="inputLName">Last Name</label> <input type="text" name="lastName"
												class="form-control" id="inputLName" required>
										</div>
									</div>
									<div class="form-group">
										<label for="inputEmail">Email Id</label> <input type="email" name="emailId"
											class="form-control" id="inputEmail"
											placeholder="abc@example.com">
									</div>
									<div class="form-group">
										<label for="inputPhone">Phone Number</label> <input type="tel" name="phoneNumber"
											class="form-control" id="inputPhone">
									</div>
									<div class="form-group">
										<label for="inputAddress1">Address 1</label> <input
											type="text" name="address1" class="form-control" id="inputAddress1"
											placeholder="1234 Main St">
									</div>
									<div class="form-group">
										<label for="inputAddress2">Address 2</label> <input
											type="text" name="address2" class="form-control" id="inputAddress2"
											placeholder="Apartment, studio, or floor">
									</div>
									<div class="form-row">
										<div class="form-group col-md-6">
											<label for="inputLandmark">Landmark</label> <input
												type="text" name="landmark" class="form-control" id="inputLandmark">
										</div>

										<div class="form-group col-md-2">
											<label for="inputZip">Zip</label> <input type="text" name="zipCode"
												class="form-control" id="inputZip">
										</div>
										<div class="form-group col-md-4">
											<label for="inputCity">City</label> <input type="text" name="city"
												class="form-control" id="inputCity">
										</div>
										<div class="form-group col-md-6">
											<label for="inputState">State</label> <select id="inputState" name="state"
												class="form-control">
												<option selected>Choose...</option>
												<option >Alabama</option>
												<option >Alaska</option>
												<option >Arizona</option>
												<option >Arkansas</option>
												<option >California</option>
												<option >Colorado</option>
												<option >Connecticut</option>
												<option >Delaware</option>
												<option >Florida</option>
												<option >Georgia</option>
												<option >Hawaii</option>
												<option >Idaho</option>
												<option >Illinois</option>
												<option >Indiana</option>
												<option >Iowa</option>
												<option >Kansas</option>
												<option >Kentucky</option>
												<option >Louisiana</option>
												<option >Maine</option>
												<option >Maryland</option>
												<option >Massachusetts</option>
												<option >Michigan</option>
												<option >Minnesota</option>
												<option >Mississippi</option>
												<option >Missouri</option>
												<option >Montana</option>
												<option >Nebraska</option>
												<option >Nevada</option>
												<option >New Hampshire</option>
												<option >New Jersey</option>
												<option >New Mexico</option>
												<option >New York</option>
												<option >North Carolina</option>
												<option >North Dakota</option>
												<option >Ohio</option>
												<option >Oklahoma</option>
												<option >Oregon</option>
												<option >Pennsylvania</option>
												<option >Rhode Island</option>
												<option >South Carolina</option>
												<option >South Dakota</option>
												<option >Tennessee</option>
												<option >Texas</option>
												<option >Utah</option>
												<option >Vermont</option>
												<option >Virginia</option>
												<option >Washington</option>
												<option >West Virginia</option>
												<option >Wisconsin</option>
												<option >Wyoming</option>

											</select>
										</div>
										<div class="form-group col-md-6">
											<label for="inputCustomerCreatioDate">Customer
												Creation Date</label> <input type="text" name="cusCreation" class="form-control"
												id="inputCustomerCreatioDate placeolder="dd-mm-yyyy">
										</div>
										
									</div>
									<button type="submit"
										class="btn btn-info btn-block position button-color"
										data-toggle="button" aria-pressed="false" autocomplete="off">
										Submit</button>
								</form>

								<!-- form ends here -->

							</div>
						</div>
					</div>
					<!-- column that contains login card ends here-->

				</div>
			</div>
			<div class="col-md-1 col-sm"></div>

		</div>
	</div>
</body>
</html>