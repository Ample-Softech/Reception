package com.model;
public class Invoice {
	
	
	private int FollowUpId;
	private int EnquiryId;
	//Client table Fields
	private int ClientId;
	private String ClientName;
	private String ClientContact;
	private String ClientEmailId;
	
	//Quotation table Fields
	private int QuotationId;
	private String QuotationDate;
	private String QuotationDueDate;
	private String ProjectDescription;
	
	//invoice fiedls.........
	private int InvoiceId;
	private double Amount;
	private double Discount; 
	private double GST;
	private double FinalAmount;
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
	public int getQuotationId() {
		return QuotationId;
	}
	public void setQuotationId(int quotationId) {
		QuotationId = quotationId;
	}
	public String getQuotationDate() {
		return QuotationDate;
	}
	public void setQuotationDate(String quotationDate) {
		QuotationDate = quotationDate;
	}
	public String getQuotationDueDate() {
		return QuotationDueDate;
	}
	public void setQuotationDueDate(String quotationDueDate) {
		QuotationDueDate = quotationDueDate;
	}
	public String getProjectDescription() {
		return ProjectDescription;
	}
	public void setProjectDescription(String projectDescription) {
		ProjectDescription = projectDescription;
	}
	public int getInvoiceId() {
		return InvoiceId;
	}
	public void setInvoiceId(int invoiceId) {
		InvoiceId = invoiceId;
	}
	public double getAmount() {
		return Amount;
	}
	public void setAmount(double amount) {
		Amount = amount;
	}
	public double getDiscount() {
		return Discount;
	}
	public void setDiscount(double discount) {
		Discount = discount;
	}
	public double getGST() {
		return GST;
	}
	public void setGST(double gST) {
		GST = gST;
	}
	public double getFinalAmount() {
		return FinalAmount;
	}
	public void setFinalAmount(double finalAmount) {
		FinalAmount = finalAmount;
	}
	public Invoice(int followUpId, int enquiryId, int clientId, String clientName, String clientContact,
			String clientEmailId, int quotationId, String quotationDate, String quotationDueDate,
			String projectDescription, int invoiceId, double amount, double discount, double gST, double finalAmount) {
		super();
		FollowUpId = followUpId;
		EnquiryId = enquiryId;
		ClientId = clientId;
		ClientName = clientName;
		ClientContact = clientContact;
		ClientEmailId = clientEmailId;
		QuotationId = quotationId;
		QuotationDate = quotationDate;
		QuotationDueDate = quotationDueDate;
		ProjectDescription = projectDescription;
		InvoiceId = invoiceId;
		Amount = amount;
		Discount = discount;
		GST = gST;
		FinalAmount = finalAmount;
	}
	public Invoice() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	
		
}
