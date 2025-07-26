<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.student.Student" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Details</title>
    <style>
        body {
            background-color: #f0f2f5;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 60px auto;
            background-color: #ffffff;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
        }

        h2 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 30px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            font-size: 16px;
        }

        td {
            padding: 12px 10px;
            border-bottom: 1px solid #e0e0e0;
        }

        td.label {
            font-weight: bold;
            color: #34495e;
            width: 40%;
        }

        td.value {
            color: #2d3436;
        }

        .back-link {
            display: block;
            margin-top: 30px;
            text-align: center;
            text-decoration: none;
            color: #2980b9;
            font-weight: bold;
        }

        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<%
    com.student.Student s = (com.student.Student) request.getAttribute("student");
    if (s == null) {
%>
    <div class="container">
        <h2>No student information found.</h2>
    </div>
<%
    } else {
%>
    <div class="container">
        <h2>Student Information</h2>
        <table>
            <tr>
                <td class="label">Student ID:</td>
                <td class="value"><%= s.getStudentId() %></td>
            </tr>
            <tr>
                <td class="label">Name:</td>
                <td class="value"><%= s.getStduentname() %></td>
            </tr>
            <tr>
                <td class="label">Address:</td>
                <td class="value"><%= s.getStduentAddress() %></td>
            </tr>
            <tr>
                <td class="label">Date of Birth:</td>
                <td class="value"><%= s.getStduentDOB() %></td>
            </tr>
            <tr>
                <td class="label">Gender:</td>
                <td class="value"><%= s.getStudentGender() %></td>
            </tr>
            <tr>
                <td class="label">Course:</td>
                <td class="value"><%= s.getStduentcourse()%></td>
            </tr>
            <tr>
                <td class="label">Password:</td>
                <td class="value"><%= s.getStudentPassword() %></td>
            </tr>
        </table>
        <a class="back-link" href="studentHome.jsp">← Back to Home</a>
    </div>
<%
    }
%>

</body>
</html>
