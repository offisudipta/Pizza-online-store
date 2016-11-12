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
						<th>Food Id</th>
						<th>Name</th>
						<th>Type</th>
						<th>FoodSize</th>
						<th>Quantity</th>
						<th>Price</th>
						
					</tr>
					<c:if test="${!empty food}">
						<c:forEach items="${food}" var="foo">
							<tr>
								<td><c:out value="${foo.foodID}"></c:out></td>
								<td><c:out value="${foo.name}"></c:out></td>
								<td><c:out value="${foo.type}"></c:out></td>
								<td><c:out value="${foo.foodSize}"></c:out></td>
								<td><c:out value="${foo.quantity}"></c:out></td>
								<td><c:out value="${foo.price}"></c:out></td>
								<td><a href="addFood.jsp">Edit</a></td>
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