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
import com.nttdata.training.domain.Institute;

public class Update_Institute implements HttpRequestHandler{
	
	static Logger log = Logger.getLogger(Update_Institute.class);

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out= response.getWriter();
		
		String Institute_Id=request.getParameter("institute");
		int Number_of_Course=Integer.parseInt(request.getParameter("course"));
		
		Institute i =new Institute(Institute_Id, Number_of_Course);		
		
		Institute_Dao id=new Institute_Dao();
		boolean isExists;
		try {
			isExists=id.validateProfile(i.getNumber_of_Course());
			
			if(isExists) {
				
				log.info("User already registered");
				RequestDispatcher dispatcher = request.getRequestDispatcher("Institute_Operations.jsp");
				request.setAttribute("E",	"User already exixts");
				dispatcher.forward(request, response);
			} else {
				int finalRes=Institute_Dao.update_institute(Institute_Id,Number_of_Course);
				
			if(finalRes>0) {
				RequestDispatcher rd=request.getRequestDispatcher("Institute_Operations.jsp");
				request.setAttribute("succ","succesfully !");
				rd.forward(request, response);

			}
			
		}
		} catch (DAOAppException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (DBFWException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}	
	

}
