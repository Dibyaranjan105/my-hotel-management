<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Admin</title>
    <style>
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
        .form-box {
            width: 25%;
            margin: 50px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            font-family: 'Arial', sans-serif;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        input[type="text"], input[type="email"], input[type="password"] {
            padding: 10px;
            margin-top: 10px;
            text-align: center;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 16px;
            outline: none;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.05);
        }
        .submit {
            margin-top: 20px;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 60px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .submit:hover {
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

<div class="form-box">
    <form action="AdminDelete" method="post">
        <input type="text" name="firstname" placeholder="Enter First Name" required />
        <input type="text" name="lastname" placeholder="Enter Last Name" required />
        <input type="email" name="email" placeholder="Enter Email" required />
        <input type="password" name="password" placeholder="Enter Password" required />
        <center><button type="submit" class="submit">Delete Admin</button></center>
    </form>
</div>
</body>
</html>
