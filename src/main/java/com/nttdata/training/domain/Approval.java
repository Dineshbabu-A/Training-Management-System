package com.nttdata.training.domain;

public class Approval {
	
	
	
	public Approval(String approval_Status, String institute_Id) {
		super();
		Approval_Status = approval_Status;
		Institute_Id = institute_Id;
	}
	
	
	

	public String getApproval_Status() {
		return Approval_Status;
	}
	public void setApproval_Status(String approval_Status) {
		Approval_Status = approval_Status;
	}
	public String getInstitute_Id() {
		return Institute_Id;
	}
	public void setInstitute_Id(String institute_Id) {
		Institute_Id = institute_Id;
	}
	String Approval_Status;
	@Override
	public String toString() {
		return "Approval [Approval_Status=" + Approval_Status + ", Institute_Id=" + Institute_Id + "]";
	}
	String Institute_Id;
	

}
