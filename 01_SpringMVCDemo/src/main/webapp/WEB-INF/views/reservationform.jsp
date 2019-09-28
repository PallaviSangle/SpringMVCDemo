<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
</head>
<body>

<h1>Reservation form</h1>
<form action ="reservation" method="post">
Name : <input type="text" name="name"> <br/>
Age:   <input type="text" name="age"> <br/>
Gender:<input type="radio" name="gender" value="male"> Male
       <input type="radio" name="gender" value="female"> Female<br/>

Food:  <input type="checkbox" name="food" value="Breakfast"> Breakfast
       <input type="checkbox" name="food" value="Lunch"> Lunch
       <input type="checkbox" name="food" value="Dinner"> Dinner<br/>

From:  <select name="source">
       <option value="Mumbai">Mumbai</option>
       <option value="Meerat">Meerat</option>
       <option value="Patna">Patna</option>
       <option value="Lucknow">Lucknow</option>
       </select><br/>
  
To:   <select name="destination">
      <option value="Goa">Goa</option>
      <option value="Delhi">Delhi</option>
      <option value="Hyderabad">Hyderabad</option>
      <option value="Lucknow">Lucknow</option>
      </select> <br/>

      <input type="submit" value="submit"><br/>
</form>
</body>
</html>

<%-- 

    SP MO  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" isELIgnored="false"%>
<html>
<head>
	<title>Reservation Page</title>
	<style type="text/css">
		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
		.tg .tg-4eph{background-color:#f9f9f9}
	</style>
</head>
<body>
<h1>
	Add a Person
</h1>

<c:url var="addAction" value="/reservation/add" ></c:url>

<form:form action="${addAction}" commandName="reservation">
<table>
	<c:if test="${!empty reservation.name}">
	<tr>
		<td>
			<form:label path="id">
				<spring:message text="ID"/>
			</form:label>
		</td>
		<td>
			<form:input path="id" readonly="true" size="8"  disabled="true" />
			<form:hidden path="id" />
		</td> 
	</tr>
	</c:if>
	<tr>
		<td>
			<form:label path="name">
				<spring:message text="Name"/>
			</form:label>
		</td>
		<td>
			<form:input path="name" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="age">
				<spring:message text="Age"/>
			</form:label>
		</td>
		<td>
			<form:input path="age" />
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<c:if test="${!empty reservation.name}">
				<input type="submit"
					value="<spring:message text="Edit Person"/>" />
			</c:if>
			<c:if test="${empty reservation.name}">
				<input type="submit"
					value="<spring:message text="Add Person"/>" />
			</c:if>
		</td>
	</tr>
</table>	
</form:form>
<br>
<h3>Persons List</h3>
<c:if test="${!empty listPersons}">
	<table class="tg">
	<tr>
		<th width="80">Person ID</th>
		<th width="120">Person Name</th>
		<th width="120">Person Age</th>
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
	<c:forEach items="${listPersons}" var="reservation">
		<tr>
			<td>${reservation.id}</td>
			<td>${reservation.name}</td>
			<td>${reservation.age}</td>
			<td><a href="<c:url value='/edit/${reservation.id}' />" >Edit</a></td>
			<td><a href="<c:url value='/remove/${reservation.id}' />" >Delete</a></td>
		</tr>
	</c:forEach>
	</table>
</c:if>
</body>
</html>

 Editable Link  Share Link
Words: 178 | Chars: 2543 | Views: 42
Last Updated: 1 Second ago
Privacy  Terms  Contact Us  About Us --%>
