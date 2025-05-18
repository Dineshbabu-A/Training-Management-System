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
import com.nttdata.training.dao.Article_Dao;
import com.nttdata.training.dao.DAOAppException;
import com.nttdata.training.domain.Article;

public class Upload_Article implements HttpRequestHandler{
	
	static Logger log = Logger.getLogger(Upload_Article.class);

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		PrintWriter out= response.getWriter();
		
		int Article_Id=Integer.parseInt(request.getParameter("articleid"));
		String Institute_Id=request.getParameter("instituteid");
		String Article=request.getParameter("file");
		
		Article a=new Article(Article_Id,Institute_Id,Article);
		
		Article_Dao ad=new Article_Dao();
		boolean isExists;
		try {
			isExists=ad.validateUser(Article_Id);
			
			if(isExists) {
				
				log.info("User already registered");
				RequestDispatcher dispatcher = request.getRequestDispatcher("Institute_Operations.jsp");
				request.setAttribute("Er",	"User already exists!");
				dispatcher.forward(request, response);
			}else{
				int finalRes = Article_Dao.upload_article(a);
				if(finalRes>0) {
					
					RequestDispatcher rd = request.getRequestDispatcher("Institute_Operations.jsp");
					request.setAttribute("suc","succesfully !");
					rd.forward(request, response);
					
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
