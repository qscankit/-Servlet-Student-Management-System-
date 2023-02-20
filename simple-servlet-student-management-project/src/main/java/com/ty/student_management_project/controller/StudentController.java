package com.ty.student_management_project.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ty.student_management_project.dto.Student;
import com.ty.student_management_project.service.StudentService;

@SuppressWarnings("serial")
@WebServlet(value = "/add_student")
public class StudentController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int roll = Integer.parseInt(req.getParameter("roll"));
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String dob = req.getParameter("dob");
		String course = req.getParameter("course");
		double fee = Double.parseDouble(req.getParameter("fee"));
		double paid = Double.parseDouble(req.getParameter("paid"));
		double due = Double.parseDouble(req.getParameter("due"));
		String address = req.getParameter("address");
		String city = req.getParameter("city");
		String state = req.getParameter("state");
		int pin = Integer.parseInt(req.getParameter("pincode"));
		String country = req.getParameter("country");
		long contact = Long.parseLong(req.getParameter("conatct"));
		
		Student student = new Student();
		StudentService studentService = new StudentService();
		
		student.setRoll(roll);
		student.setName(name);
		student.setEmail(email);
		student.setDob(dob);
		student.setCourse(course);
		student.setFee(fee);
		student.setPaid(paid);
		student.setDue(due);
		student.setAddress(address);
		student.setCity(city);
		student.setState(state);
		student.setPincode(pin);
		student.setCountry(country);
		student.setContact(contact);
		
		
		PrintWriter printWriter = resp.getWriter();
		printWriter.write("<html><body>");
		
		studentService.insertStudent(student);
		
		printWriter.write("<h2  style ='color :green'>Data Inserted Succesfully..</h2>");
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("accountant_section.jsp");
		dispatcher.forward(req, resp);

		printWriter.write("</body></html>");
		
	}
}
