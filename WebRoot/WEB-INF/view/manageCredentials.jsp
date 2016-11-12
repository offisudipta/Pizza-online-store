<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="link.jsp"></jsp:include>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<table class="table table-condensed">
					<tr>
						<th>User Id</th>
						<th>UserType</th>
						<th>Login Status</th>
					</tr>
					<c:if test="${!empty credentials}">
						<c:forEach items="${credentials}" var="cred">
							<tr>
								<td><c:out value="${cred.userId}"></c:out></td>
								<td><c:out value="${cred.userType}"></c:out></td>
								<td><c:out value="${cred.loginStatus}"></c:out></td>
								
							</tr>
							
						</c:forEach>
					</c:if>
				</table>
			</div>
		</div>
	</div>

</body>
</html>