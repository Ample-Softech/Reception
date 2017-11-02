package com.model;

public class Invo {
private int QuotationId;
private int ClientId;


public Invo(int quotationId, int clientId) {
	super();
	QuotationId = quotationId;
	ClientId = clientId;
}


public int getQuotationId() {
	return QuotationId;
}


public void setQuotationId(int quotationId) {
	QuotationId = quotationId;
}


public int getClientId() {
	return ClientId;
}


public void setClientId(int clientId) {
	ClientId = clientId;
}


public Invo() {
	super();
}


}
