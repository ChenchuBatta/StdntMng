package com.student.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cource.Course;
import com.student.Student;

public class StudentDAO {

	public Connection getConnection() {
		Connection con=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/practice","root","chenchu");
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}	
		
		return con;
		
	}
	
	public List<Course> getCources() {
		List<Course> list=null;
		try {
			//Class.forName("com.mysql.cj.jdbc.Driver");		
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("select coursename,CourseId from courses");
			ResultSet rsObj=ps.executeQuery();
			 list=new ArrayList<Course>();
			while(rsObj.next()) {				
				Course c=new Course();
				c.setCourceId(rsObj.getString("CourseId"));
				c.setCourcename(rsObj.getString("coursename"));
				list.add(c);
				
			}
		
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			//close all the conenction resouces
		}
		return list;
	}

	public Boolean validateStudent(Student s) {
		try {
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("select count(*) from student where sname=? and sPassword=?");
			ps.setString(1, s.getStduentname());
			ps.setString(2, s.getStudentPassword());
			ResultSet rsObj=ps.executeQuery();
			
			if(rsObj.next()) {
				int results=Integer.parseInt(rsObj.getString(1));
				if(results>0)
					return true;				
			}
			
		
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			//close all the conenction resouces
		}
		
		
		return false;
		
	}

	public Student getStudentDetails(String studentName) {
		Student s=null;
		try {
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("select sname,saddress,sDOB,sgender,sPassword, sID, scourse from student where sname=?");
			ps.setString(1, studentName);
			ResultSet rsObj=ps.executeQuery();
			
			 s=new Student();
			if(rsObj.next()) {				
				s.setStudentId(rsObj.getString("sID"));
				s.setStduentAddress(rsObj.getString("saddress"));
				s.setStduentDOB(rsObj.getString("sDOB"));
				s.setStduentname(rsObj.getString("sname"));
				s.setStudentPassword(rsObj.getString("sPassword"));
				s.setStudentGender(rsObj.getString("sgender"));
				s.setStduentcourse(rsObj.getString("scourse"));
				System.out.println("tytytryytryty");
			}
			System.out.println("");
			return s;
		
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			
		}
		return s;
		
		
	}

	public List<String> getStudntDueFees(String studentName) {
		// TODO Auto-generated method stub
		List<String> list=null;
		try {
			/*Class.forName("com.mysql.cj.jdbc.Driver");		
			Connection con=DriverManager.getConnection("dfdsdsjfdslkfd","","");
			PreparedStatement ps=con.prepareStatement("select coursename,CourseId from cources");
			ResultSet rsObj=ps.executeQuery();
			 list=new ArrayList<String>();
			while(rsObj.next()) {				
				Course c=new Course();
				c.setCourceId(rsObj.getString("CourseId"));
				c.setCourcename(rsObj.getString("coursename"));
				list.add(c);
			}	*/
			
			list=new ArrayList<String> ();
			
		
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			//close all the conenction resouces
		}
		return list;
	}

	public Boolean saveStudentInfo(Student s) {
		Boolean results=false;
		
		try {
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("insert into student(sname,sid,saddress,sDOB,sGender,sCourse,sPassword) values (?,?,?,?,?,?,?)");
			ps.setString(1, s.getStduentname());
			ps.setString(2, s.getStudentId());
			ps.setString(3, s.getStduentAddress());
			ps.setString(4, s.getStduentDOB());
			ps.setString(5, s.getStudentGender());
			ps.setString(6, s.getStduentcourse());
			ps.setString(7, s.getStudentPassword());
			int r=ps.executeUpdate();
			if(r>0)
				results=true;
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return results;
		
	}

}
