<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<jsp:include page="link.jsp" />
		<jsp:include page="header.jsp"></jsp:include>
		<div class="row">
			<div class="col-lg-12">
				<p align="right" style="background-color: white;">
					<form:form modelAttribute="profileBean" class="form-horizontal"
						action="registerUser">
						<div class="form-group">
							<form:label class="col-sm-2 control-label" path="firstName">FirstName</form:label>
							<div class="col-sm-4">
								<form:input type="text" class="form-control" path="firstName"
									placeholder="FirstName" required="required" />
							</div>
						</div>
						<div class="form-group">
							<form:label class="col-sm-2 control-label" path="lastName">lastName</form:label>
							<div class="col-sm-4">
								<form:input type="text" class="form-control" path="lastName"
									placeholder="LastName" required="required" />
							</div>
						</div>
						<div class="form-group">
							<form:label class="col-sm-2 control-label" path="dateOfBirth">DateOfBirth</form:label>
							<div class="col-sm-4">
								<form:input type="date" class="form-control" path="dateOfBirth"
									placeholder="DateOfBirth" required="required" />
							</div>
						</div>
						<div class="form-group">
							<form:label class="col-sm-2 control-label" path="gender">Gender</form:label>
							<div class="radio">

								<form:label path="gender">
									<form:input type="radio" path="gender" required="required"
										value="Male" />Male</form:label>
								<form:label path="gender">
									<form:input type="radio" path="gender" required="required"
										value="Female" />Female</form:label>

							</div>

						</div>
						<div class="form-group">
							<form:label class="col-sm-2 control-label" path="street">Street</form:label>
							<div class="col-sm-4">
								<form:input type="text" class="form-control" path="street"
									placeholder="Street" required="required" />
							</div>
						</div>
						<div class="form-group">
							<form:label class="col-sm-2 control-label" path="location">Location</form:label>
							<div class="col-sm-4">
								<form:input type="text" class="form-control" path="location"
									placeholder="Location" required="required" />
							</div>
						</div>
						<div class="form-group">
							<form:label class="col-sm-2 control-label" path="city">City</form:label>
							<div class="col-sm-4">
								<form:input type="text" class="form-control" path="city"
									placeholder="City" required="required" />
							</div>
						</div>
						<div class="form-group">
							<form:label class="col-sm-2 control-label" path="state">State</form:label>
							<div class="col-sm-4">
								<form:input type="text" class="form-control" path="state"
									placeholder="State" required="required" />
							</div>
						</div>
						<div class="form-group">
							<form:label class="col-sm-2 control-label" path="pincode">PinCode</form:label>
							<div class="col-sm-4">
								<form:input type="text" class="form-control" path="pincode"
									placeholder="PinCode" required="required" />
							</div>
						</div>
						<div class="form-group">
							<form:label class="col-sm-2 control-label" path="mobileNo">MobileNo</form:label>
							<div class="col-sm-4">
								<form:input type="text" class="form-control" pattern = "[789][0-9]{9}" path="mobileNo"
									placeholder="MobileNo" required="required" />
							</div>
						</div>
						<div class="form-group">
							<form:label class="col-sm-2 control-label" path="emailID">EmailId</form:label>
							<div class="col-sm-4">
								<form:input type="text" class="form-control" path="emailID"
									placeholder="EmailId" required="required" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-default">Register</button>
							</div>
						</div>
					</form:form>
			</div>
		</div>
		<div class="row"
			style="border-top: 1px solid #ccc; background-color: #222; border-radius: 8px; color: #eee; vertical-align: bottom;">
			<div class="col-lg-12">
				<p align="center">Copyrights</p>
			</div>
		</div>

	</div>
</body>
</html>