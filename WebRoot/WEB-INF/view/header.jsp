<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="row" style="background-color: #222;border-bottom:1px solid #ccc;color: #eee;border-radius:8px;">
			<div class="col-lg-3">
				<p align="center">
					<a href = "HomePage"><img src="http://bestanimations.com/Food/FastFood/Pizza/pizza-animated-gif-11.gif"
						style="width: 250px; height: 140px;border-radius:4px;"></a>
				</p>
			</div>

			<div class="col-lg-9">
				<h2>Pizza Ordering System</h2>
			</div>

		</div>
		<c:if test="${empty login_Cred.firstName}">
		<div class="row" style="background-color: #eee;border-bottom: 1px solid #ccc;">
			<div class="col-lg-10">
				<p align="right"><a href = "aboutUs" style = "color: #d9534f;">About Us</a></p>
			</div>
			<div class="col-lg-2">
				<p align="right"><a href = "contactUs" style = "color: #d9534f;">Contact Us</a></p>
			</div>
			
		</div>
		</c:if>
		<c:if test="${!empty login_Cred.firstName}">
		<div class="row" style="background-color: #eee;border-bottom: 1px solid #ccc;">
			<div class="col-lg-3">
				<p align="right">Welcome , ${login_Cred.firstName} ${login_Cred.lastName}</p>
			</div>
			<div class="col-lg-5"></div>
			<div class="col-lg-2">
				<p align="right"><a href = "${type}" style = "color: #d9534f;">Home</a></p>
			</div>
			<div class="col-lg-2">
				<p align="right"><a href = "logout" style = "color: #d9534f;">Logout</a></p>
			</div>
			
		</div>
		</c:if>
		

</body>
</html>