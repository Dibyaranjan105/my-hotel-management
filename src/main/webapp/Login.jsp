<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Form</title>
    <link rel="stylesheet" href="StyleLogin.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>

    <!-- Video background -->
    <div class="video-background">
        <video autoplay muted loop id="bg-video">
            <source src="Seven_Seas_Hotel_Life__-_Drone_Video(360p).mp4" type="video/mp4">
        </video>
    </div>

    <!-- Form container -->
    <div class="form-container">
        <form action="LoginServlet" method="post">
            <div class="input-box"> 
                <label for="email"></label> 
                <input type="email" id="email" name="email" placeholder="Enter your email" required>
                <i class='bx bxs-user'></i>
            </div>
            
            <div class="input-box"> 
                <label for="password"></label> 
                <input type="password" id="password" name="password" placeholder="Enter your password" required>
                <i class='bx bxs-lock'></i>
            </div>
            
            <button type="submit">Login</button> 

            <a href="Userjsp.jsp">Create an Account</a>
        </form>
    </div>

</body>
</html>
