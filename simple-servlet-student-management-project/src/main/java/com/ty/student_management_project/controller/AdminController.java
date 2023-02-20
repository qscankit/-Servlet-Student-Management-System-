package com.ty.student_management_project.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet(value = "/login")
public class AdminController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String password = req.getParameter("password");
		
		HttpSession httpSession = req.getSession();
		PrintWriter printWriter = resp.getWriter();
		
		if(name.equalsIgnoreCase("ankit") && password.equalsIgnoreCase("123")) {
			
			httpSession.setAttribute("name", name);
			printWriter.write("<h1 style ='color : green'>login succesfully..</h1>");
			
			RequestDispatcher dispatcher = req.getRequestDispatcher("admin_section.jsp");
			dispatcher.forward(req, resp);
			
		}else {
			printWriter.write("<h1 style ='color : red'>invalid username or password..</h1>");
			
			RequestDispatcher dispatcher = req.getRequestDispatcher("admin_section.jsp");
			dispatcher.include(req, resp);
		}
		
	}
}
