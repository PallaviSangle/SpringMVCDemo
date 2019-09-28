<%@page import="com.bv.model.Reservation"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%
 	List<Reservation> userList = (List<Reservation>)request.getAttribute("reserve");
 %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<table style="border:ridge;background-color: #eee;color: white;
  background-color: black;" align="center" >
		<%
			for(Reservation u : userList){
		%>
			<tr>
				<td><%=u.getName() %></td>
				<td><%=u.getAge() %></td>
				<td><%=u.getGender() %></td>
			
				<td><%=u.getSource() %></td>
				<td><%=u.getDestination() %></td>
				
				<td><a href="removepassenger?userId=<%=u.getId() %>" >Delete</a></td>
				<td><a href="updatepassenger?userId=<%=u.getId() %>" >Update</a></td>
			</tr>
		<% }  %>
	</table>
</body>
</html>