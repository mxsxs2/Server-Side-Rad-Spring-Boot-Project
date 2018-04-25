<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><spring:message code="ship.add.title" /></title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/custom.js"></script>
</head>
</head>
<body>
	<div id="page">
		<div class="maincontainer">
			<div class="container">
				<div class="panel panel-default" id="indexpanel">
					<div class="panel-body">
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
									<td colspan="2"><input type="submit" value="Add"  class="btn btn-default"/></td>
								</tr>
							</table>
						</form:form>
						<a href="/" class="btn btn-default"><spring:message code="navigation.home"/></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>