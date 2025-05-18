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
import com.nttdata.training.domain.Delete;

public class Delete_Institute implements HttpRequestHandler{
	
	static Logger log = Logger.getLogger(Delete_Institute.class);

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		PrintWriter out= response.getWriter();
		
		String Institute_Id=request.getParameter("institute");
		
		Delete i=new Delete(Institute_Id);
		
		Institute_Dao id=new Institute_Dao();
		
		boolean isExists;
		
		try {
			isExists=id.validateDelete(i.getInstitute_Id());
			if(!isExists) {
				
				log.info("User already registered");
				RequestDispatcher dispatcher = request.getRequestDispatcher("Admin_Operations.jsp");
				request.setAttribute("Err",	"User already exists!");
				dispatcher.forward(request, response);
			} 
			else {
				int finalRes = Institute_Dao.delete_institute(Institute_Id);
				if(finalRes>0) {
					RequestDispatcher rd=request.getRequestDispatcher("Admin_Operations.jsp");
					request.setAttribute("suc","succesfully deleted!");
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
