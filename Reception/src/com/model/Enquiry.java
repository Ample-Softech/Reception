package com.model;

public class Enquiry {
	
	int EnquiryId;
	int ClientId;
	String ClientName;
	String ClientFirm;
	String ClientEmailId;
	String ClientContact;
	String ClientAddress;
	String ClientCity;
	String ClientState;
	String ClientCountry;
	String EnquiryDescription;
	int pincode;
	int TechnologyId;
	int SourceId;
	
	
	public int getPincode() {
		return pincode;
	}
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
	
	
	public int getEnquiryId() {
		return EnquiryId;
	}
	public void setEnquiryId(int enquiryId) {
		EnquiryId = enquiryId;
	}
	public int getClientId() {
		return ClientId;
	}
	public void setClientId(int clientId) {
		ClientId = clientId;
	}
	public String getClientName() {
		return ClientName;
	}
	public void setClientName(String clientName) {
		ClientName = clientName;
	}
	public String getClientFirm() {
		return ClientFirm;
	}
	public void setClientFirm(String clientFirm) {
		ClientFirm = clientFirm;
	}
	public String getClientEmailId() {
		return ClientEmailId;
	}
	public void setClientEmailId(String clientEmailId) {
		ClientEmailId = clientEmailId;
	}
	public String getClientContact() {
		return ClientContact;
	}
	public void setClientContact(String clientContact) {
		ClientContact = clientContact;
	}
	public String getClientAddress() {
		return ClientAddress;
	}
	public void setClientAddress(String clientAddress) {
		ClientAddress = clientAddress;
	}
	public String getClientCity() {
		return ClientCity;
	}
	public void setClientCity(String clientCity) {
		ClientCity = clientCity;
	}
	public String getClientState() {
		return ClientState;
	}
	public void setClientState(String clientState) {
		ClientState = clientState;
	}
	public String getClientCountry() {
		return ClientCountry;
	}
	public void setClientCountry(String clientCountry) {
		ClientCountry = clientCountry;
	}
	public String getEnquiryDescription() {
		return EnquiryDescription;
	}
	public void setEnquiryDescription(String enquiryDescription) {
		EnquiryDescription = enquiryDescription;
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
	
}
