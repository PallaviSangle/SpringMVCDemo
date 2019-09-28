<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html> 
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

Hello ${reserve.name}<br/>
Age   ${reserve.age}<br/>
Gender ${reserve.gender}<br/>
Food  
<ul>
<c:forEach var="meal" items="${reserve.food}">
	<li>${meal}</li>
</c:forEach>
</ul>
From  ${reserve.from}<br/>
To ${reserve.to}<br/>
</body>
</html>