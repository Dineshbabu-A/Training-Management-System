package com.nttdata.training.web.handlers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.nttdata.dbfw.DBFWException;
import com.nttdata.mvc.HttpRequestHandler;
import com.nttdata.training.dao.DAOAppException;
import com.nttdata.training.dao.Institute_Dao;
import com.nttdata.training.dao.Student_Dao;
import com.nttdata.training.domain.Institute;
import com.nttdata.training.domain.Student;

public class Update_Student implements HttpRequestHandler{
	
	static Logger log = Logger.getLogger(Update_Student.class);

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		PrintWriter out= response.getWriter();
		
		String Student_Id=request.getParameter("studentid");
		Long Contact_Number=Long.parseLong(request.getParameter("contact"));
		
		Student i =new Student(Student_Id, Contact_Number);		
		
		Student_Dao sd=new Student_Dao();
		
		boolean isExists;
		try {
			
			isExists=sd.validateUpdate(i.getContact_Number());
			
			if(isExists) {
				log.info("User already registered");
				RequestDispatcher dispatcher = request.getRequestDispatcher("Student_login_success.jsp");
				request.setAttribute("Err",	"User already updated");
				dispatcher.forward(request, response);
			}else {
				int finalRes=Student_Dao.update_student(Student_Id, Contact_Number);
				
				if(finalRes > 0) {
					RequestDispatcher rd=request.getRequestDispatcher("Student_login_success.jsp");
					request.setAttribute("success","Profile is updated");
					rd.forward(request, response);
				}
			}
		} catch (DBFWException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (DAOAppException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
