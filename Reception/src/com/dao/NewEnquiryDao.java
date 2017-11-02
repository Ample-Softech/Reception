package com.dao;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.model.Client;
import com.model.NewEnquiry;



public class NewEnquiryDao {
	
	JdbcTemplate template;
	
	public NewEnquiryDao() {
		super();
		// TODO Auto-generated constructor stub
	}

	public NewEnquiryDao(JdbcTemplate template) {
		super();
		this.template = template;
	}

	public JdbcTemplate getTemplate() {
		return template;
	}

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public NewEnquiry getEnquiryById(int id)
	{
		NewEnquiry cm=null;
		String s="select * from enquiry where EnquiryId=?";
		cm=template.queryForObject(s, new Object[]{id},new BeanPropertyRowMapper<NewEnquiry>(NewEnquiry.class));
		return cm;
	}
}
