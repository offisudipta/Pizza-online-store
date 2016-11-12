<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="link.jsp"></jsp:include>

</head>
<body style="background-color: #d9d9d9;">

	<div class="container" style="border-radius:8px">

	<div style="height:100%;">
		<jsp:include page="header.jsp"></jsp:include>
		
		<div class="row" style="background-color: #eee;">
			<div class="col-lg-9" style="border-right: 1px solid #ccc;">
				<p align="right"><jsp:include page = "description.jsp"></jsp:include></p>
			</div>
			<div class="col-lg-3">
					<p align="right" style="background-color: white;">
						<jsp:include page="login.jsp"></jsp:include></p>
			</div>
		</div>
		<div class="row" style="border-top:1px solid #ccc;background-color: #222;border-radius:8px;color: #eee;vertical-align: bottom;">
			<div class="col-lg-12">
				<p align="center">Copyrights</p>
			</div>
		</div>

	</div>


</div>



</body>
</html>