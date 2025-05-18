package com.nttdata.training.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import org.apache.log4j.Logger;

import com.nttdata.dbcon.ConnectionHolder;
import com.nttdata.dbcon.DBConnectionException;
import com.nttdata.dbfw.DBFWException;
import com.nttdata.dbfw.DBHelper;
import com.nttdata.dbfw.ParamMapper;

public class Admin_Dao {
	
	static Logger log = Logger.getLogger(Admin_Dao.class);
	
	public static List login_admin(final String User_Id,final String Password) throws DBFWException, DBConnectionException  {
		
		ConnectionHolder ch=null;
		Connection con=null;
		List list=null;
		
		try {
			
			ch=ConnectionHolder.getInstance();
			con=ch.getConnection();
			final ParamMapper LOGINADMIN= new ParamMapper() {
				@Override
				public void mapParams(PreparedStatement pStmt) throws SQLException {
					// TODO Auto-generated method stub
					pStmt.setString(1, User_Id);
					pStmt.setString(2, Password);	
				}
			};
			
			//statement execution
			list=DBHelper.executeSelect(con,SQLMapper.FETCHLOGINADMIN,SQLMapper.FETCHADMINOUTMAPER,LOGINADMIN);		
		}catch(DBConnectionException e) {
			System.out.println(e);
		}
		return list;
	}
	
	
}
