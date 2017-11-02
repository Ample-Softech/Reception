package com.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.model.Client;
import com.model.Followup;

public class FollowupDao {

	JdbcTemplate template;
	
	public FollowupDao() {
		super();	
	}
	
	public FollowupDao(JdbcTemplate template) {
		super();
		this.template = template;
	}

	public JdbcTemplate getTemplate() {
		return template;
	}

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

//----------------------------------------------------------------------	
	
	public void save()
	{
		
	}
	
//----------------------------------------------------------------------	
	public void updateFollowUpByStatus(Followup f)
	{
		String s="UPDATE followup SET Status='"+f.getStatus()+"' WHERE `FollowUpId`="+f.getFollowUpId();
		int rowupdated=template.update(s);
		System.out.println("FollowupDao-->updateFollowUpByStatus(Followup f)-->Rows updated = "+rowupdated);
	}
	
//-----------------------------------------------------------------------
	public Followup getFollowUpById(int id)
	{
		Followup cm=null;
		String s="select * from Followup where FollowUpId=?";
		cm=template.queryForObject(s, new Object[]{id},new BeanPropertyRowMapper<Followup>(Followup.class));
		return cm;
	}
	
//-----------------------------------------------------------------------
	public List<Followup> getFollowups(int pageid,int perpage)
	{
		return template.query("select * from Followup order by FollowUpId desc limit "+(pageid-1)+","+perpage,new RowMapper<Followup>()
		{
			public Followup mapRow(ResultSet rs,int row) throws SQLException
			{
				Followup s=new Followup(rs.getInt(1),rs.getInt(2),rs.getString(3));
				//System.out.println("FollowupId : "+s.getFollowUpId()+"\tEnquiryId : "+s.getEnquiryId());
				/*s.setId(rs.getInt(1));
				s.setName(rs.getString(2));
				s.setAddr(rs.getString(3));
				*/
				return s;
			}			
		});
	}
	
	public List<Followup> getFollowups()
	{
		return template.query("select * from Followup order by FollowUpId desc ",new RowMapper<Followup>()
		{
			public Followup mapRow(ResultSet rs,int row) throws SQLException
			{
				Followup s=new Followup(rs.getInt(1),rs.getInt(2),rs.getString(3));
				//System.out.println("FollowupId : "+s.getFollowUpId()+"\tEnquiryId : "+s.getEnquiryId());
				/*s.setId(rs.getInt(1));
				s.setName(rs.getString(2));
				s.setAddr(rs.getString(3));
				*/
				return s;
			}			
		});
	}
	
	
	public int getFollowUpCount()
	{
		String s="select count(*) from followup";
		return template.queryForObject(s, Integer.class); 
	}
	
//------------------------------------------------------------------------	
}
