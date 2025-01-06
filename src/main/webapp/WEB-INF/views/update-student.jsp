<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <title>Update Student Details</title>

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h1 class="text-center mb-4">Update Student Details</h1>
    <form action="${pageContext.request.contextPath}/updateStudent" method="post">
        <input type="hidden" id="id" name="id" value="${student.id}" />

        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" value="${student.name}" class="form-control" placeholder="Enter Student Name" required />
        </div>

        <div class="form-group">
            <label for="mobile">Mobile:</label>
            <input type="text" id="mobile" name="mobile" value="${student.mobile}" class="form-control" placeholder="Enter Mobile Number" required />
        </div>

        <div class="form-group">
            <label for="country">Country:</label>
            <select id="country" name="country" class="form-control" required>
                <option value="${student.country}">Select Country</option>
                <option value="India">India</option>
                <option value="USA">United States</option>
                <option value="UK">United Kingdom</option>
                <option value="Canada">Canada</option>
                <option value="Australia">Australia</option>
            </select>
        </div>

        <button type="submit" class="btn btn-success btn-block">Update</button>
    </form>
</div>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.4.4/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
