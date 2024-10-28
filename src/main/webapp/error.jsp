<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Error Page</title>
    <style type="text/css">
        .error {
            width: 50%;
            margin: 100px auto;
            padding: 30px;
            background-color: #f8d7da;
            border-radius: 10px;
            border: 1px solid #f5c2c7;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            font-family: 'Arial', sans-serif;
        }

        /* Styling for the error message */
        .error-message {
            color: #721c24;
            font-size: 24px;
            margin: 0;
            font-weight: bold;
        }

        /* Styling for the back link */
        .back {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
            font-size: 16px;
        }

        .back:hover {
            background-color: #45a049;
        }

        /* Responsive design for smaller screens */
        @media (max-width: 768px) {
            .error {
                width: 90%;
            }

            .error-message {
                font-size: 18px;
            }

            .back {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
    <div class="error">
        <h2 class="error-message">You are fetching some error</h2>
        <a href="Login.jsp" class="back">Go back</a>
    </div>
</body>
</html>
