package com.model;

import java.util.List;

public class IndexList {
	List<Technology> tlist;
	List<SourceOfInfo> slist;
	public List<Technology> getTlist() {
		return tlist;
	}
	public void setTlist(List<Technology> tlist) {
		this.tlist = tlist;
	}
	public List<SourceOfInfo> getSlist() {
		return slist;
	}
	public void setSlist(List<SourceOfInfo> slist) {
		this.slist = slist;
	}
	public IndexList() {
		super();
		// TODO Auto-generated constructor stub
	}
	public IndexList(List<Technology> tlist, List<SourceOfInfo> slist) {
		super();
		this.tlist = tlist;
		this.slist = slist;
	}
	
	
	

}
