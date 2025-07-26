<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.cource.Course" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Available Courses</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f6f8;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 700px;
            margin: 60px auto;
            background-color: #fff;
            padding: 30px 40px;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 30px;
        }

        .course-item {
            padding: 15px 20px;
            border: 1px solid #dcdcdc;
            border-radius: 6px;
            margin-bottom: 15px;
            background-color: #f9f9f9;
        }

        .course-item strong {
            color: #34495e;
        }

        .back-link {
            display: block;
            text-align: center;
            margin: 30px auto;
            color: #2980b9;
            text-decoration: none;
            font-weight: bold;
            font-size: 16px;
            transition: color 0.3s ease;
        }

        .back-link:hover {
            color: #1f6391;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Available Courses</h2>

    <%
        List<Course> list = (List<Course>) request.getAttribute("list");
        if (list != null && !list.isEmpty()) {
            for (Course c : list) {
    %>
        <div class="course-item">
            <p><strong>Course ID:</strong> <%= c.getCourceId() %></p>
            <p><strong>Course Name:</strong> <%= c.getCourcename() %></p>
        </div>
    <%
            }
        } else {
    %>
        <p style="text-align:center; color: #7f8c8d;">No courses available at the moment.</p>
    <%
        }
    %>
</div>

<a class="back-link" href="studentHome.jsp">← Back to Home</a>

</body>
</html>
