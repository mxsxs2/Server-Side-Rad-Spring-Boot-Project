<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><spring:message code="order.add.title" /></title>
</head>
<body>
	<h1>
		<spring:message code="order.add.title" />
	</h1>
	<form:form modelAttribute="order">
		<table>
			<tr>
				<td><spring:message code="order.shipname" />:</td>
				<td><form:select path="ship.sid">
						<c:forEach items="${shipList}" var="s">
							<form:option value="${s.sid}">${s.name}; Cost=${s.cost}</form:option>
						</c:forEach>
					</form:select></td>
				<td><form:errors path="ship" cssClass="error" /></td>
			</tr>
			<tr>
				<td><spring:message code="order.companyname" />:</td>
				<td><form:select path="shippingCompany.scid">
						<c:forEach items="${shippingCompanyList}" var="sc">
							<form:option value="${sc.scid}">${sc.name}; Balance=${sc.balance}</form:option>
						</c:forEach>
					</form:select></td>
				<td><form:errors path="shippingCompany" cssClass="error" /></td>
			</tr>
			<tr>
				<td colspan="2">
					<button type="submit">
						<spring:message code="order.button" />
					</button>
				</td>
				<td colspan="2"><form:errors path="" cssClass="error" /></td>
			</tr>
		</table>
	</form:form>
	<a href="/"><spring:message code="navigation.home" /></a>
</body>
</html>