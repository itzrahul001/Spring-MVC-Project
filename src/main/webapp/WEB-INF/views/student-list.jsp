<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student List</title>
    <style>
        table {

            width: 50%;
            border-collapse: collapse;
            margin: 20px 0;
            font-size: 18px;
            text-align: left;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
             .add-student-link {
                    margin-bottom: 20px;
                    display: inline-block;
                    font-size: 18px;
                    text-decoration: none;
                    padding: 10px 15px;
                    background-color: #007BFF;
                    color: white;
                    border-radius: 4px;
                    border: none;
                }
                .add-student-link:hover {
                    background-color: #0056b3;
                }

    </style>
</head>
<body>
    <h1>Student List</h1>
  <a href="addStudent" class="add-student-link">Add Student</a>
    <c:if test="${not empty students}">
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Mobile</th>
                    <th>Country</th>
                    <th>Action</th>

                </tr>
            </thead>
            <tbody>
                <c:forEach var="student" items="${students}">
                    <tr>
                        <td>${student.id}</td>
                        <td>${student.name}</td>
                        <td>${student.mobile}</td>
                        <td>${student.country}</td>
                        <td>
                           <a href="deleteStudent/${student.id}" onclick="return confirm('Are you sure you want to delete this student?');">Delete</a>|
                         <a href="showUpdateStudent/${student.id}">Update</a></td>

                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:if>

    <c:if test="${empty students}">
        <p>No students found.</p>
    </c:if>



</body>
</html>