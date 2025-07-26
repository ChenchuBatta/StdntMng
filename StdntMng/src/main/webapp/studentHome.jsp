<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome to ABC Institute</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f3f4f6;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 60px auto;
            background-color: #ffffff;
            padding: 30px 40px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
            border-radius: 8px;
            text-align: center;
        }

        h1 {
            color: #2c3e50;
            margin-bottom: 10px;
        }

        h2 {
            color: #34495e;
            margin-bottom: 30px;
        }

        .link-button {
            display: block;
            margin: 12px auto;
            padding: 12px 20px;
            background-color: #2980b9;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            width: 80%;
            transition: background-color 0.3s ease;
        }

        .link-button:hover {
            background-color: #1f6391;
        }

        .logout {
            background-color: #c0392b;
        }

        .logout:hover {
            background-color: #992d22;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to ABC Institute</h1>

        <h2>Good morning Mr. 
            <%= request.getParameter("studentName") %>
        </h2>

        <a class="link-button" href="/StdntMng/studentDetailsServlet?studentName=<%= request.getParameter("studentName") %>">
            Review Student Details
        </a>
        <a class="link-button" href="/StdntMng/StudentCourcesServlet?studentName=<%= request.getParameter("studentName") %>">
            Review Courses Applicable
        </a>
        <a class="link-button" href="/StdntMng/dueFees.jsp?studentName=<%= request.getParameter("studentName")%>">
            Review Due Fees
        </a>
        <a class="link-button logout" href="/StdntMng/StudentLogin.jsp">Click to Logout</a>
    </div>
</body>
</html>
