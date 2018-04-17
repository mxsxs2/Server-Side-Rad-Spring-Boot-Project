<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><spring:message code="shippingcompany.add.title" /></title>
</head>
<body>
	<h1>
		<spring:message code="shippingcompany.add.title" />
	</h1>
	<form:form modelAttribute="shippingCompany">
		<table>
			<tr>
				<td><spring:message code="shippingcompany.name" />:</td>
				<td><form:input path="name"></form:input></td>
				<td><form:errors path="name" cssClass="error" /></td>
			</tr>
			<tr>
				<td><spring:message code="shippingcompany.port" />:</td>
				<td><form:input path="homePort"></form:input></td>
				<td><form:errors path="homePort" cssClass="error" /></td>

			</tr>
			<tr>
				<td><spring:message code="shippingcompany.balance" />:</td>
				<td><form:input path="balance"></form:input></td>
				<td><form:errors path="balance" cssClass="error" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Add" /></td>
			</tr>
		</table>
	</form:form>
	<a href="/"><spring:message code="navigation.home" /></a>
</body>
</html>