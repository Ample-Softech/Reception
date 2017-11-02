package com.model;

public class Technology {
	private int TechnologyId;
	private String Technology;
	
	public Technology() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Technology(int technologyId, String technology) {
		super();
		TechnologyId = technologyId;
		Technology = technology;
	}
	public int getTechnologyId() {
		return TechnologyId;
	}
	public void setTechnologyId(int technologyId) {
		TechnologyId = technologyId;
	}
	public String getTechnology() {
		return Technology;
	}
	public void setTechnology(String technology) {
		Technology = technology;
	}
	
	

}
