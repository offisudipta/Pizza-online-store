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
				The UserId Generated for You is
				<h3>${userIdGenerated}</h3>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<form class="form-horizontal" onsubmit="validate()"
					action="passwordGen" method="get">

					<div class="form-group">
						Password
						<div class="col-sm-4">
							<input type="password" class="form-control" name = "password" id="p1"
								placeholder="Password" required="required" />
						</div>
					</div>
					<div class="form-group">
						Confirm Password
						<div class="col-sm-4">
							<input type="password" class="form-control" id="p2"
								placeholder="Re-Password" required="required" />
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<input type="submit" onclick="validate()" class="btn btn-default"
								value="Submit" />
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12" id="result"></div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<script type="text/javascript">
	
	function validate(){
		var p1 = document.getElementById("p1").value;
		var p2 = document.getElementById("p2").value;
		
		if(p1===p2){
			return true;
		}else{
			document.getElementById("result").innerHTML = "Password Mismatch";
			return false;
		}
		
	}
	
	</script>
</body>
</html>