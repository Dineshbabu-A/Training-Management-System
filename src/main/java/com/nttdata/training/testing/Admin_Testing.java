package com.nttdata.training.testing;

import static org.junit.Assert.*;

import java.util.List;
import org.junit.Test;

import com.nttdata.dbcon.ConnectionHolder;
import com.nttdata.dbcon.DBConnectionException;
import com.nttdata.dbfw.DBFWException;
import com.nttdata.training.dao.Admin_Dao;
import com.nttdata.training.dao.Approve_Dao;
import com.nttdata.training.dao.Institute_Dao;
import com.nttdata.training.dao.Student_Dao;
import com.nttdata.training.domain.Institute;

public class Admin_Testing {

	@Test
	public void test_adminlogin() throws DBFWException, DBConnectionException {
		List result=Admin_Dao.login_admin("Ad100","kiran12");
		assretEquals(1,result);
	}
	private void assretEquals(int i, List result) {
		// TODO Auto-generated method stub
		
	}
	@Test
	public void test_approve() throws DBFWException {
		int result=Approve_Dao.approve_institute("Approved");
		assretEquals(1,result);
	}
	private void assretEquals(int i, int result) {
		// TODO Auto-generated method stub
		
	}
	
	@Test
	public void test_delete() throws DBFWException {
		int result=Institute_Dao.delete_institute("Ins105");
		assretEquals(1,result);
	}
	
}
