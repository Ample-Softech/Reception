package com.model;

public class Followup {
	private int FollowUpId;
	private int EnquiryId;
	private String Status;
	public Followup(int followUpId, int enquiryId, String status) {
		super();
		FollowUpId = followUpId;
		EnquiryId = enquiryId;
		Status = status;
	}
	public Followup() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getFollowUpId() {
		return FollowUpId;
	}
	public void setFollowUpId(int followUpId) {
		FollowUpId = followUpId;
	}
	public int getEnquiryId() {
		return EnquiryId;
	}
	public void setEnquiryId(int enquiryId) {
		EnquiryId = enquiryId;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	
		
	
}
