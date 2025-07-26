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

/**
 * Servlet implementation class StudentDetailsServlet
 */
@WebServlet("/studentDetailsServlet")
public class StudentDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String studentName=request.getParameter("studentName");
		
		StudentDAO dao=new StudentDAO();
		Student s=dao.getStudentDetails(studentName);
		RequestDispatcher rs=null;
		
		if(s !=null) {
			request.setAttribute("student", s);
			rs=request.getRequestDispatcher("studentDetails.jsp");
			rs.forward(request, response);
			
		}else {
			rs=request.getRequestDispatcher("Failure.jsp");
			rs.forward(request, response);
			
		}
		
	}

	

}
