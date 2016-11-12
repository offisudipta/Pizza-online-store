<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<jsp:include page="link.jsp" />
	<div style="vertical-align: center;">
	<h3 style="border-bottom: 1px solid #ccc">Login</h3><br>
		<form class="form-horizontal" action="login" method="post">
			<div class="form-group">
				<label class="col-sm-3 control-label">UserName</label>
				<div class="col-sm-7">
					<input type="text" class="form-control" name="userId" id = "userId"
						placeholder="UserName">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-3 control-label">Password</label>
				<div class="col-sm-7">
					<input type="password" class="form-control" name="password" id = "password"
						placeholder="Password">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<div class="checkbox">
						<label> <input name="remember" type="checkbox">
							Remember me
						</label>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="button" class="btn btn-default"  onclick="validate()">Sign in</button>
					<a href = "getRegister"><button type="button" class="btn btn-primary">Register</button></a>
				</div>
				<div class = "row">
				<div class = "col-lg-2"></div>
				<div class = "col-lg-8 bg-danger" id = "validateRes">
				</div>
				</div>
			</div>
		</form>
	</div>
	
<script type="text/javascript">
 		function validate(){
 			var userId=$('#userId').val();
			var password=$('#password').val();
			
			$.ajax({
 		        type: "POST",
 		        url: "/POS/validate",
 		        data: "userId=" + userId + "&password=" + password,
  		        success: function(response){
 		        	if(response == "A"){
 		        		document.location.href = '/POS/Admin';
 		        	}else if(response == "C"){
 		        		document.location.href = '/POS/customer';
 		        	}
 		        $('#validateRes').html(response);
 		        },
 		        error: function(e){
 		        alert('Error: ' + e);
 		        }
 		        });
			

 		}
</script>
</body>
</html>