package com.model;

public class ReminderView {
	private int FollowUpId;
	private int EnquiryId;
	private String ClientName;
	private String EnquiryDescription;
	private String Status;
	
	
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
	public String getClientName() {
		return ClientName;
	}
	public void setClientName(String clientName) {
		ClientName = clientName;
	}
	public String getEnquiryDescription() {
		return EnquiryDescription;
	}
	public void setEnquiryDescription(String enquiryDescription) {
		EnquiryDescription = enquiryDescription;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	public ReminderView() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ReminderView(int followUpId, int enquiryId, String clientName, String enquiryDescription, String status) {
		super();
		FollowUpId = followUpId;
		EnquiryId = enquiryId;
		ClientName = clientName;
		EnquiryDescription = enquiryDescription;
		Status = status;
	}
	
	
		
	

}
