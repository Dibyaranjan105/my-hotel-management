<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Registration Form</title>
    <link rel="stylesheet" href="StyleAdminRegister.css">
</head>
<body>

    <div class="video-background">
        <video autoplay muted loop id="bg-video">
            <source src="Hotel Background Video.mp4" type="video/mp4">
        </video>
    </div>

    <div class="form">
        <form action="AdminServlet" method="post">
            <input type="text" name="firstname" placeholder="Enter First Name" required /> 
            <input type="text" name="lastname" placeholder="Enter Last Name" required /> 
            <input type="text" name="phonenumber" placeholder="Enter Phone Number" required /> 
            <input type="email" name="email" placeholder="Enter Email" required /> 
            <input type="password" name="password" placeholder="Enter Password" required /> 
            <input type="hidden" name="usertype" value="admin" /> 

           <center> <button type="submit">Register</button> </center>
        </form>
    </div>

</body>
</html>
