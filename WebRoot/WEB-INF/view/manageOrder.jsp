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
						<th>Order Id</th>
						<th>User Id</th>
						<th>OrderDate</th>
						<th>Store Id</th>
						<th>Cart Id</th>
						<th>Order Status</th>
						<th>Street</th>
						<th>City</th>
						<th>State</th>
						<th>Pincode</th>
						<th>MobileNo</th>
					</tr>
					<c:if test="${!empty order}">
						<c:forEach items="${order}" var="ord">
							<tr>
								<td><c:out value="${ord.orderID}"></c:out></td>
								<td><c:out value="${ord.userID}"></c:out></td>
								<td><c:out value="${ord.orderDate}"></c:out></td>
								<td><c:out value="${ord.storeID}"></c:out></td>
								<td><c:out value="${ord.cartID}"></c:out></td>
								<td><c:out value="${ord.orderStatus}"></c:out></td>
								<td><c:out value="${ord.street}"></c:out></td>
								<td><c:out value="${ord.city}"></c:out></td>
								<td><c:out value="${ord.state}"></c:out></td>
								<td><c:out value="${ord.pincode}"></c:out></td>
								<td><c:out value="${ord.mobileNo}"></c:out></td>
								<td><a href="addOrder.jsp">EDIT</a></td>
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