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
						<th>CreditCardNumber</th>
						<th>Valid From</th>
						<th>Valid To</th>
						<th>Balance</th>
						<th>User Id</th>
						
					</tr>
					<c:if test="${!empty creditcard}">
						<c:forEach items="${creditcard}" var="credit">
							<tr>
								<td><c:out value="${credit.creditCardNumber}"></c:out></td>
								<td><c:out value="${credit.validFrom}"></c:out></td>
								<td><c:out value="${credit.validTo}"></c:out></td>
								<td><c:out value="${credit.balance}"></c:out></td>
								<td><c:out value="${credit.userID}"></c:out></td>

							</tr>
						</c:forEach>
					</c:if>
				</table>
			</div>
		</div>
	</div>


</body>
</html>