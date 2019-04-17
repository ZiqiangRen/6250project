<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <c:set var="contextPath" value="${pageContext.request.contextPath}" />
	<div class="page-header">
	    <h1>Need something to eat?</h1>
	    <br>
	    <ul class="nav nav-pills">
		  <li><a href="${contextPath}/customer/restaurants-list.htm">Restaurants</a></li>
		  <li class="active"><a href="${contextPath}/customer/my-orders.htm">My Orders</a></li>
		  <li><a href="${contextPath}/customer/customer-info.htm">My Information</a></li>
		  <li><a href="${contextPath}/customer/viewCart.htm">My Cart</a></li>
		  <li><a href="${contextPath}/">Logout</a></li>
		</ul>
	</div>

	<h2>My Orders:</h2>
	<c:forEach var="order" items="${sessionScope.orderList}">
		<div class="list-group">
			<a href="${contextPath}/customer/order-details.htm?orderId=${order.orderId}" class="list-group-item">
				<h4 class="list-group-item-heading">
					Order Number : ${order.orderId}&nbsp;&nbsp;&nbsp;
					Restaurant : ${order.restaurant.name}&nbsp;&nbsp;&nbsp;
				</h4>
				Total Quantities: ${order.totalQuantity}&nbsp;&nbsp;&nbsp;
				Total Price: ${order.totalPrice}&nbsp;&nbsp;&nbsp;
				Order Status: ${order.orderStatus}
			</a>
		</div>
    </c:forEach>
</body>
</html>