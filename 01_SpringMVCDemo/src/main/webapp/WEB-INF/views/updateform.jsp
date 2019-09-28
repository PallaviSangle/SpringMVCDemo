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


