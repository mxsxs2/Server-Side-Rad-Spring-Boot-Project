<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><spring:message code="ship.add.title" /></title>
</head>
<body>
	<h1>
		<spring:message code="ship.add.title" />
	</h1>
	<form:form modelAttribute="ship">
		<table>
			<tr>
				<td><spring:message code="ship.header.name" />:</td>
				<td><form:input path="name"></form:input></td>
				<td><form:errors path="name" cssClass="error" /></td>
			</tr>
			<tr>
				<td><spring:message code="ship.header.passengers" />:</td>
				<td><form:input path="passengers"></form:input></td>
				<td><form:errors path="passengers" cssClass="error" /></td>

			</tr>
			<tr>
				<td><spring:message code="ship.header.cost" />:</td>
				<td><form:input path="cost"></form:input></td>
				<td><form:errors path="cost" cssClass="error" /></td>
			</tr>
			<tr>
				<td><spring:message code="ship.header.length" />:</td>
				<td><form:input path="metres"></form:input></td>
				<td><form:errors path="metres" cssClass="error" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Add" /></td>
			</tr>
		</table>
	</form:form>
	<a href="/"><spring:message code="navigation.home" /></a>
</body>
</html>