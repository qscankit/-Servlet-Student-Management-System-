package com.ty.student_management_project.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ty.student_management_project.service.StudentService;
@SuppressWarnings("serial")
@WebServlet(value = "/delete_student")
public class DeleteStudentController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		StudentService studentService = new StudentService();
		studentService.deleteStudent(Integer.parseInt(req.getParameter("roll")));
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("view_student.jsp");
		dispatcher.include(req, resp);
	}
}
