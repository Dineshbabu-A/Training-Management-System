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
import com.nttdata.training.domain.Article;

public class Article_Dao {
	
	//upload article
	
		public static int upload_article(final Article a ) throws DBConnectionException,DBFWException  {
			
			ConnectionHolder ch=null;
			Connection con=null;
			int result=0;
			
			try {
				
				ch=ConnectionHolder.getInstance();
				con=ch.getConnection();
				
				final ParamMapper UPLOADARTICLE= new ParamMapper() {
					@Override
					public void mapParams(PreparedStatement pStmt) throws SQLException {
						// TODO Auto-generated method stub
						
						pStmt.setInt(1,a.getArticle_Id());
						pStmt.setString(2, a.getInstitute_Id());
						pStmt.setString(3, a.getArticle());
						
					}
				};
				
				//statement execution
				result=DBHelper.executeUpdate(con,SQLMapper.OPERATIONINSTITUTEARTICLE,UPLOADARTICLE);
				
			}catch(DBConnectionException e) {
				System.out.println(e);
			}
			
			return result;

	}
		
		public boolean validateUser(final int article_Id) throws DAOAppException {
			ConnectionHolder ch = null;
			Connection con = null;
			List users = null;

			ParamMapper paramMapper = new ParamMapper() {

				@Override
				public void mapParams(PreparedStatement pStmt) throws SQLException {
					pStmt.setInt(1,article_Id);
				}
			};
			try {
				ch = ConnectionHolder.getInstance();
				con = ch.getConnection();
				users = DBHelper.executeSelect(con, SQLMapper.VALIDATEARTICLE,SQLMapper.VALIDATEARTICLEOUTMAPPER,paramMapper);

			} catch (DBConnectionException e) {
				throw new DAOAppException(e);
			} catch (DBFWException e) {
				throw new DAOAppException(e);
			}

			return (users != null && users.size() > 0);

		}

		
}
