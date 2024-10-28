<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="StyleUser.css">
</head>
<body>

   <div class="video-background">
        <video autoplay muted loop id="bg-video">
            <source src="Seven_Seas_Hotel_Life__-_Drone_Video(360p).mp4" type="video/mp4">
        </video>
    </div>

    <div class="container">
        <form action="UserServlet" method="post">
            <input type="text" name="firstname" placeholder="First Name" required />
            <input type="text" name="lastname" placeholder="Last Name" required />
            <input type="text" name="phonenumber" placeholder="Phone Number" required />
            <input type="email" name="email" placeholder="Email" required />
            <input type="number" name="age" placeholder="Age" required />
            <select name="gender" required>
                <option value="" disabled selected>Select Gender</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Other">Other</option>
            </select>
            <input type="password" name="password" placeholder="Password" required />
            <input type="submit" value="Register" />
        </form>
    </div>

</body>
</html>