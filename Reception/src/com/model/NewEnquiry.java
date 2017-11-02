package com.model;

public class NewEnquiry {
	int EnquiryId;
	String EnquiryDescription;
	int ClientId;
	int TechnologyId;
	int SourceId;
	
	
	public int getEnquiryId() {
		return EnquiryId;
	}
	public void setEnquiryId(int enquiryId) {
		EnquiryId = enquiryId;
	}
	public String getEnquiryDescription() {
		return EnquiryDescription;
	}
	public void setEnquiryDescription(String enquiryDescription) {
		EnquiryDescription = enquiryDescription;
	}
	public int getClientId() {
		return ClientId;
	}
	public void setClientId(int clientId) {
		ClientId = clientId;
	}
	public int getTechnologyId() {
		return TechnologyId;
	}
	public void setTechnologyId(int technologyId) {
		TechnologyId = technologyId;
	}
	public int getSourceId() {
		return SourceId;
	}
	public void setSourceId(int sourceId) {
		SourceId = sourceId;
	}
	public NewEnquiry(int enquiryId, String enquiryDescription, int clientId, int technologyId, int sourceId) {
		super();
		EnquiryId = enquiryId;
		EnquiryDescription = enquiryDescription;
		ClientId = clientId;
		TechnologyId = technologyId;
		SourceId = sourceId;
	}
	public NewEnquiry() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

}
