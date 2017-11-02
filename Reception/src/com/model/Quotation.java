package com.model;

public class Quotation {
	private int quotationId;
	private int clientId;
	private int EnquiryId;
	private String clientName;
	private String clientContact;
	private String clientEmailId;
	private String clientAddress;
	private String clientCity;
	private String clientCountry;
	private String clientFirm;
	private String projectDescription;
	private String quotationDate;
	private String quotationDueDate;
	private String amount;
	
	public int getQuotationId() {
		return quotationId;
	}

	public void setQuotationId(int quotationId) {
		this.quotationId = quotationId;
	}

	public int getClientId() {
		return clientId;
	}

	public void setClientId(int clientId) {
		this.clientId = clientId;
	}

	public int getEnquiryId() {
		return EnquiryId;
	}

	public void setEnquiryId(int enquiryId) {
		EnquiryId = enquiryId;
	}

	public String getClientName() {
		return clientName;
	}

	public void setClientName(String clientName) {
		this.clientName = clientName;
	}

	public String getClientContact() {
		return clientContact;
	}

	public void setClientContact(String clientContact) {
		this.clientContact = clientContact;
	}

	public String getClientEmailId() {
		return clientEmailId;
	}

	public void setClientEmailId(String clientEmailId) {
		this.clientEmailId = clientEmailId;
	}

	public String getClientAddress() {
		return clientAddress;
	}

	public void setClientAddress(String clientAddress) {
		this.clientAddress = clientAddress;
	}

	public String getClientCity() {
		return clientCity;
	}

	public void setClientCity(String clientCity) {
		this.clientCity = clientCity;
	}

	public String getClientCountry() {
		return clientCountry;
	}

	public void setClientCountry(String clientCountry) {
		this.clientCountry = clientCountry;
	}

	public String getClientFirm() {
		return clientFirm;
	}

	public void setClientFirm(String clientFirm) {
		this.clientFirm = clientFirm;
	}

	public String getProjectDescription() {
		return projectDescription;
	}

	public void setProjectDescription(String projectDescription) {
		this.projectDescription = projectDescription;
	}

	public String getQuotationDate() {
		return quotationDate;
	}

	public void setQuotationDate(String quotationDate) {
		this.quotationDate = quotationDate;
	}

	public String getQuotationDueDate() {
		return quotationDueDate;
	}

	public void setQuotationDueDate(String quotationDueDate) {
		this.quotationDueDate = quotationDueDate;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public Quotation(int quotationId, int clientId, int enquiryId, String clientName, String clientContact,
			String clientEmailId, String clientAddress, String clientCity, String clientCountry, String clientFirm,
			String projectDescription, String quotationDate, String quotationDueDate, String amount) {
		super();
		this.quotationId = quotationId;
		this.clientId = clientId;
		EnquiryId = enquiryId;
		this.clientName = clientName;
		this.clientContact = clientContact;
		this.clientEmailId = clientEmailId;
		this.clientAddress = clientAddress;
		this.clientCity = clientCity;
		this.clientCountry = clientCountry;
		this.clientFirm = clientFirm;
		this.projectDescription = projectDescription;
		this.quotationDate = quotationDate;
		this.quotationDueDate = quotationDueDate;
		this.amount = amount;
	}

	public Quotation() {
		super();
	}
	
}
