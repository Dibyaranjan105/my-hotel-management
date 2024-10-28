<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Result</title>
    <style type="text/css">
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
    width: 40%;
    margin: 50px auto;
    padding: 20px;
    background-color: #f4f4f4;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    font-family: 'Arial', sans-serif;
    text-align: center;
}

/* Styling for the heading */
h2 {
    color: #4CAF50;
    font-size: 24px;
    margin-bottom: 20px;
}

/* Styling for the 'Go back' link */
.back-link {
    display: inline-block;
    padding: 10px 20px;
    background-color: #4CAF50;
    color: white;
    text-decoration: none;
    border-radius: 5px;
    font-size: 18px;
    transition: background-color 0.3s;
}

.back-link:hover {
    background-color: #45a049;
}

/* Responsive design for smaller screens */
@media (max-width: 768px) {
    .form-container {
        width: 90%;
    }

    h2, .back-link {
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

   <div class="form-container">
        <h2>Updated Successfully</h2>
        <br>
        <a href="AdminUpdate.jsp" class="back-link">Go back</a>
    </div>
</body>
</html>
