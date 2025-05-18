package com.nttdata.training.testing;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;

import com.nttdata.dbcon.DBConnectionException;
import com.nttdata.dbfw.DBFWException;
import com.nttdata.training.dao.Student_Dao;

public class Student_Testing {

	@Test
	public void test_register() {
		
		int result=Student_Dao.register_student("Std101", "Selva", "BE",983736473 ,"Ds", "selva@12", 100);
		assertTrue(result);
		
	}
	@Test
	public void test_adminlogin() throws DBFWException, DBConnectionException {
		List result=Student_Dao.login_student("Std101");
		assertTrue(result);
	}

	private void assertTrue(List result) {
		// TODO Auto-generated method stub
		
	}
	private void assertTrue(int result) {
		// TODO Auto-generated method stub
		
	}
	
}
