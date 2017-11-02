package com.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.model.Invo;
import com.model.Invoice;
import com.model.Quotation;
import com.model.ReminderTable;
import com.model.Sentquotation;

public class QuotationDao {
	JdbcTemplate template;

	public JdbcTemplate getTemplate() {
		return template;
	}

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int savesentquotation(Sentquotation sqq){
		String query1="insert into sentquotation(ClientId,QuotationId) values(?,?)";
		return template.update(query1, sqq.getClientId(),sqq.getQuotationId());	
	}
	
	
	public Quotation getEmpById(int clientId){  
	    String sql="select  from client where ClientId=?";  
	    return template.queryForObject(sql, new Object[]{clientId},new BeanPropertyRowMapper<Quotation>(Quotation.class));  
	}
	
	
	public int savequote(Invoice qo)
	{
		String s="INSERT INTO sentquotation (ClientId) VALUES ('"+qo.getClientId()+"');";
		String q="insert into quotation (ClientId,EnquiryId,QuotationDate,QuotationDueDate,Amount,ProjectDescription) values (?,?,?,?,?,?)";
		return template.update(q, qo.getClientId(),qo.getEnquiryId(), qo.getQuotationDate(),qo.getQuotationDueDate(),qo.getAmount(),qo.getProjectDescription());
	}

	
	public Invoice searchInvoice (int FollowupId){ 
		String sql="select followup.EnquiryId, client.ClientId,client.ClientName,client.ClientContact,client.ClientEmailId from followup,client,enquiry where followup.FollowUpId=? and enquiry.EnquiryId = followup.EnquiryId and enquiry.ClientId=client.ClientId;";
	    return template.queryForObject(sql, new Object[]{FollowupId},new BeanPropertyRowMapper<Invoice>(Invoice.class));  
	}
	
	public Invoice searchInvoiceByClientId(int FollowupId)
	{
		String sql="select quotation.QuotationId,quotation.QuotationDate,quotation.QuotationDueDate,quotation.ProjectDescription,quotation.Amount,quotation.ClientId ,client.ClientName,client.ClientContact,client.ClientEmailId from client,quotation where quotation.ClientId=? and client.ClientId=quotation.ClientId ;";
	    return template.queryForObject(sql, new Object[]{FollowupId},new BeanPropertyRowMapper<Invoice>(Invoice.class));
	}
	
	public Invoice searchInvoiceByQuoteId(int FollowupId)
	{
		String sql="select quotation.QuotationId,quotation.QuotationDate,quotation.QuotationDueDate,quotation.ProjectDescription,quotation.Amount,quotation.ClientId ,client.ClientName,client.ClientContact,client.ClientEmailId from client,quotation where quotation.QuotationId=? and client.ClientId=quotation.ClientId ";
	    return template.queryForObject(sql, new Object[]{FollowupId},new BeanPropertyRowMapper<Invoice>(Invoice.class));
	}
	
	public int getQuatationCount(int FollowupId)
	{
		String sql="select count(*) from client,quotation where quotation.ClientId=? and client.ClientId=quotation.ClientId ;";
	    return template.queryForObject(sql, new Object[]{FollowupId},(Integer.class)); 
	}
	
	public List<Invoice> getInvoices(int id){
		String s="select quotation.QuotationId,quotation.Amount,quotation.ClientId ,client.ClientName,quotation.ProjectDescription from client,quotation where quotation.ClientId="+id+" and client.ClientId=quotation.ClientId ;";
		return template.query(s,new RowMapper<Invoice>(){
			public Invoice mapRow(ResultSet rs,int row) {				
				/*Invoice s=new Invoice(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5),rs.getInt(6),rs.getString(7),rs.getString(8),rs.getString(9));*/
				try{
				Invoice s=new Invoice();
				s.setQuotationId(rs.getInt(1));
				s.setClientName(rs.getString(4));
				s.setClientId(rs.getInt(3));
				s.setAmount(rs.getInt(2));
				s.setProjectDescription(rs.getString(5));
				/*s.setQuotationDate(rs.getString(2));
				s.setQuotationDueDate(rs.getString(3));
				
				s.setClientContact(rs.getString(8));
				s.setClientEmailId(rs.getString(9));*/
				return s;
				}catch(Exception e)
				{
					System.out.println("Error "+e.getStackTrace());
				}
				return null;
			}			
		});
	}
	
	public Invo searchquote (int QuotationId){  
	    String sql="select * from sentquotation where QuotationId=?";  
	    return template.queryForObject(sql, new Object[]{QuotationId},new BeanPropertyRowMapper<Invo>(Invo.class));  
	}
	
	public Quotation searchquote1 (int QuotationId){  
	    String sql="select * from client where ClientId=?";  
	    return template.queryForObject(sql, new Object[]{QuotationId},new BeanPropertyRowMapper<Quotation>(Quotation.class));  
	}
	
	
	public int saveinvoice(Invoice in)
	{
		String i="insert into saveinvoice (ClientId,QuotationId,Amount,Discount,GST,FinalAmount) values (?,?,?,?,?,?)";
		return template.update(i,in.getClientId(), in.getQuotationId(), in.getAmount(),in.getDiscount(),in.getGST(),in.getFinalAmount());
	}
}
