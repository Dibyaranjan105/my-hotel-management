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
  <div class="full-container">
    <div class="video-background">
        <video autoplay muted loop id="bg-video">
            <source src="Hotel Background Video.mp4" type="video/mp4">
        </video>
    </div>

    <div class="form-container">
        <form action="LoginServlet" method="post">
            <div class="input-box"> 
                <i class='bx bxs-user'></i>
                <input type="email" id="email" name="email" placeholder="Enter Username" required>
            </div>

            <div class="input-box"> 
                <i class='bx bxs-lock'></i>
                <input type="password" id="password" name="password" placeholder="Enter Password" required>
            </div>

            <center>  <button type="submit">Login</button>  </center> <br> <br>
            
    <div class="links">
    <a href="Userjsp.jsp">Create Account</a>
    <a href="ForgotPassword.jsp">Forgot Password</a>
    </div>
         
            
        </form>
    </div>
  </div>
</body>
</html>
