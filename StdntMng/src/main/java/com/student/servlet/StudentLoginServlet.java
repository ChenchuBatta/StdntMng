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
 * Servlet implementation class StudentLoginServlet
 */
@WebServlet("/studentLoginServlet")
public class StudentLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	        // Retrieve form parameters
	        String studentName = request.getParameter("studentName");
	        String password = request.getParameter("password");

	     System.out.println("Chenchu Login Servlet");
	     Student s=new Student();
	     s.setStduentname(studentName);
	     s.setStudentPassword(password);
	     
	     StudentDAO dao=new StudentDAO();
	     
	     Boolean results= dao.validateStudent(s);
	     RequestDispatcher rs=null;
	     if(results) {
	    	 rs=request.getRequestDispatcher("/studentHome.jsp");
	    	 rs.forward(request, response);
	    	         
	    }else {
	    	rs=request.getRequestDispatcher("/studentLogin.jsp");
	    	 rs.forward(request, response);
	    }
	}

}
