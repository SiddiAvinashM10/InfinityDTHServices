<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Operator Registration</title>
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
			<div class="col-md-1 col-sm"></div>
			<div class="col-md-10 col-sm">
				<div class="row">

					<!-- column that contains login card begins here-->

					<div class="col-md col-sm">
						<h6 class="display-4 headerfont text-center text-color login-font-size">Register with us!(Operator)</h6>
						<div class="shadow-lg p-3 mb-5 bg-white rounded-border">
							<div class="avatar backg-color"></div>

							<div class="card-body">


								<!-- form begins here -->
								<form action="/ControllerServlet" method="post">
									<div class="form-row">
										<div class="form-group col-md-6">
											<label for="inputFName">First Name</label> <input type="text"
												class="form-control" id="inputFName">
										</div>
										<div class="form-group col-md-6">
											<label for="inputLName">Last Name</label> <input type="text"
												class="form-control" id="inputLName">
										</div>
									</div>
									<div class="form-group">
										<label for="inputEmail">Email Id</label> <input type="email"
											class="form-control" id="inputEmail"
											placeholder="abc@example.com">
									</div>
									<div class="form-group">
										<label for="inputPhone">Phone Number</label> <input type="tel"
											class="form-control" id="inputPhone">
									</div>
									<div class="form-row">
										<div class="form-group col-md-6">
											<label for="inputShiftTimeStart">Shift Time Start</label> <select
												id="inputStartTime" class="form-control">
												<option selected>Choose...</option>
												<option>9am</option>
												<option>10am</option>
												<option>11am</option>
												<option>12pm</option>
												<option>1pm</option>
												<option>2pm</option>
												<option>3pm</option>
												<option>4pm</option>
												<option>5pm</option>
											</select>
										</div>

										<div class="form-group col-md-6">
											<label for="inputShiftTimeEnd">Shift Time End</label> <select
												id="inputEndTime" class="form-control">
												<option selected>Choose...</option>
												<option>9am</option>
												<option>10am</option>
												<option>11am</option>
												<option>12pm</option>
												<option>1pm</option>
												<option>2pm</option>
												<option>3pm</option>
												<option>4pm</option>
												<option>5pm</option>
											</select>
										</div>
									</div>
									<div class=row>
										<div class="form-group col-md">
											<label for="inputMaxCustomers">Maximum No of
												Customers</label> <input type="text" class="form-control"
												id="inputMaxCustomers" placeholder="Cannot exceed 50">
										</div>
									</div>
									<div class=row>
										<div class="form-group col-md">
											<label for="inputCreationDate">Creation Date</label> <input
												type="text" class="form-control" id="inputCreationDate"
												placeholder="Must Autofill">
										</div>
									</div>
									<button type="button"
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