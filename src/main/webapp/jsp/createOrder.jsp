<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><spring:message code="order.add.title" /></title>
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
										<button type="submit"  class="btn btn-default">
											<spring:message code="order.button"/>
										</button>
									</td>
								</tr>
								<tr>
									<td colspan="3" style="text-align:center"><form:errors path="" cssClass="error" /></td>
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