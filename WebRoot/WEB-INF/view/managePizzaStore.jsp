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
						<th>Store Id</th>
						<th>Name</th>
						<th>Street</th>
						<th>MobileNo</th>
						<th>City</th>
						<th>State</th>
						<th>Pincode</th>
					</tr>
					<c:if test="${!empty pizzastore}">
						<c:forEach items="${pizzastore}" var="pizza">
							<tr>
								<td><c:out value="${pizza.storeID}"></c:out></td>
								<td><c:out value="${pizza.name}"></c:out></td>
								<td><c:out value="${pizza.street}"></c:out></td>
								<td><c:out value="${pizza.mobileNo}"></c:out></td>
								<td><c:out value="${pizza.city}"></c:out></td>
								<td><c:out value="${pizza.state}"></c:out></td>
								<td><c:out value="${pizza.pincode}"></c:out></td>
								<td><a href="addPizza.jsp">EDIT</a></td>
								<td><a href="">Delete</a></td>
							</tr>
						</c:forEach>
					</c:if>
				</table>
			</div>
		</div>
	</div>

</body>
</html>