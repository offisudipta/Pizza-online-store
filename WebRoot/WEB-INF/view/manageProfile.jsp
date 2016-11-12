<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
						<th>First Name</th>
						<th>Last Name</th>
						<th>DateOfBirth</th>
						<th>Gender</th>
						<th>Street</th>
						<th>Location</th>
						<th>City</th>
						<th>State</th>
						<th>Pincode</th>
						<th>Mobile No</th>
						<th>Emailid</th>
						
					</tr>
					<c:if test="${!empty profile}">
						<c:forEach items="${profile}" var="pro">
							<tr>
								<td><c:out value="${pro.userID}"></c:out></td>
								<td><c:out value="${pro.firstName}"></c:out></td>
								<td><c:out value="${pro.lastName}"></c:out></td>
								<td><c:out value="${pro.dateOfBirth}"></c:out></td>
								<td><c:out value="${pro.gender}"></c:out></td>
								<td><c:out value="${pro.street}"></c:out></td>
								<td><c:out value="${pro.location}"></c:out></td>
								<td><c:out value="${pro.city}"></c:out></td>
								<td><c:out value="${pro.state}"></c:out></td>
								<td><c:out value="${pro.pincode}"></c:out></td>
								<td><c:out value="${pro.mobileNo}"></c:out></td>
								<td><c:out value="${pro.emailID}"></c:out></td>
							</tr>
						</c:forEach>
					</c:if>
				</table>
			</div>
		</div>
	</div>
</body>
</html>