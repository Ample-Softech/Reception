package com.model;

public class SourceOfInfo {
	private int SourceId;
	private String SourceOfInfo;
	public SourceOfInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SourceOfInfo(String sourceOfInfo) {
		super();
		SourceOfInfo = sourceOfInfo;
	}
	public SourceOfInfo(int sourceId, String sourceOfInfo) {
		super();
		SourceId = sourceId;
		SourceOfInfo = sourceOfInfo;
	}
	public int getSourceId() {
		return SourceId;
	}
	public void setSourceId(int sourceId) {
		SourceId = sourceId;
	}
	public String getSourceOfInfo() {
		return SourceOfInfo;
	}
	public void setSourceOfInfo(String sourceOfInfo) {
		SourceOfInfo = sourceOfInfo;
	}
	
	

}
