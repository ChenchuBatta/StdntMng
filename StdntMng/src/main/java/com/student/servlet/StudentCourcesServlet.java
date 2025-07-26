package com.student.servlet;

import java.io.IOException;
import java.util.List;

import com.cource.Course;
import com.student.dao.StudentDAO;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class StudentCourcesServlet
 */
@WebServlet("/StudentCourcesServlet")
public class StudentCourcesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		StudentDAO dao=new StudentDAO();		
		List<Course> list=dao.getCources();		
		request.setAttribute("list", list);
		RequestDispatcher rs=request.getRequestDispatcher("courseList.jsp");
		rs.forward(request, response);
		
		
		
	}




}
