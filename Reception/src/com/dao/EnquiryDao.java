package com.dao;

import org.springframework.dao.IncorrectResultSizeDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.model.Enquiry;
import com.model.FollowUpMode;
import com.model.NewEnquiry;

public class EnquiryDao {
	JdbcTemplate template;

	public JdbcTemplate getTemplate() {
		return template;
	}

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public EnquiryDao(JdbcTemplate template) {
		super();
		this.template = template;
	}
	
	
	public void save(NewEnquiry c)
	{
		String sql=null;
		try{
		sql="insert into enquiry(EnquiryDescription,ClientId,TechnologyId,SourceId) values ('"+c.getEnquiryDescription()+"','"+c.getClientId()+"','"+c.getTechnologyId()+"','"+c.getSourceId()+"')";
		System.out.println("EnquiryDao-> "+sql);
		template.update(sql);
		
		}catch(IncorrectResultSizeDataAccessException e)
		{
			if(e.getMessage().contains("Incorrect result size: expected 1, actual"))
			{
				System.out.println("Sorry cannot save your query, Please enter different contact Number");
			}
			if(e.getMessage().contains("Cannot add or update a child row: a foreign key constraint fails (`erp`.`enquiry`, CONSTRAINT `ClientId` FOREIGN KEY (`ClientId`) REFERENCES `client` (`ClientId`) ON DELETE NO ACTION ON UPDATE NO ACTION)"))
			{
				System.out.println("EnquiryDao-> Error");
			}
		}
	}
	
	public Enquiry enquiryByEnquiryId(int id){
		String s="select * from enquiry where EnquiryId=?";
		Enquiry i=template.queryForObject(s, new Object[]{id},new BeanPropertyRowMapper<Enquiry>(Enquiry.class));
		return i;
	}
}
