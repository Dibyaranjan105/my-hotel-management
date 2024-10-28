<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Registration Form</title>
    <link rel="stylesheet" href="StyleRegister.css">
</head>
<body>

    <div class="video-background">
        <video autoplay muted loop id="bg-video">
            <source src="Seven_Seas_Hotel_Life__-_Drone_Video(360p).mp4" type="video/mp4">
        </video>
    </div>

    <div class="form">
        <form action="AdminServlet" method="post">
            <input type="text" name="firstname" placeholder="First Name" required /> <br>
            <input type="text" name="lastname" placeholder="Last Name" required /> <br>
            <input type="text" name="phonenumber" placeholder="Phone Number" required /> <br>
            <input type="email" name="email" placeholder="Email" required /> <br>
            <input type="password" name="password" placeholder="Password" required /> <br>
            <input type="hidden" name="usertype" value="admin" /> <br>

            <button type="submit">Register</button>
        </form>
    </div>

</body>
</html>
