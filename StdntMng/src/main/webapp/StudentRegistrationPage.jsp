<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Registration Form</title>
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
            background-color: #fff;
            padding: 40px 30px;
            border-radius: 10px;
            box-shadow: 0 4px 16px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 30px;
        }

        label {
            display: block;
            margin-top: 15px;
            font-weight: 600;
            color: #34495e;
        }

				.gender-options {
		    display: flex;
		    gap: 20px;
		    margin-top: 8px;
		    margin-bottom: 16px;
		}
		
		.gender-options label {
		    font-weight: normal;
		    color: #2d3436;
		    display: flex;
		    align-items: center;
		    gap: 6px;
		}
				
				
        input[type="text"],
        input[type="password"],
        input[type="date"],
        textarea,
        select {
            width: 100%;
            padding: 10px 12px;
            margin-top: 6px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 15px;
            box-sizing: border-box;
            transition: border-color 0.3s ease;
        }

        input:focus,
        textarea:focus,
        select:focus {
            border-color: #2980b9;
            outline: none;
        }

        .gender-options {
            margin-top: 8px;
        }

        .gender-options input {
            margin-right: 6px;
        }

        input[type="submit"] {
            width: 100%;
            background-color: #2980b9;
            color: white;
            padding: 14px;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            font-weight: bold;
            margin-top: 25px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #1f6391;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Student Registration Form</h2>
        <form action="StudentRegistrationServlet" method="POST">
            
            <label for="studentId">Student Id:</label>
            <input type="text" id="studentId" name="studentId" required>

            <label for="studentName">Student Name:</label>
            <input type="text" id="studentName" name="studentName" required>

            <label for="studentAddress">Student Address:</label>
            <textarea id="studentAddress" name="studentAddress" rows="4" required></textarea>

            <label for="dob">Student Date of Birth:</label>
            <input type="date" id="dob" name="dob" required>

            <label>Student Gender:</label>
			<div class="gender-options">
			    <label><input type="radio" id="male" name="gender" value="Male" required> Male</label>
			    <label><input type="radio" id="female" name="gender" value="Female"> Female</label>
			    <label><input type="radio" id="other" name="gender" value="Other"> Other</label>
			</div>

            <label for="course">Student Course:</label>
            <select id="course" name="course" required>
                <option value="">-- Select Course --</option>
                <option value="Computer Science">Computer Science</option>
                <option value="Mechanical Engineering">Mechanical Engineering</option>
                <option value="Electrical Engineering">Electrical Engineering</option>
                <option value="Business Administration">Business Administration</option>
            </select>

            <label for="password">Student Password:</label>
            <input type="password" id="password" name="password" required>

            <label for="confirmPassword">Confirm Password:</label>
            <input type="password" id="confirmPassword" name="confirmPassword" required>

            <input type="submit" value="Submit">
        </form>
    </div>

</body>
</html>
