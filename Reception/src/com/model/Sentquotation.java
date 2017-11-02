package com.model;

public class Sentquotation {
private int ClientId;
private int QuotationId;
public int getClientId() {
	return ClientId;
}
public void setClientId(int clientId) {
	ClientId = clientId;
}
public int getQuotationId() {
	return QuotationId;
}
public void setQuotationId(int quotationId) {
	QuotationId = quotationId;
}
public Sentquotation(int clientId, int quotationId) {
	super();
	ClientId = clientId;
	QuotationId = quotationId;
}
public Sentquotation() {
	super();
}
}
