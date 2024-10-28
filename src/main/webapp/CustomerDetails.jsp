<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Details</title>
    <style>
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
    
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: rgba(255, 255, 255, 0.85);
        margin: 0;
        padding: 0;
    }

    form {
        background-color: rgba(255, 255, 255, 0.9);
        padding: 30px;
        border-radius: 15px;
        max-width: 350px;
        margin: 50px auto;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        backdrop-filter: blur(10px);
        position: relative;
        z-index: 1;
    }

    h2 {
        color: black;
        text-align: center;
        margin-top: 3px;
        margin-bottom: 10px;
        font-size: 20px;
        font-weight: bold;
    }

    label {
        display: block;
        margin-bottom: 10px;
        font-weight: bold;
        font-size: 14px;
        color: #333;
    }

    input[type="text"], input[type="email"], input[type="number"], select, input[type="file"] {
        width: 92%;
        padding: 12px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 8px;
        font-size: 16px;
        background-color: #f9f9f9;
        transition: border-color 0.3s ease;
    }

    input[type="text"]:focus, input[type="email"]:focus, input[type="number"]:focus, select:focus, input[type="file"]:focus {
        border-color: #3498db;
        outline: none;
    }

    input[type="submit"] {
        width: 80%;
        padding: 12px;
        background-color: #3498db;
        border: none;
        border-radius: 18px;
        color: white;
        font-size: 18px;
        font-weight: bold;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: red;
    }

    select {
        padding: 12px;
        font-size: 16px;
        border-radius: 8px;
        background-color: #f9f9f9;
        border: 1px solid #ccc;
        cursor: pointer;
    }

    #photo-upload {
        display: none;
    }

    /* Responsive styling */
    @media (max-width: 480px) {
        form {
            padding: 20px;
            max-width: 95%;
        }

        input[type="submit"] {
            font-size: 16px;
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

    <form action="CustomerDetailsServlet" method="post" enctype="multipart/form-data">
        <h2>Customer Details</h2>

        <label for="name"></label>
        <input type="text" id="name" name="name" placeholder="Enter your full name" required>

        <label for="email"></label>
        <input type="email" id="email" name="email" placeholder="Enter your email" required>

        <label for="phone"></label>
        <input type="number" id="phone" name="phone" placeholder="Enter your phone number" required>

        <label for="Idproof"></label>
        <select id="Idproof" name="Idproof" required onchange="togglePhotoUpload()">
            <option value="">Select Id Proof</option>
            <option value="Aadhar">Aadhar Card</option>
            <option value="Pan">Pan Card</option>
            <option value="Voter">Voter Card</option>
            <option value="Driving">Driving Licence</option>
        </select>

       <center> <input type="submit" value="Submit">  </center> 
    </form>

</body>
</html>
