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
						<th>Cart Id</th>
						<th>User Id</th>
						<th>Food Id</th>
						<th>Type</th>
						<th>Quantity</th>
						<th>Cost</th>
						<th>Order Date</th>
					</tr>
					<c:if test="${!empty cart}">
						<c:forEach items="${cart}" var="car">
							<tr>
								<td><c:out value="${car.cartID}"></c:out></td>
								<td><c:out value="${car.userID}"></c:out></td>
								<td><c:out value="${car.foodID}"></c:out></td>	
								<td><c:out value="${car.type}"></c:out></td>
								<td><c:out value="${car.quantity}"></c:out></td>
								<td><c:out value="${car.cost}"></c:out></td>
								<td><c:out value="${car.orderDate}"></c:out></td>
							</tr>
						</c:forEach>
					</c:if>
				</table>
			</div>
		</div>
	</div>

</body>
</html>