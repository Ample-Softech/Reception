package com.model;

public class Client {
	private int ClientId;
	private String ClientName;
	private String ClientFirm;
	private String ClientEmailId;
	private String ClientContact;
	private String ClientAddress;
	private String ClientCity;
	private String ClientState;
	private String ClientCountry;
	
	
	public Client() {
		super();
		// TODO Auto-generated constructor stub
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
	public Client(int clientId, String clientName, String clientFirm, String clientEmailId, String clientContact,
			String clientAddress, String clientCity, String clientState, String clientCountry) {
		super();
		ClientId = clientId;
		ClientName = clientName;
		ClientFirm = clientFirm;
		ClientEmailId = clientEmailId;
		ClientContact = clientContact;
		ClientAddress = clientAddress;
		ClientCity = clientCity;
		ClientState = clientState;
		ClientCountry = clientCountry;
	}
		
}
