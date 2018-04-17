<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>List of Ships</h1>
<table>
  <tr>
   <th>Ship ID</th>
   <th>Cost</th>
   <th>Length(Metres)</th>
   <th>Name</th>
   <th>Number of Passengers</th>
  </tr>
    <c:forEach items="${ships}" 
                 var="ship">
      <tr> 
        <td>${ship.sid}</td>
        <td>${ship.cost}</td>
        <td>${ship.metres}</td>
        <td>${ship.name}</td>
        <td>${ship.passengers}</td>
      </tr>
    </c:forEach>
</table>

</body>
</html>