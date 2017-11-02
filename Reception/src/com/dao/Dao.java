package com.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.BadSqlGrammarException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.model.Admin;
import com.model.Client;
import com.model.FollowUpMode;
import com.model.Followup;
import com.model.ReminderTable;
import com.model.SourceOfInfo;
import com.model.Technology;

public class Dao {
	JdbcTemplate template;
	public JdbcTemplate getTemplate() {
		return template;
	}
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	public Dao(JdbcTemplate template) {
		super();
		this.template = template;
	}
	public Dao() {
		super();
	}
	//-----------------------------------------------------------------------------
	public int getAdminLogin(Admin a){
		Admin b=new Admin();
		String s="select * from admintable where username=?";
		try{
			b=template.queryForObject(s, new Object[]{a.getUsername()},new BeanPropertyRowMapper<Admin>(Admin.class));
		}catch(EmptyResultDataAccessException e)
		{
			if(e.getMessage().contains("Incorrect result size: expected 1, actual 0"))
			{
				return 0;
			}
		}
		if(a.getPassword().equals(b.getPassword()))
		{
			return 1;
		}
		else return 0;
	}
	
	//------------------------------------------------------------------------------
	
		public Technology getTechnologyByTechnologyId(int id){
			Technology cm=null;
			String s="select * from technology where TechnologyId=?";
			cm=template.queryForObject(s, new Object[]{id},new BeanPropertyRowMapper<Technology>(Technology.class));
			return cm;
		}
		public List<Technology> getTechlogies(){
			return template.query("select * from technology ",new RowMapper<Technology>(){
				public Technology mapRow(ResultSet rs,int row) throws SQLException{
					Technology s=new Technology(rs.getInt(1),rs.getString(2));
					return s;
				}			
			});
		}
				
		public void updateTechnology(Technology t){
			String sql="UPDATE technology SET Technology='"+t.getTechnology()+"' WHERE `TechnologyId`="+t.getTechnologyId()+";";
			template.update(sql);
		}
		
		public void deleteTechnology(int id){
			String sql="DELETE from technology WHERE `TechnologyId`="+id+";";
			template.update(sql);
		}
		
		public void addTechnology(Technology t){
			String sql="INSERT INTO technology (`Technology`) VALUES ('"+t.getTechnology()+"');";
			template.update(sql);
		}
		
//--------------------------------------------------------------------------------
		public List<SourceOfInfo> getSourceOfInfos(){
			return template.query("select * from sourceofinformation ",new RowMapper<SourceOfInfo>(){
				public SourceOfInfo mapRow(ResultSet rs,int row) throws SQLException{
					SourceOfInfo s=new SourceOfInfo(rs.getInt(1),rs.getString(2));
					return s;
				}			
			});
		}
		
		public SourceOfInfo getSourceOfInfoBySourceId(int id){
			SourceOfInfo cm=new SourceOfInfo();
			String s="select * from sourceofinformation where SourceId=?";
			cm=template.queryForObject(s, new Object[]{id},new BeanPropertyRowMapper<SourceOfInfo>(SourceOfInfo.class));
			return cm;
		}
		public void updateSource(SourceOfInfo t){
			String sql="UPDATE sourceofinformation SET SourceOfInfo='"+t.getSourceOfInfo()+"' WHERE SourceId="+t.getSourceId()+";";
			template.update(sql);
		}
		
		public void deleteSource(int id){
			String sql="DELETE FROM sourceofinformation WHERE SourceId="+id+";";
			template.update(sql);
		}
		
		public void addSource(SourceOfInfo t){
			String sql="INSERT INTO sourceofinformation (SourceOfInfo) VALUES ('"+t.getSourceOfInfo()+"');";
			template.update(sql);
		}
	//-----------------------------------------------------------------------------
		public List<FollowUpMode> getFollowUpModes()
		{
			return template.query("select * from followupmode ",new RowMapper<FollowUpMode>()
			{
				public FollowUpMode mapRow(ResultSet rs,int row) throws SQLException
				{
					FollowUpMode s=new FollowUpMode(rs.getInt(1),rs.getString(2));
					return s;
				}			
			});
		}
		//---------------------------------------------------------------------------
		public FollowUpMode getFollowUpModeByModeId(int id)
		{
			FollowUpMode cm=new FollowUpMode();
			String s="select * from followupmode where ModeId=?";
			cm=template.queryForObject(s, new Object[]{id},new BeanPropertyRowMapper<FollowUpMode>(FollowUpMode.class));
			return cm;
		}
	//------------------------------------------------------------------------------
	
	public List<ReminderTable> getReminderTables(){
		return template.query("select * from remainder order by ReminderId desc",new RowMapper<ReminderTable>(){
			public ReminderTable mapRow(ResultSet rs,int row) throws SQLException{
				ReminderTable s=new ReminderTable(rs.getInt(1),rs.getInt(2),rs.getInt(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8));
				return s;
			}			
		});
	}
	
	public int getReminderTableCount()
	{
		String s="select count(*) from remainder";
		return template.queryForObject(s, Integer.class); 
	}
	
	public List<ReminderTable> getReminderTables(int pageid,int total){
		return template.query("select * from remainder order by ReminderId desc limit "+(pageid-1)+","+total,new RowMapper<ReminderTable>(){
			public ReminderTable mapRow(ResultSet rs,int row) throws SQLException{
				ReminderTable s=new ReminderTable(rs.getInt(1),rs.getInt(2),rs.getInt(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8));
				return s;
			}			
		});
	}
	//----
	public List<ReminderTable> getReminderTables(String ClientName){
		return template.query("select * from remainder where C",new RowMapper<ReminderTable>(){
			public ReminderTable mapRow(ResultSet rs,int row) throws SQLException{
				ReminderTable s=new ReminderTable(rs.getInt(1),rs.getInt(2),rs.getInt(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8));
				return s;
			}			
		});
	}
	
	
//---------------------------------------------------------------------------
	
	public ReminderTable getReminderTableByFollowUpId(int id){
		ReminderTable cm=new ReminderTable();
		String s="select * from remainder where FollowUpId=?";
		cm=template.queryForObject(s, new Object[]{id},new BeanPropertyRowMapper<ReminderTable>(ReminderTable.class));
		return cm;
	}	
//----------------------------------------------------------------------------
	
public int getModeIdByMode(String ModeId){
	String s="select ModeId from followupmode where FollowUpMode=?";
	FollowUpMode i=template.queryForObject(s, new Object[]{ModeId},new BeanPropertyRowMapper<FollowUpMode>(FollowUpMode.class));
	return i.getModeId();
}
//---------------------------------------------------------------------------
	public void insertIntoReminderTable(ReminderTable rt){
		String sql="insert into remainder (FollowUpId,ModeId,FollowUpDate,Needed,Response,NextFollowUpDate,EntryBy) values ("+rt.getFollowUpId()+","+rt.getModeId()+",'"+rt.getFollowUpDate()+"','"+rt.getNeeded()+"','"+rt.getResponse()+"','"+rt.getNextFollowUpDate()+"','"+rt.getEntryBy()+"');";
		template.update(sql);
	}
//---------------------------------------------------------------------------
}
