package com.nttdata.training.web.handlers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.nttdata.mvc.HttpRequestHandler;
import com.nttdata.training.dao.DAOAppException;

public class Admin_logout implements HttpRequestHandler{
	
	static Logger log = Logger.getLogger(Admin_logout.class);

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		HttpSession session = request.getSession(false); 
		session.invalidate();
		
		RequestDispatcher rd = request.getRequestDispatcher("Admin_login.jsp");
		rd.forward(request, response);
		
	}
		
	

}
