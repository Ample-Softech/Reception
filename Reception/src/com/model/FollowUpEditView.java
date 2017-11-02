package com.model;

public class FollowUpEditView {
	private int FollowUpId;
	private int EnquiryId;
	private String ClientName;
	private String FollowUpDate;
	private String ClientContact;
	private String ClientEmailId;
	private String NextFollowUpDate;
	private String EnquiryDescription;
	
	
		public FollowUpEditView() {
		super();
		// TODO Auto-generated constructor stub
	}


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


		public String getClientName() {
			return ClientName;
		}


		public void setClientName(String clientName) {
			ClientName = clientName;
		}


		public String getFollowUpDate() {
			return FollowUpDate;
		}


		public void setFollowUpDate(String followUpDate) {
			FollowUpDate = followUpDate;
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


		public String getNextFollowUpDate() {
			return NextFollowUpDate;
		}


		public void setNextFollowUpDate(String nextFollowUpDate) {
			NextFollowUpDate = nextFollowUpDate;
		}


		public String getEnquiryDescription() {
			return EnquiryDescription;
		}


		public void setEnquiryDescription(String enquiryDescription) {
			EnquiryDescription = enquiryDescription;
		}


		public FollowUpEditView(int followUpId, int enquiryId, String clientName, String followUpDate,
				String clientContact, String clientEmailId, String nextFollowUpDate, String enquiryDescription) {
			super();
			FollowUpId = followUpId;
			EnquiryId = enquiryId;
			ClientName = clientName;
			FollowUpDate = followUpDate;
			ClientContact = clientContact;
			ClientEmailId = clientEmailId;
			NextFollowUpDate = nextFollowUpDate;
			EnquiryDescription = enquiryDescription;
		}


			
}
