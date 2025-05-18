package com.nttdata.training.web.handlers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.nttdata.dbcon.DBConnectionException;
import com.nttdata.dbfw.DBFWException;
import com.nttdata.mvc.HttpRequestHandler;
import com.nttdata.training.dao.DAOAppException;
import com.nttdata.training.dao.Request_Dao;
import com.nttdata.training.dao.Response_Dao;
import com.nttdata.training.domain.Request;
import com.nttdata.training.domain.Response;

public class Response_Student implements HttpRequestHandler{
	
	static Logger log = Logger.getLogger(Response_Student.class);

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		PrintWriter out= response.getWriter();
		
		int Request_Id=Integer.parseInt(request.getParameter("response"));
		String Message=request.getParameter("message");
		String Student_Id=request.getParameter("studentid");
		String Institute_Id=request.getParameter("instituteid");
		
		Response r=new Response(Request_Id, Message, Student_Id, Institute_Id);
		
		Response_Dao rd= new Response_Dao();
		
		boolean isExists;
		try {
			isExists=rd.validateUser(r.getResponse_Id());
			
			if(isExists) {
				log.info("User already registered");
				RequestDispatcher dispatcher = request.getRequestDispatcher("Institute_Operations.jsp");
				request.setAttribute("Errr",	"User already exixts !");
				dispatcher.forward(request, response);
			}
			
			else{
				
				int finalRes=Response_Dao.response_student(r);
				if(finalRes >0) {
					RequestDispatcher rd1=request.getRequestDispatcher("Institute_Operations.jsp");
					request.setAttribute("sss","success!");
					rd1.forward(request, response);
				}
				
				
			}
		} catch (DBConnectionException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (DBFWException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (DAOAppException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
