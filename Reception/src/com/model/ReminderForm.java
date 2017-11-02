package com.model;

public class ReminderForm {
	
	private int EnquiryId;
	private String ClientName;
	private int FollowUpId;
	private String FollowUpMode;
	private String EnquiryDescription;
	private String FollowUpDate;
	private String Needed;
	private String Response;
	private String NextFollowUpDate;
	private String ClientContact;
	private String ClientEmailId;
	
	public ReminderForm() {
		super();
		// TODO Auto-generated constructor stub
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

	public int getFollowUpId() {
		return FollowUpId;
	}

	public void setFollowUpId(int followUpId) {
		FollowUpId = followUpId;
	}

	public String getFollowUpMode() {
		return FollowUpMode;
	}

	public void setFollowUpMode(String followUpMode) {
		FollowUpMode = followUpMode;
	}

	public String getEnquiryDescription() {
		return EnquiryDescription;
	}

	public void setEnquiryDescription(String enquiryDescription) {
		EnquiryDescription = enquiryDescription;
	}

	public String getFollowUpDate() {
		return FollowUpDate;
	}

	public void setFollowUpDate(String followUpDate) {
		FollowUpDate = followUpDate;
	}

	public String getNeeded() {
		return Needed;
	}

	public void setNeeded(String needed) {
		Needed = needed;
	}

	public String getResponse() {
		return Response;
	}

	public void setResponse(String response) {
		Response = response;
	}

	public String getNextFollowUpDate() {
		return NextFollowUpDate;
	}

	public void setNextFollowUpDate(String nextFollowUpDate) {
		NextFollowUpDate = nextFollowUpDate;
	}

	public String getClientContact() {
		return ClientContact;
	}

	public void setClientContact(String clientContact) {
		ClientContact = clientContact;
	}

	public String getClientEmailId() {
		return ClientEmailId;
	}

	public void setClientEmailId(String clientEmailId) {
		ClientEmailId = clientEmailId;
	}

	public ReminderForm(int reminderId, int enquiryId, String clientName, int followUpId, String followUpMode,
			String enquiryDescription, String followUpDate, String needed, String response, String nextFollowUpDate,
			String clientContact, String clientEmailId) {
		super();
		EnquiryId = enquiryId;
		ClientName = clientName;
		FollowUpId = followUpId;
		FollowUpMode = followUpMode;
		EnquiryDescription = enquiryDescription;
		FollowUpDate = followUpDate;
		Needed = needed;
		Response = response;
		NextFollowUpDate = nextFollowUpDate;
		ClientContact = clientContact;
		ClientEmailId = clientEmailId;
	}
	
	
}
