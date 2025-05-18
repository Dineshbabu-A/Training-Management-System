package com.nttdata.training.testing;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Assert;
import org.junit.Test;

import com.nttdata.dbfw.DBFWException;
import com.nttdata.training.dao.Institute_Dao;

public class Institute_Testing {

	@Test
	public void test_register() {
		
		int result=Institute_Dao.register_institute("Ins105", "BHS", "23-10-2015", "Cbe", 50, 100, "Bh12");
		assertTrue(result);
		
	}

	private void assertTrue(int i) {
		// TODO Auto-generated method stub
		
	}
	@Test
	public void test_update() throws DBFWException {
		
		long result=Institute_Dao.update_institute("Ins101", 987564738);
		assertEquals(1,result);
		
		
	}
	@Test
	public void test_update1() throws DBFWException {
		
		long result=Institute_Dao.update_institute("Ins101", 987564738);
		assertEquals(1,result);
		
		
	}
	
	

}
