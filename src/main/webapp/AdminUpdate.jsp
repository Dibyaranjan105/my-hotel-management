<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Admin Details</title>
    
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
    
.form-container {
    width: 28%;
    margin: 50px auto;
    padding: 20px;
    background-color: #f4f4f4;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    font-family: 'Arial', sans-serif;
    text-align: center;
}

/* Styling the form inputs and button */
form {
    display: flex;
    flex-direction: column;
    align-items: center;
}

input[type="text"],
input[type="email"] {
    padding: 10px;
    margin-top: 5px;
    text-align:center;
    width: 100%;
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

button[type="submit"] {
    margin-top: 20px;
    padding: 10px 20px;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 5px;
    font-size: 18px;
    cursor: pointer;
    transition: background-color 0.3s;
    width: 50%;
}

button[type="submit"]:hover {
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

    <div class="video-background">
        <video autoplay muted loop id="bg-video">
            <source src="Seven_Seas_Hotel_Life__-_Drone_Video(360p).mp4" type="video/mp4">
        </video>
    </div>

<div class="form-container">
    <form action="AdminUpdateServlet" method="post">
        <input type="text" name="firstname" placeholder="Enter First Name" required /> <br>
        <input type="text" name="lastname" placeholder="Enter Last Name" required /> <br> 
        <input type="text" name="phonenumber" placeholder="Phone Number" required /> <br> 
        <input type="email" name="email" placeholder="Enter Your Email" required /> <br>
        <button type="submit">Update</button>
    </form>

</body>
</html>
