<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><spring:message code="order.list.title" /></title>
</head>
<body>
	<h1>
		<spring:message code="order.list.title" />
	</h1>
	<table>
		<tr>
			<th><spring:message code="order.number" /></th>
			<th><spring:message code="order.companyname" /></th>
			<th><spring:message code="order.shipname" /></th>
			<th><spring:message code="order.date" /></th>
		</tr>
		<c:forEach items="${orders}" var="order">
			<tr>
				<td>${order.oid}</td>
				<td>${order.shippingCompany.name}</td>
				<td>${order.ship.name}</td>
				<td>${order.date}</td>
			</tr>
		</c:forEach>
	</table>
	<a href="/">Home</a>
</body>
</html>
