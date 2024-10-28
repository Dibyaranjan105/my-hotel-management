<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="StyleAddEmployee.css">
    <title>Add Employee</title>
</head>
<body>

    <div class="video-background">
        <video autoplay muted loop id="bg-video">
            <source src="Seven_Seas_Hotel_Life__-_Drone_Video(360p).mp4" type="video/mp4">
        </video>
    </div>
    
    <div class="form-container">
        <form action="AddEmployee" method="post">

        <input type="text" id="name" name="name" placeholder="Enter your name" required> 

             <input type="number" id="age" name="age" placeholder="Enter your age" required>  
            
              <select id="gender" name="gender" required>
                <option value="">Select your Gender</option>
                <option value="male">Male</option>
                <option value="female">Female</option>
                <option value="Other">Other</option>
            </select>  
            
          <select id="job" name="job" onchange="showSalary()" required>
                <option value="">Select your job</option>
                <option value="housekeeping">Housekeeping</option>
                <option value="kitchen_staff">Kitchen Staff</option>
                <option value="room_service">Room Service</option>
                <option value="waiter">Waiter</option>
                <option value="manager">Manager</option>
                <option value="accountant">Accountant</option>
                <option value="chef">Chef</option>
            </select>  
            
           <input type="text" id="salary" name="salary" placeholder="Salary will be auto-filled" readonly>  
            
            <input type="tel" id="phone" name="phone" placeholder="Enter your phone number"  required>  

            <input type="email" id="email" name="email" placeholder="Enter your email" required>

          <input type="text" id="aadhar" name="aadhar" placeholder="Enter your Aadhar number" required> 
            <button type="submit">Submit</button>
        </form>

        <script>
            function showSalary() {
                var job = document.getElementById("job").value;
                var salaryField = document.getElementById("salary");

                if (job === "housekeeping") {
                    salaryField.value = "20000";
                } else if (job === "kitchen_staff") {
                    salaryField.value = "22000";
                } else if (job === "room_service") {
                    salaryField.value = "21000";
                } else if (job === "waiter") {
                    salaryField.value = "18000";
                } else if (job === "manager") {
                    salaryField.value = "50000";
                } else if (job === "accountant") {
                    salaryField.value = "40000";
                } else if (job === "chef") {
                    salaryField.value = "35000";
                } else {
                    salaryField.value = ""; // Clear salary field if no job is selected
                }
            }
        </script>
    </div>
</body>
</html>
