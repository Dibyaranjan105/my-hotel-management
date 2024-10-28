<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Admin Details</title>
</head>
<body>
<div class="update">
<form action="AdminUpdateServlet" method="post">
    <input type="text" name="firstname" placeholder="First Name" required /> <br>  <br>
    <input type="text" name="lastname" placeholder="Last Name" required /> <br>  <br>  
    <input type="text" name="phonenumber" placeholder="Phone Number" required /> <br>  <br>  
    <input type="email" name="email" placeholder="Email" required /> <br>  <br>  
    <button type="submit">Update</button>
</form>
    </div>
</body>
</html>
