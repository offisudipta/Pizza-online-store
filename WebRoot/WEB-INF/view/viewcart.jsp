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
		<div class="col-lg-1">
			<p align="right" style="background-color: white;">
			welcome
			</p>
			</div>
			<div class="col-lg-9">
			<p align="right"><a href = "HomePage.jsp" style = "color: #0066ff;">HomePage</a></p>
			</div>
			<div class="col-lg-2">
				<p align="right"><a href = "" style = "color: #0066ff;">LogOut</a></p>
			</div>
			</div>
			<div class="row">
			<div class="col-lg-12">
				<p align="left" style= "color:#cc3300;"><h2>Managing Cart</h2></p>
			</div>
			</div>
			<div class="row">
			<div class="col-lg-12">
			<jsp:include page="manageCart.jsp"></jsp:include>
			</div>
			
			</div>
			<div class="row">
		<div class="col-lg-12">
			<p align="center" style="background-color: white;">
			<a href=" ">Add</a>
			</p>
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