<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class = "container">
	<jsp:include page="link.jsp" />
	<jsp:include page="header.jsp"></jsp:include>
	<div class="row">
		<div class="col-lg-12">
			<p align="right" style="background-color: white;">
			<form class="form-horizontal" action="register">

				
				
				<div class="form-group">
					<label class="col-sm-2 control-label">Name</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" name="name" >
					</div>
				</div>
				
			
			
				<div class="form-group">
					<label class="col-sm-2 control-label">Street</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" name="street" >
					</div>
				</div>
				
				
				
				<div class="form-group">
					<label class="col-sm-2 control-label">MobileNo</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" name="mobileno" >
					</div>	
				</div>
				
				<div class="form-group">
					<label class="col-sm-2 control-label">City</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" name="city">
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-sm-2 control-label">State</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" name="state">
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-sm-2 control-label">PinCode</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" name="pincode" >
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-default">Submit</button>
					</div>
				</div>
				
			</form>
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