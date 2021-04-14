package com.mayank;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class FeeDeatils {
	@Id
	private int roll;
	private int semester;
	private float amount=189500;
	private float amt_paid;
	private String status;
	private float req_amt=amount-amt_paid;
	
	
	public float getReq_amt() {
		return req_amt;
	}
	public void setReq_amt(float req_amt) {
		this.req_amt = req_amt;
	}
	public int getSemester() {
		return semester;
	}
	public void setSemester(int semester) {
		this.semester = semester;
	}
	public float getAmt_paid() {
		return amt_paid;
	}
	public void setAmt_paid(float amt_paid) {
		this.amt_paid = amt_paid;
	}
	public int getRoll() {
		return roll;
	}
	public void setRoll(int roll) {
		this.roll = roll;
	}
	public float getAmount() {
		return amount;
	}
	public void setAmount(float amount) {
		this.amount = amount;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
	public String execute() {
		FeeDatabase fd= new FeeDatabase();
		fd.setFeedetails(this);
		return "success";
	}
	
	

}
