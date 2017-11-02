package com.model;

public class ViewFollowUpForm {
	
	private int ClientId;
	private int ReminderId;
	private int FollowUpId;
	private int EnquiryId;
	private String ClientName;
	private String ClientContact;
	private String Technology;
	private String FollowUpMode;
	private String NextFollowUpDate;
	private String FollowUpDate;
	private String Response;
	private String Status;
	private String EntryBy;

	public ViewFollowUpForm() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	
	public ViewFollowUpForm(int clientId, int reminderId, int followUpId, int enquiryId, String clientName,
			String clientContact, String technology, String followUpMode, String nextFollowUpDate, String followUpDate,
			String response, String status, String entryBy) {
		super();
		ClientId = clientId;
		ReminderId = reminderId;
		FollowUpId = followUpId;
		EnquiryId = enquiryId;
		ClientName = clientName;
		ClientContact = clientContact;
		Technology = technology;
		FollowUpMode = followUpMode;
		NextFollowUpDate = nextFollowUpDate;
		FollowUpDate = followUpDate;
		Response = response;
		Status = status;
		EntryBy = entryBy;
	}



	public int getClientId() {
		return ClientId;
	}

	public void setClientId(int clientId) {
		ClientId = clientId;
	}

	public int getReminderId() {
		return ReminderId;
	}

	public void setReminderId(int reminderId) {
		ReminderId = reminderId;
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

	public String getClientName() {
		return ClientName;
	}

	public void setClientName(String clientName) {
		ClientName = clientName;
	}

	public String getClientContact() {
		return ClientContact;
	}

	public void setClientContact(String clientContact) {
		ClientContact = clientContact;
	}

	public String getTechnology() {
		return Technology;
	}

	public void setTechnology(String technology) {
		Technology = technology;
	}

	public String getFollowUpMode() {
		return FollowUpMode;
	}

	public void setFollowUpMode(String followUpMode) {
		FollowUpMode = followUpMode;
	}

	public String getNextFollowUpDate() {
		return NextFollowUpDate;
	}

	public void setNextFollowUpDate(String nextFollowUpDate) {
		NextFollowUpDate = nextFollowUpDate;
	}

	public String getFollowUpDate() {
		return FollowUpDate;
	}

	public void setFollowUpDate(String followUpDate) {
		FollowUpDate = followUpDate;
	}

	public String getResponse() {
		return Response;
	}

	public void setResponse(String response) {
		Response = response;
	}

	public String getStatus() {
		return Status;
	}

	public void setStatus(String status) {
		Status = status;
	}

	public String getEntryBy() {
		return EntryBy;
	}

	public void setEntryBy(String entryBy) {
		EntryBy = entryBy;
	}

	
}
