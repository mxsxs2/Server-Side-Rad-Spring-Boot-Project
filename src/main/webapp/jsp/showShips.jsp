<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><spring:message code="ship.list.title" /></title>
</head>
<body>
	<h1>
		<spring:message code="ship.list.pagetext" />
	</h1>
	<table>
		<tr>
			<th><spring:message code="ship.header.name" /></th>
			<th><spring:message code="ship.header.passengers" /></th>
			<th><spring:message code="ship.header.cost" /></th>
			<th><spring:message code="ship.header.length" /></th>
			<th><spring:message code="ship.header.company" /></th>
		</tr>
		<c:forEach items="${ships}" var="ship">
			<tr>
				<td>${ship.name}</td>
				<td>${ship.passengers}</td>
				<td>${ship.cost}</td>
				<td>${ship.metres}</td>
				<td>${ship.shippingCompany.name}</td>
			</tr>
		</c:forEach>
	</table>
	<a href="/">Home</a>
</body>
</html>
