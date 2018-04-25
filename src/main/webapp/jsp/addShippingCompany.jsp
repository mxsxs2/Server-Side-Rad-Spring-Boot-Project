<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><spring:message code="shippingcompany.add.title" /></title>
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