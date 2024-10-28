<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }

    h2 {
        text-align: center;
        color: #333;
        margin-top: 50px;
        font-size: 36px;
    }

    .admin {
        width: 300px;
        margin: 50px auto;
        padding: 20px;
        background-color: #fff;
        box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
    }

    .admin a {
        display: block;
        text-align: center;
        padding: 10px;
        margin: 10px 0;
        background-color: #007bff;
        color: white;
        text-decoration: none;
        border-radius: 5px;
        font-size: 18px;
    }

    .admin a:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>

<h2> Admin Dashboard </h2>

<div class="admin">
    <a href="AddEmployee.jsp">Add Employee</a>
    <a href="AddRooms.jsp">Add Rooms</a>
    <a href="DeleteAdmin.jsp">Delete Admin</a>
    <a href="AdminUpdate.jsp">Update Admin Details</a>
</div>

</body>
</html>
