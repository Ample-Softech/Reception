package com.dao;

import java.sql.PreparedStatement;

import org.springframework.dao.IncorrectResultSizeDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.model.Client;
import com.model.NewEnquiry;
import com.mysql.jdbc.ResultSetImpl;

public class ClientDao {
	JdbcTemplate template;

	public JdbcTemplate getTemplate() {
		return template;
	}

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int insert(Client c)
	{
		Client cm=null;
		String sql="insert into client(ClientName,ClientFirm,ClientEmailId,ClientContact,ClientAddress,ClientCity,ClientState,ClientCountry) values ('"+c.getClientName()+"','"+c.getClientFirm()+"','"+c.getClientEmailId()+"','"+c.getClientContact()+"','"+c.getClientAddress()+"','"+c.getClientCity()+"','"+c.getClientState()+"','"+c.getClientCountry()+"')";
		//System.out.println("ClientDao-> Query : "+sql);
		try{
			template.update(sql);
			String s="select ClientId from client where ClientContact= ?";
			//System.out.println("ClientDao-> Query to select ClientID : "+s);
			cm=template.queryForObject(s, new Object[]{c.getClientContact()},new BeanPropertyRowMapper<Client>(Client.class));
			//System.out.println("ClientDao-> Afyer getting Client Id : "+cm.getClientId());
			return cm.getClientId();
		}catch(IncorrectResultSizeDataAccessException e)
		{
			if(e.getMessage().contains("Incorrect result size: expected 1, actual"))
			{
				System.out.println("Sorry cannot save your query, Please enter different contact Number");
			}
		}
		return 0;
	}
	public Client getClientById(int id)
	{
		Client cm=null;
		String s="select * from client where ClientId=?";
		cm=template.queryForObject(s, new Object[]{id},new BeanPropertyRowMapper<Client>(Client.class));
		return cm;
	}
}
