package com.model;

public class ReminderTable {
	private int ReminderId;
	private int FollowUpId;
	private int ModeId;
	private String FollowUpDate;
	private String Needed;
	private String Response;
	private String NextFollowUpDate;
	private String EntryBy;
	
			
	public ReminderTable() {
		super();
		// TODO Auto-generated constructor stub
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


	public int getModeId() {
		return ModeId;
	}


	public void setModeId(int modeId) {
		ModeId = modeId;
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


	public String getEntryBy() {
		return EntryBy;
	}


	public void setEntryBy(String entryBy) {
		EntryBy = entryBy;
	}


	public ReminderTable(int reminderId, int followUpId, int modeId, String followUpDate, String needed,
			String response, String nextFollowUpDate, String entryBy) {
		super();
		ReminderId = reminderId;
		FollowUpId = followUpId;
		ModeId = modeId;
		FollowUpDate = followUpDate;
		Needed = needed;
		Response = response;
		NextFollowUpDate = nextFollowUpDate;
		EntryBy = entryBy;
	}
	

		
}
