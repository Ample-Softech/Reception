package com.model;

public class FollowUpMode {
	private int ModeId;
	private String FollowUpMode;
	
	public FollowUpMode() {
		super();
		// TODO Auto-generated constructor stub
	}
	public FollowUpMode(int modeId, String followUpMode) {
		super();
		ModeId = modeId;
		FollowUpMode = followUpMode;
	}
	public int getModeId() {
		return ModeId;
	}
	public void setModeId(int modeId) {
		ModeId = modeId;
	}
	public String getFollowUpMode() {
		return FollowUpMode;
	}
	public void setFollowUpMode(String followUpMode) {
		FollowUpMode = followUpMode;
	}
	
		
}
