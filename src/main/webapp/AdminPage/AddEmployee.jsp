<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="StyleAddEmployee.css">
</head>
<body>
<h2> ADD Employee </h2> 
<div class="form">
<form action="AddEmployee" method="post">

    <label for="name">Name:</label>
    <input type="text" id="name" name="name" placeholder="Enter your name" required> <br><br>

    <label for="age">Age:</label>
    <input type="number" id="age" name="age" placeholder="Enter your age" required> <br><br>
    
    <label for="gender">Gender:</label>
    <input type="radio" id="male" name="gender" value="male" required>
    <label for="male">Male</label>

    <input type="radio" id="female" name="gender" value="female" required>
    <label for="female">Female</label>

    <input type="radio" id="other" name="gender" value="other" required>
    <label for="other">Other</label> <br><br>

    <label for="job">Job:</label>
    <select id="job" name="job" onchange="showSalary()" required>
        <option value="">Select your job</option>
        <option value="housekeeping">Housekeeping</option>
        <option value="kitchen_staff">Kitchen Staff</option>
        <option value="room_service">Room Service</option>
        <option value="waiter">Waiter</option>
        <option value="manager">Manager</option>
        <option value="accountant">Accountant</option>
        <option value="chef">Chef</option>
    </select> <br><br>

    <!-- Salary Input (Auto-filled based on job) -->
    <label for="salary">Salary:</label>
    <input type="text" id="salary" name="salary" placeholder="Salary will be auto-filled" readonly> <br><br>
    
    <label for="phone">Phone:</label>
    <input type="tel" id="phone" name="phone" placeholder="Enter your phone number" pattern="[0-9]{10}" required> <br><br>
    
    <label for="email">Email:</label>
    <input type="email" id="email" name="email" placeholder="Enter your email" required> <br><br>

    <label for="aadhar">Aadhar:</label>
    <input type="text" id="aadhar" name="aadhar" placeholder="Enter your Aadhar number" pattern="[0-9]{12}" required> <br><br>
    
    <!-- Submit Button -->
    <button type="submit">Submit</button>
</form>

    <script>
        function showSalary() {
            // Get the selected job
            var job = document.getElementById("job").value;

            // Reference the salary input field
            var salaryField = document.getElementById("salary");

            // Set salary based on the selected job
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
