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

@WebServlet(value = "/accountant_logout")
public class LogoutAccountantController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession httpSession = req.getSession();
		httpSession.invalidate();
		
		PrintWriter  printWriter = resp.getWriter();
		printWriter.write("<html><body>");
		
		printWriter.write("<h2 style = 'color:blue'>Logout Successfully !!</h2>");
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("admin_section.jsp");
		dispatcher.include(req, resp);
		
		printWriter.write("</body></html>");
	}
}
