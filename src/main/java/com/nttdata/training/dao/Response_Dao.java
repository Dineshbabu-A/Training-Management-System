package com.nttdata.training.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import com.nttdata.dbcon.ConnectionHolder;
import com.nttdata.dbcon.DBConnectionException;
import com.nttdata.dbfw.DBFWException;
import com.nttdata.dbfw.DBHelper;
import com.nttdata.dbfw.ParamMapper;
import com.nttdata.training.domain.Response;

public class Response_Dao {
	
public static int response_student(final Response re) throws DBConnectionException,DBFWException  {
		
		ConnectionHolder ch=null;
		Connection con=null;
		int result=0;
		
		try {
			
			ch=ConnectionHolder.getInstance();
			con=ch.getConnection();
			
			final ParamMapper RESPONSESTUDENT= new ParamMapper() {
				
				@Override
				public void mapParams(PreparedStatement pStmt) throws SQLException {
					// TODO Auto-generated method stub
					
					pStmt.setInt(1, re.getResponse_Id());
					pStmt.setString(2,re.getMessage());
					pStmt.setString(3, re.getStudent_Id());
					pStmt.setString(4, re.getInstitute_Id());
					
					
				}
			};
			
			//statement execution
			result=DBHelper.executeUpdate(con, SQLMapper.OPERATIONINSTITUTERESPONSE,RESPONSESTUDENT);
			
		}catch(DBConnectionException e) {
			System.out.println(e);
		}
		
		return result;
		
	}

	//view response
	public static List getresponse() throws DBConnectionException, DBFWException, SQLException
	{
	
	    List list=null;
	   ConnectionHolder ch=null;
	   Connection con=null;
	   try {
		     ch=ConnectionHolder.getInstance();
		     con=ch.getConnection();
	
		   list=DBHelper.executeSelect(con,SQLMapper.OPERATIONSTUDENTRESPONSE,SQLMapper.FETCHRESPONSEOUTMAPER);
	      } catch (DBConnectionException e) {
		       throw new DBConnectionException("Unable to connect to db"+e);
		   }
	     return list;
	
	  }
	
	public boolean validateUser(final int Response_Id) throws DAOAppException {
		ConnectionHolder ch = null;
		Connection con = null;
		List users = null;

		ParamMapper paramMapper = new ParamMapper() {

			@Override
			public void mapParams(PreparedStatement pStmt) throws SQLException {
				pStmt.setInt(1, Response_Id);
			}
		};
		try {
			ch = ConnectionHolder.getInstance();
			con = ch.getConnection();
			users = DBHelper.executeSelect(con, SQLMapper.VALIDATERESPONSE,SQLMapper.VALIDATERESPONSEOUTMAPPER,paramMapper);

		} catch (DBConnectionException e) {
			throw new DAOAppException(e);
		} catch (DBFWException e) {
			throw new DAOAppException(e);
		}

		return (users != null && users.size() > 0);

	}
	
}
