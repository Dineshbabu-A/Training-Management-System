package com.nttdata.training.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import com.nttdata.dbcon.ConnectionHolder;
import com.nttdata.dbcon.DBConnectionException;
import com.nttdata.dbfw.DBFWException;
import com.nttdata.dbfw.DBHelper;

public class Complaint_Dao {
	
	public static List getcomplaint() throws DBConnectionException, DBFWException, SQLException
	{
		
		List list=null;
		ConnectionHolder ch=null;
		Connection con=null;
		try {
			ch=ConnectionHolder.getInstance();
			con=ch.getConnection();
	
			list=DBHelper.executeSelect(con,SQLMapper.OPERATIONADMINCOMPLAINT,SQLMapper.FETCHCOMPLAINTOUTMAPER);	
		} catch (DBConnectionException e) {
			throw new DBConnectionException("Unable to connect to db"+e);
		
		}
		return list;

}

}
