<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Room</title>
    <link rel="stylesheet" href="StyleAddRoom.css">
</head>
<body>

    <div class="video-background">
        <video autoplay muted loop id="bg-video">
            <source src="Seven_Seas_Hotel_Life__-_Drone_Video(360p).mp4" type="video/mp4">
        </video>
    </div>

<div class="form-container">
    <form action="AddRoom" method="post">
        <label for="roomNumber"></label>
        <input type="text" id="roomNumber" name="roomNumber" placeholder="Enter room number" required> <br>

        <label for="available"></label>
        <select id="available" name="available" required>
            <option value="">Check availability</option>
            <option value="yes">Yes</option>
            <option value="no">No</option>
        </select>  <br>

        <label for="cleaningStatus"></label>
        <select id="cleaningStatus" name="cleaningStatus" required>
            <option value="">Check cleaning status</option>
            <option value="clean">Clean</option>
            <option value="dirty">Dirty</option>
        </select>  <br>

        <label for="bedType"></label>
        <select id="bedType" name="bedType" onchange="setPrice()" required>
            <option value="">Select bed type</option>
            <option value="single">Single</option>
            <option value="double">Double</option>
            <option value="queen">Queen</option>
            <option value="king">King</option>
        </select>  <br>
        
        <label for="price"></label>
        <input type="number" id="price" name="price" placeholder="Enter price" required readonly>  <br>
        
        <button type="submit" class="add-room">Add Room</button>
    </form>
</div>

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

</body>
</html>
