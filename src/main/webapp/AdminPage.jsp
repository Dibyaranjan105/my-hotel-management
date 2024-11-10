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
    
    /* Video background styling */
.video-background {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    overflow: hidden;
    z-index: -1;
}

#bg-video {
    width: 100%;
    height: 100%;
    object-fit: cover;
}

    h2 {
        text-align: center;
        color: white;
        width:380px;
        border-radius:40px;
        margin-top: 40px;
        margin-left: 420px;
        margin-right: 420px;
        font-size: 36px;
        background-color:black;
    }

   .admin-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 60px;
    margin: 50px auto;
    max-width: 600px;
}

.admin-box {
    width: 160px;
    height: 160px;
    background-color: #d3d3d3; 
    box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    text-align: center;
    transition: transform 0.2s;
    color: #333; 
}

.admin-box a {
    display: block;
    padding: 10px;
    background-color: #4F75FF; 
    color: white;
    text-decoration: none;
    border-radius: 5px;
    font-size: 16px;
    width: 70%;
    text-align: center;
    transition: background-color 0.3s;
}

.admin-box a:hover {
    background-color: red; 
}
   
</style>
</head>
<body>

 <div class="video-background">
        <video autoplay muted loop id="bg-video">
            <source src="Hotel Background Video.mp4" type="video/mp4">
        </video>
    </div>

 <h2> Admin Dashboard </h2> 

<div class="admin-container">
    <div class="admin-box">
        <a href="Register.jsp">Add Admin</a>
    </div>
    
    <div class="admin-box">
        <a href="AddEmployee.jsp">Add Employee</a>
    </div>
    
    <div class="admin-box">
        <a href="AddRooms.jsp">Add Rooms</a>
    </div>
    
    <div class="admin-box">
        <a href="DeleteAdmin.jsp">Delete Admin</a>
    </div>
    
    <div class="admin-box">
        <a href="AdminUpdate.jsp">Update Admin</a>
    </div>
    
    <div class="admin-box">
        <a href="CustomerDetails.jsp">Customer Data</a>
    </div>
    
    
</div>

</body>
</html>
