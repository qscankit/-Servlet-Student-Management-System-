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

import com.ty.student_management_project.dto.Accountant;
import com.ty.student_management_project.service.AccountantService;

@SuppressWarnings("serial")
@WebServlet(value = "/accountant_login")
public class AccountantLoginController  extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String email = req.getParameter("email");
		
		String password = req.getParameter("password");
		
		
		HttpSession httpSession = req.getSession();
		PrintWriter printWriter = resp.getWriter();
		
		AccountantService accountantService = new AccountantService();
		
		Accountant email_present = accountantService.getByEmailAll(email);
		printWriter.write("<html><body>");
		if((email_present.getEmail().equals(email))&& (email_present.getPassword().equals(password))) {
			httpSession.setAttribute("email", email);
			
			printWriter.write("<h2 style = 'color : green'>login succesfully..</h2>");
			RequestDispatcher dispatcher = req.getRequestDispatcher("accountant_section.jsp");
			dispatcher.forward(req, resp);
			
		}else {
			printWriter.write("<h2  style = 'color : red'>invalid username or password..</h2>");
			
			RequestDispatcher dispatcher = req.getRequestDispatcher("login_accountant.jsp");
			dispatcher.include(req, resp);
		}
		printWriter.write("</body></html>");
		
	}
}
