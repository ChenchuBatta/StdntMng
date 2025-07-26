<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Management System</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f0f2f5;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #ffffff;
            border: 2px solid #dcdcdc;
            border-radius: 10px;
            padding: 40px 50px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 400px;
        }

        h1 {
            color: #2c3e50;
            margin-bottom: 40px;
        }

        .button {
            display: inline-block;
            padding: 14px 24px;
            margin: 12px 8px;
            background-color: #2980b9;
            color: white;
            text-decoration: none;
            font-size: 16px;
            border-radius: 6px;
            transition: background-color 0.3s ease;
            border: none;
        }

        .button:hover {
            background-color: #1f6391;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Welcome to Student Management System</h1>

        <!-- Registration Button -->
        <a href="StudentRegistrationPage.jsp" class="button">Register</a>

        <!-- Login Button -->
        <a href="StudentLogin.jsp" class="button">Login</a>
    </div>

</body>
</html>
