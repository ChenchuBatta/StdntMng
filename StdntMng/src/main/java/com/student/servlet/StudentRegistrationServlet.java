package com.student.servlet;

import java.io.IOException;

import com.student.Student;
import com.student.dao.StudentDAO;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/StudentRegistrationServlet")
public class StudentRegistrationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Get form data
        String studentId = request.getParameter("studentId");
        String studentName = request.getParameter("studentName");
        String studentAddress = request.getParameter("studentAddress");
        String dob = request.getParameter("dob");
        String gender = request.getParameter("gender");
        String course = request.getParameter("course");
        String password = request.getParameter("password");
        
        Student s=new Student();
        s.setStudentId(studentId);
        s.setStduentname(studentName);
        s.setStduentAddress(studentAddress);
        s.setStduentcourse(course);
        s.setStduentDOB(dob);
        s.setStudentGender(gender);
        s.setStudentPassword(password);
        
        StudentDAO dao=new StudentDAO();
        Boolean results=dao.saveStudentInfo(s);
        RequestDispatcher rs=null;
        		
        if (results) {
        	rs=request.getRequestDispatcher("/StudentRegistrationPage.jsp");
        	rs.forward(request, response);
        	
        }
        else {
        	rs=request.getRequestDispatcher("/Filure.jsp");
        	rs.forward(request, response);
        }
        
      
    }
}
