<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>

<div class="form">
    <h2>Add Room</h2>
    <form>
        <label for="roomNumber">Room Number:</label>
        <input type="text" id="roomNumber" name="roomNumber" placeholder="Enter room number" required> <br><br>

        <label for="available">Available:</label>
        <select id="available" name="available" required>
            <option value="">Select availability</option>
            <option value="yes">Yes</option>
            <option value="no">No</option>
        </select>  <br><br>

        <label for="cleaningStatus">Cleaning Status:</label>
        <select id="cleaningStatus" name="cleaningStatus" required>
            <option value="">Select cleaning status</option>
            <option value="clean">Clean</option>
            <option value="dirty">Dirty</option>
        </select>  <br><br>

        <label for="bedType">Bed Type:</label>
        <select id="bedType" name="bedType" onchange="setPrice()" required>
            <option value="">Select bed type</option>
            <option value="single">Single</option>
            <option value="double">Double</option>
            <option value="queen">Queen</option>
            <option value="king">King</option>
        </select>  <br><br>
        
           <label for="price">Price:</label>
        <input type="number" id="price" name="price" placeholder="Enter price" required readonly>  <br><br>
        
        <button type="submit" class="add-room">Add Room</button>
       
    </form>
    
    <script>
        function setPrice() {
            var bedType = document.getElementById("bedType").value;
            var priceField = document.getElementById("price");

            // Set price based on selected bed type
            if (bedType === "single") {
                priceField.value = "1000";
            } else if (bedType === "double") {
                priceField.value = "1500";
            } else if (bedType === "queen") {
                priceField.value = "2000";
            } else if (bedType === "king") {
                priceField.value = "2500";
            } else {
                priceField.value = "";
            }
        }
    </script>
    
</div>

</body>
</html>