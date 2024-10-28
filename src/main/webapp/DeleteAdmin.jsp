<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Admin</title>
    <style>
      /* Video background settings */
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
    min-width: 100%;
    min-height: 100%;
    object-fit: cover;
}
/* General form container styling */
.form-box {
    width: 25%;
    margin: 50px auto;
    padding: 20px;
    background-color: #f4f4f4;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    font-family: 'Arial', sans-serif;
}

/* Styling the form inputs, selects, and buttons */
form {
    display: flex;
    flex-direction: column;
}

input[type="text"],
input[type="email"] {
    padding: 10px;
    margin-top: 10px;
    text-align:center;
    border-radius: 5px;
    border: 1px solid #ccc;
    font-size: 16px;
    outline: none;
    background-color: #fff;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.05);
}

input[type="text"]:focus,
input[type="email"]:focus {
    border-color: #4CAF50;
    box-shadow: 0 0 5px rgba(76, 175, 80, 0.5);
}

.submit {
    margin-top: 20px;
    padding: 10px 20px;
    width: 200px;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 10px;
    font-size: 18px;
    cursor: pointer;
    transition: background-color 0.3s;
}

.submit:hover {
    background-color: red;
}

/* Responsive design for smaller screens */
@media (max-width: 768px) {
    .form-container {
        width: 90%;
    }

    input,
    button {
        font-size: 14px;
    }
}
    </style>
    
</head>
<body>
<div class="form-container"> 
    <div class="video-background">
        <video autoplay muted loop id="bg-video">
            <source src="Seven_Seas_Hotel_Life__-_Drone_Video(360p).mp4" type="video/mp4">
        </video>
    </div>
    
    <div class="form-box">
        <form action="AdminDeleteServlet" method="post">
            <input type="text" name="firstname" placeholder="Enter First Name" required /> <br>
            <input type="text" name="lastname" placeholder="Enter Last Name" required /> <br>
            <input type="email" name="email" placeholder="Enter your Email" required /> <br> 
           <center> <button type="submit" class="submit">Delete</button> </center> 
        </form>
    </div>
 </div>
</body>
</html>
