<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><spring:message code="shippingcompany.list.title" /></title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="js/datatables.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/custom.js"></script>
</head>
<body>
	<div id="page">
		<div class="maincontainer">
			<div class="container">
				<div class="panel panel-default" id="indexpanel">
					<div class="panel-body">
						<h1>
							<spring:message code="shippingcompany.list.title" />
						</h1>
						<table class="table table-striped table-bordered">
							<thead>
								<tr class="thead-inverse">
								<th><spring:message code="shippingcompany.name" /></th>
								<th><spring:message code="shippingcompany.port" /></th>
								<th><spring:message code="shippingcompany.balance" /></th>
								<th><spring:message code="shippingcompany.ships" /></th>
							</tr>
							
							</thead>
							<tbody>
							<c:forEach items="${shippingCompanies}" var="shippingCompanies">
								<tr>
									<td>${shippingCompanies.name}</td>
									<td>${shippingCompanies.homePort}</td>
									<td>${shippingCompanies.balance}</td>
									<td>
										<ul>
											<c:forEach items="${shippingCompanies.ships}" var="ship">
												<li>${ship.name},${ship.metres} Mtrs, ${ship.cost}</li>
											</c:forEach>
										</ul>
									</td>
								</tr>
							</c:forEach>
						</tbody>
						</table>
						<a href="/" class="btn btn-default"><spring:message code="navigation.home" /></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
