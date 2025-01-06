<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            width: 40%;
            margin: auto;
            background: #ffffff;
            padding: 20px;
            margin-top: 50px;
            border-radius: 8px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }
        form {
            width: 100%;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        input[type="text"], input[type="number"], select, textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 4px;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Submit Student Details</h1>
        <form action="submitStudent" method="post">

            <!-- Student ID -->
            <label for="id">Student ID:</label>
            <input type="number" id="id" name="id" placeholder="Enter Student ID" required />

            <!-- Student Name -->
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" placeholder="Enter Student Name" required />

            <!-- Mobile Number -->
            <label for="mobile">Mobile:</label>
            <input type="text" id="mobile" name="mobile" placeholder="Enter Mobile Number" required />

            <!-- Country -->
            <label for="country">Country:</label>
            <select id="country" name="country" required>
                <option value="">Select Country</option>
                <option value="India">India</option>
                <option value="USA">United States</option>
                <option value="UK">United Kingdom</option>
                <option value="Canada">Canada</option>
                <option value="Australia">Australia</option>
            </select>

            <!-- Submit Button -->
            <input type="submit" value="Submit" />
        </form>
    </div>
</body>
</html>