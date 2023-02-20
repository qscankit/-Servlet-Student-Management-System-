package com.ty.student_management_project.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ty.student_management_project.dto.Accountant;
import com.ty.student_management_project.service.AccountantService;

@SuppressWarnings("serial")
@WebServlet(value = "/add_accountant" )
public class AccountantController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String password = req.getParameter("password");
		String email = req.getParameter("email");
		long contact = Long.parseLong(req.getParameter("contact"));
		
		Accountant accountant = new Accountant();
		AccountantService accountantService = new AccountantService();
		
		accountant.setName(name);
		accountant.setPassword(password);
		accountant.setEmail(email);
		accountant.setContact(contact);
		
		
		PrintWriter printWriter = resp.getWriter();
		
		boolean b = accountantService.getByEmail(email);
		
		printWriter.write("<html><body>");
		if(b==false) {
			accountantService.insertAccountant(accountant);
			printWriter.write("<h2  style ='color :green'>Data Inserted Succesfully..</h2>");
			
			RequestDispatcher dispatcher = req.getRequestDispatcher("add_accountant.jsp");
			dispatcher.include(req, resp);
		}else {
			printWriter.write("<h2  style ='color :red'>Duplicate Entry..Please enter correct mail..</h2>");
			
			RequestDispatcher dispatcher = req.getRequestDispatcher("add_accountant.jsp");
			dispatcher.include(req, resp);
		}
		printWriter.write("</body></html>");
		
	}
}
