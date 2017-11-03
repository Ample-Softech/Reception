package com.control;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.IncorrectResultSizeDataAccessException;
import org.springframework.jdbc.BadSqlGrammarException;
import org.springframework.jdbc.IncorrectResultSetColumnCountException;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.dao.ClientDao;
import com.dao.Dao;
import com.dao.EnquiryDao;
import com.dao.FollowupDao;
import com.dao.NewEnquiryDao;
import com.dao.QuotationDao;
import com.lowagie.text.Document;
import com.model.Admin;
import com.model.Client;
import com.model.Enquiry;
import com.model.FollowUpEditView;
import com.model.FollowUpMode;
import com.model.NewEnquiry;
import com.model.Quotation;
import com.model.ReminderForm;
import com.model.ReminderTable;
import com.model.ReminderView;
import com.model.Sentquotation;
import com.model.SourceOfInfo;
import com.model.Technology;
import com.model.ViewFollowUpForm;
import com.model.W;
import com.model.Followup;
import com.model.IndexList;
import com.model.Invo;
import com.model.Invoice;
@org.springframework.stereotype.Controller

@SessionAttributes("thought")
public class Controller {
	
	//controller class
	@Autowired
	ClientDao cdao;	//USED IN MOST OF THE FUNCTIONS IN CONTROLLER

	@Autowired
	EnquiryDao edao;
	
	@Autowired
	FollowupDao fdao;
	
	@Autowired
	NewEnquiryDao nedao;
	
	@Autowired
	Dao dao;	
	
	@Autowired
	HttpSession sess;
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	HttpServletResponse response;
	public int perpage=10;
	@Autowired
	QuotationDao qdao;
	
	@RequestMapping("/")
	public ModelAndView indn() {
		return new ModelAndView("redirect:/index");
	}
	
	//Write Home page code here...............................
	@RequestMapping("/index")
	public ModelAndView ind() {
		ModelAndView mav=new ModelAndView("index");
		System.out.println("controller-->index");
		List<Technology> tlist=dao.getTechlogies();
		List<SourceOfInfo> slist=dao.getSourceOfInfos();
		mav.addObject("tlist",tlist);
		mav.addObject("slist",slist);
		return mav;
	}

	//--------------------------------------------------------------------------------------------------------------------		
		// Write About us page code here...............................
		@RequestMapping("/setups")
		public ModelAndView setups() {
			return new ModelAndView("setups");
		}	
		
	// Write About us page code here...............................
		@RequestMapping("/technologysetup")
		public ModelAndView technologysetup() {
			List<Technology> tlist=dao.getTechlogies();
			ModelAndView mav=new ModelAndView("technologysetup");
			mav.addObject("list", tlist);
			return mav;
		}
 
		// Write About us page code here...............................
		@RequestMapping("/updatetechnology/{id}")
		public ModelAndView updatetechnology(@PathVariable int id) {
			Technology t=dao.getTechnologyByTechnologyId(id);
			List<Technology> tlist=dao.getTechlogies();
			ModelAndView mav=new ModelAndView("technologysetup");
			mav.addObject("list", tlist);
			mav.addObject("command", t);
			mav.addObject("tech", "yes");
			return mav;
		}
		
		// Write About us page code here...............................
				@RequestMapping("/updateTech")
				public ModelAndView updateTech(@ModelAttribute ("t") Technology t) {
					dao.updateTechnology(t);
					List<Technology> tlist=dao.getTechlogies();
					ModelAndView mav=new ModelAndView("technologysetup");
					mav.addObject("list", tlist);
					mav.addObject("msg", "Technlogy Updated Successfully to : "+t.getTechnology());					
					return mav;
				}
	
		// Write About us page code here...............................
		@RequestMapping("/deleteTech/{id}")
		public ModelAndView deletetechnology(@PathVariable int id) {		
			dao.deleteTechnology(id);
			return new ModelAndView("redirect:/technologysetup");
		}
				
		// Write About us page code here...............................
		@RequestMapping("/AddTechnology")
		public ModelAndView AddTechnology() {
			List<Technology> tlist=dao.getTechlogies();
			ModelAndView mav=new ModelAndView("technologysetup");
			mav.addObject("list", tlist);
			mav.addObject("command", new Technology());
			mav.addObject("addtech", "yes");
			return mav;
		}
		
		// Write About us page code here...............................
		@RequestMapping("/AddTech")
		public ModelAndView AddTech(@ModelAttribute ("t") Technology t) {
			dao.addTechnology(t);
			List<Technology> tlist=dao.getTechlogies();
			ModelAndView mav=new ModelAndView("technologysetup");
			mav.addObject("list", tlist);
			mav.addObject("msg", "Added technology: "+t.getTechnology());
			return mav;
		}
//------------------------------------------------------------------------------------------------------
		
		// Write About us page code here...............................
			@RequestMapping("/sourceofinfosetup")
			public ModelAndView sourceofinfosetup() {
				List<SourceOfInfo> slist=dao.getSourceOfInfos();
				ModelAndView mav=new ModelAndView("sourceofinfosetup");
				mav.addObject("list", slist);
				return mav;
			}
			
			// Write About us page code here...............................
			@RequestMapping("/updateSourceOfInfo/{id}")
			public ModelAndView updateSourceOfInfo(@PathVariable int id) {
				SourceOfInfo t=dao.getSourceOfInfoBySourceId(id);
				ModelAndView mav=new ModelAndView("sourceofinfosetup");
				List<SourceOfInfo> slist=dao.getSourceOfInfos();
				mav.addObject("list", slist);
				mav.addObject("command", t);
				mav.addObject("sourceedit", "yes");
				return mav;
			}
			
			// Write About us page code here...............................
					@RequestMapping("/updateSource")
					public ModelAndView updateSource(@ModelAttribute ("tm") SourceOfInfo tm) {				
						dao.updateSource(tm);
						List<SourceOfInfo> slist=dao.getSourceOfInfos();
						ModelAndView mav=new ModelAndView("sourceofinfosetup");
						mav.addObject("list", slist);
						mav.addObject("msg", "Source Updated Successfully to "+tm.getSourceOfInfo());
						return mav;
					}
		
			// Write About us page code here...............................
			@RequestMapping("/deleteSourceOfInfo/{id}")
			public ModelAndView deleteSourceOfInfo(@PathVariable int id) {
				dao.deleteSource(id);
				return new ModelAndView("redirect:/sourceofinfosetup");
			}
					
			// Write About us page code here...............................
			@RequestMapping("/addSourceOfInfo")
			public ModelAndView addSourceOfInfo() {
				ModelAndView mav=new ModelAndView("sourceofinfosetup");
				List<SourceOfInfo> slist=dao.getSourceOfInfos();
				mav.addObject("list", slist);
				mav.addObject("command", new SourceOfInfo());
				mav.addObject("addsource", "yes");
				return mav;
			}
			
			// Write About us page code here...............................
			@RequestMapping("/AddSource")
			public ModelAndView AddSource(@ModelAttribute ("t") SourceOfInfo t) {
				dao.addSource(t);
				List<SourceOfInfo> slist=dao.getSourceOfInfos();
				ModelAndView mav=new ModelAndView("sourceofinfosetup");
				mav.addObject("list", slist);
				System.out.println("Source: "+t.getSourceOfInfo());
				mav.addObject("msg", "Added Successfully to "+t.getSourceOfInfo());
				return mav;
			}
	
				
//------------------------------------------------------------------------------------------------------
			
// Write About us page code here...............................
			@RequestMapping("/followupmodesetup")
			public ModelAndView followupmodesetup() {
				List<FollowUpMode> flist=dao.getFollowUpModes();	
					return new ModelAndView("followupmodesetup","list",flist);
				}
	
//---------------------------------------------------------------------------------------------------------			
		@RequestMapping("/newenquiry1")
		public ModelAndView registerq(@ModelAttribute ("enq") NewEnquiry enq,@ModelAttribute ("c") Client c) {
			NewEnquiry e=new NewEnquiry();
			int id=cdao.insert(c);
			ModelAndView mav=new ModelAndView("index");
			List<Technology> tlist=dao.getTechlogies();
			List<SourceOfInfo> slist=dao.getSourceOfInfos();
			mav.addObject("tlist",tlist);
			mav.addObject("slist",slist);
			if(id==0)
			{
				mav.addObject("msg","user is already present with this mobile number,cannot save your query" );
				return mav;
			}	
			enq.setClientId(id);
			edao.save(enq);
			mav.addObject("msg", "Enquiry saved successfully");
			return mav;
		}

//----------------------------------------------------------------------------------------------------------------------
		// Write About us page code here...............................
		@RequestMapping("/followup")
		public ModelAndView follow() {
			return new ModelAndView("followup");
		}
		
//-----------------------------------------------------------------------------------------------------------
		
		@RequestMapping("/viewfollowup")
		public ModelAndView viewfollowup() {
			ModelAndView mav=new ModelAndView("viewfollowup");
			
			List<Technology> tlist=dao.getTechlogies();
			List<SourceOfInfo> slist=dao.getSourceOfInfos();
			mav.addObject("tlist",tlist);
			mav.addObject("slist",slist);

			List<ReminderTable> flist=dao.getReminderTables();			
			List<ViewFollowUpForm> list=new ArrayList<ViewFollowUpForm>();
			for (ReminderTable rt : flist) {
				ViewFollowUpForm vf=new ViewFollowUpForm();
				vf.setReminderId(rt.getReminderId());
				vf.setFollowUpId(rt.getFollowUpId());				//1 FollowUpId
				
				vf.setFollowUpDate(rt.getFollowUpDate());			//2	FollowUpDate
				vf.setNextFollowUpDate(rt.getNextFollowUpDate());	//3 NextFollowUpDate
				vf.setResponse(rt.getResponse());					//4 Response
				
				Followup f=fdao.getFollowUpById(rt.getFollowUpId());
				vf.setEnquiryId(f.getEnquiryId());					//5 EnquiryId
				vf.setStatus(f.getStatus());						//6 Status
				
				NewEnquiry ne=new NewEnquiry();
				ne=nedao.getEnquiryById(f.getEnquiryId());
				
				Client client=cdao.getClientById(ne.getClientId());
				vf.setClientName(client.getClientName());			//7 ClientName
				vf.setClientContact(client.getClientContact());		//8 ClientContact
				vf.setClientId(client.getClientId());
				
				Technology t=dao.getTechnologyByTechnologyId(ne.getTechnologyId());
				vf.setTechnology(t.getTechnology());				//9 Technology
				
				FollowUpMode fm=dao.getFollowUpModeByModeId(rt.getModeId());
				vf.setFollowUpMode(fm.getFollowUpMode());			//10 FollowUpMode
				
				vf.setEntryBy(rt.getEntryBy());						//11 EntryBy
				list.add(vf);				
			}//for each
			mav.addObject("list",list);
			return mav;
		}
		

		//-----------------------------------------------------------
		
		@RequestMapping("/viewfollowup/{id}")
		public ModelAndView viewfollowuppage(@PathVariable int id) {
			ModelAndView mav=new ModelAndView("viewfollowup");
			List<Technology> tlist=dao.getTechlogies();
			List<SourceOfInfo> slist=dao.getSourceOfInfos();
			mav.addObject("tlist",tlist);
			mav.addObject("slist",slist);
			
			/*System.out.println(dao.getReminderTableCount());*/
			int pagecount=dao.getReminderTableCount()/perpage;
			Integer im=pagecount;
			request.setAttribute("pn", im);
			request.setAttribute("pageid", id);
			int pageid=id;
			 if(pageid==1){}  
		        else{  
		            pageid=(pageid-1)*perpage+1;  
		        }  
			 
			List<ReminderTable> flist=dao.getReminderTables(pageid,perpage);			
			List<ViewFollowUpForm> list=new ArrayList<ViewFollowUpForm>();
			for (ReminderTable rt : flist) {
				ViewFollowUpForm vf=new ViewFollowUpForm();
				vf.setReminderId(rt.getReminderId());
				vf.setFollowUpId(rt.getFollowUpId());				//1 FollowUpId
				
				vf.setFollowUpDate(rt.getFollowUpDate());			//2	FollowUpDate
				vf.setNextFollowUpDate(rt.getNextFollowUpDate());	//3 NextFollowUpDate
				vf.setResponse(rt.getResponse());					//4 Response
				
				Followup f=fdao.getFollowUpById(rt.getFollowUpId());
				vf.setEnquiryId(f.getEnquiryId());					//5 EnquiryId
				vf.setStatus(f.getStatus());						//6 Status
				
				NewEnquiry ne=new NewEnquiry();
				ne=nedao.getEnquiryById(f.getEnquiryId());
				
				Client client=cdao.getClientById(ne.getClientId());
				vf.setClientName(client.getClientName());			//7 ClientName
				vf.setClientContact(client.getClientContact());		//8 ClientContact
				vf.setClientId(client.getClientId());
				
				Technology t=dao.getTechnologyByTechnologyId(ne.getTechnologyId());
				vf.setTechnology(t.getTechnology());				//9 Technology
				
				FollowUpMode fm=dao.getFollowUpModeByModeId(rt.getModeId());
				vf.setFollowUpMode(fm.getFollowUpMode());			//10 FollowUpMode
				
				vf.setEntryBy(rt.getEntryBy());						//11 EntryBy
				list.add(vf);				
			}//for each
			mav.addObject("list",list);
			return mav;
		}

		
		//------------------------------------------------------------
	
		//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
		@RequestMapping("/searchfollowup")
		public ModelAndView searchfollowup(@ModelAttribute ("c") Client c )
		{
			ModelAndView mav=new ModelAndView("viewfollowup2");
			List<Technology> tlist=dao.getTechlogies();
			List<SourceOfInfo> slist=dao.getSourceOfInfos();
			mav.addObject("tlist",tlist);
			mav.addObject("slist",slist);
			mav.addObject("msg", "Followups for name : "+c.getClientName());
			System.out.println(c.getClientName());
			
			
			List<ReminderTable> flist=dao.getReminderTables();			
			List<ViewFollowUpForm> list=new ArrayList<ViewFollowUpForm>();
			for (ReminderTable rt : flist) {
				ViewFollowUpForm vf=new ViewFollowUpForm();
				vf.setReminderId(rt.getReminderId());
				vf.setFollowUpId(rt.getFollowUpId());				//1 FollowUpId
				
				vf.setFollowUpDate(rt.getFollowUpDate());			//2	FollowUpDate
				vf.setNextFollowUpDate(rt.getNextFollowUpDate());	//3 NextFollowUpDate
				vf.setResponse(rt.getResponse());					//4 Response
				
				Followup f=fdao.getFollowUpById(rt.getFollowUpId());
				vf.setEnquiryId(f.getEnquiryId());					//5 EnquiryId
				vf.setStatus(f.getStatus());						//6 Status
				
				NewEnquiry ne=new NewEnquiry();
				ne=nedao.getEnquiryById(f.getEnquiryId());
				
				Client client=cdao.getClientById(ne.getClientId());
				
				if(client.getClientName().contains(c.getClientName()))
				{
					vf.setClientName(client.getClientName());			//7 ClientName
					vf.setClientContact(client.getClientContact());		//8 ClientContact
					vf.setClientId(client.getClientId());
					
					Technology t=dao.getTechnologyByTechnologyId(ne.getTechnologyId());
					vf.setTechnology(t.getTechnology());				//9 Technology
					
					FollowUpMode fm=dao.getFollowUpModeByModeId(rt.getModeId());
					vf.setFollowUpMode(fm.getFollowUpMode());			//10 FollowUpMode
					
					vf.setEntryBy(rt.getEntryBy());						//11 EntryBy
					list.add(vf);
				}				
			}//for each
			mav.addObject("list",list);
			return mav;

		}
//------------------------------------------------------------------------------------------------------------
		
		@RequestMapping("/viewfollowupbytech")
		public ModelAndView viewfollowupbytech(@ModelAttribute ("tm") Technology tm) 
		{
			System.out.println("Technology Id : "+tm.getTechnologyId());
			
			ModelAndView mav=new ModelAndView("viewfollowup2");
			List<Technology> tlist=dao.getTechlogies();
			List<SourceOfInfo> slist=dao.getSourceOfInfos();
			mav.addObject("tlist",tlist);
			mav.addObject("slist",slist);
			
			List<ReminderTable> flist=dao.getReminderTables();			
			List<ViewFollowUpForm> list=new ArrayList<ViewFollowUpForm>();
			for (ReminderTable rt : flist) {
				ViewFollowUpForm vf=new ViewFollowUpForm();
				vf.setReminderId(rt.getReminderId());
				vf.setFollowUpId(rt.getFollowUpId());				//1 FollowUpId
				
				vf.setFollowUpDate(rt.getFollowUpDate());			//2	FollowUpDate
				vf.setNextFollowUpDate(rt.getNextFollowUpDate());	//3 NextFollowUpDate
				vf.setResponse(rt.getResponse());					//4 Response
				
				Followup f=fdao.getFollowUpById(rt.getFollowUpId());
				vf.setEnquiryId(f.getEnquiryId());					//5 EnquiryId
				vf.setStatus(f.getStatus());						//6 Status
				
				NewEnquiry ne=new NewEnquiry();
				ne=nedao.getEnquiryById(f.getEnquiryId());
				
				if(tm.getTechnologyId()==ne.getTechnologyId())
				{
				Client client=cdao.getClientById(ne.getClientId());
				vf.setClientName(client.getClientName());			//7 ClientName
				vf.setClientContact(client.getClientContact());		//8 ClientContact
				vf.setClientId(client.getClientId());
				
				Technology t=dao.getTechnologyByTechnologyId(ne.getTechnologyId());
				vf.setTechnology(t.getTechnology());				//9 Technology
				mav.addObject("msg", "Followups for Technology : "+t.getTechnology());
				FollowUpMode fm=dao.getFollowUpModeByModeId(rt.getModeId());
				vf.setFollowUpMode(fm.getFollowUpMode());			//10 FollowUpMode
				
				vf.setEntryBy(rt.getEntryBy());						//11 EntryBy
				list.add(vf);
				}
			}//for each
			
			mav.addObject("list",list);
			return mav;
			/*return new ModelAndView("viewfollowup","list",list);*/
		}


		@RequestMapping("/viewfollowupbysource")
		public ModelAndView viewfollowupbysource(@ModelAttribute ("so") SourceOfInfo so) 
		{
			System.out.println("Technology Id : "+so.getSourceId());
			
			ModelAndView mav=new ModelAndView("viewfollowup2");
			List<Technology> tlist=dao.getTechlogies();
			List<SourceOfInfo> slist=dao.getSourceOfInfos();
			mav.addObject("tlist",tlist);
			mav.addObject("slist",slist);
			SourceOfInfo s=dao.getSourceOfInfoBySourceId(so.getSourceId());
			mav.addObject("msg","Followups from Source : "+s.getSourceOfInfo());
			
			List<ReminderTable> flist=dao.getReminderTables();			
			List<ViewFollowUpForm> list=new ArrayList<ViewFollowUpForm>();
			for (ReminderTable rt : flist) {
				ViewFollowUpForm vf=new ViewFollowUpForm();
				vf.setReminderId(rt.getReminderId());
				vf.setFollowUpId(rt.getFollowUpId());				//1 FollowUpId
				
				vf.setFollowUpDate(rt.getFollowUpDate());			//2	FollowUpDate
				vf.setNextFollowUpDate(rt.getNextFollowUpDate());	//3 NextFollowUpDate
				vf.setResponse(rt.getResponse());					//4 Response
				
				Followup f=fdao.getFollowUpById(rt.getFollowUpId());
				vf.setEnquiryId(f.getEnquiryId());					//5 EnquiryId
				vf.setStatus(f.getStatus());						//6 Status
				
				NewEnquiry ne=new NewEnquiry();
				ne=nedao.getEnquiryById(f.getEnquiryId());
				
				if(so.getSourceId()==ne.getSourceId())
				{		
					Client client=cdao.getClientById(ne.getClientId());
					vf.setClientName(client.getClientName());			//7 ClientName
					vf.setClientContact(client.getClientContact());		//8 ClientContact
					vf.setClientId(client.getClientId());
				
					Technology t=dao.getTechnologyByTechnologyId(ne.getTechnologyId());
					vf.setTechnology(t.getTechnology());				//9 Technology
				
					FollowUpMode fm=dao.getFollowUpModeByModeId(rt.getModeId());
					vf.setFollowUpMode(fm.getFollowUpMode());			//10 FollowUpMode
				
					vf.setEntryBy(rt.getEntryBy());						//11 EntryBy
					list.add(vf);
				}
			}//for each
			mav.addObject("list",list);
			return mav;
			/*return new ModelAndView("viewfollowup","list",list);*/
		}

//------------------------------------------------------------------------------------------------------------		
		// Write About us page code here...............................
		@RequestMapping("/viewfollowupreminder/{id}")
		public ModelAndView viewfollowupreminder(@PathVariable int id) 
		{
				NewEnquiry ne=new NewEnquiry();
				ArrayList<ReminderView> list=new ArrayList<ReminderView>();
				
				int pagecount=fdao.getFollowUpCount()/perpage;
				Integer im=pagecount;
				request.setAttribute("pn", im);
				request.setAttribute("pageid", id);
				int pageid=id;
				 if(pageid==1){}  
			        else{  
			            pageid=(pageid-1)*perpage+1;  
			        }  
					
				List<Followup> flist=fdao.getFollowups(pageid,perpage);
				for (Followup followup : flist) 
				{
					ReminderView rv=new ReminderView();
					rv.setFollowUpId(followup.getFollowUpId());
					
					ne=nedao.getEnquiryById(followup.getEnquiryId());
					rv.setEnquiryId(followup.getEnquiryId());
					rv.setEnquiryDescription(ne.getEnquiryDescription());
					
					Client client=cdao.getClientById(ne.getClientId());
					rv.setClientName(client.getClientName());
					if(followup.getStatus().equals("Open"))
						list.add(rv);
				}
				return new ModelAndView("viewfollowupreminder","list",list);
		}
		
		//------------------------------------------------------
		
		// Write About us page code here...............................
				@RequestMapping("/viewfollowupreminder")
				public ModelAndView viewfollowupreminde() 
				{
						NewEnquiry ne=new NewEnquiry();
						ArrayList<ReminderView> list=new ArrayList<ReminderView>();
						
						/*int pagecount=fdao.getFollowUpCount()/perpage;
						Integer im=pagecount;
						request.setAttribute("pn", im);
						request.setAttribute("pageid", id);
						int pageid=id;
						 if(pageid==1){}  
					        else{  
					            pageid=(pageid-1)*perpage+1;  
					        }  
						*/	
						List<Followup> flist=fdao.getFollowups();
						for (Followup followup : flist) 
						{
							ReminderView rv=new ReminderView();
							rv.setFollowUpId(followup.getFollowUpId());
							
							ne=nedao.getEnquiryById(followup.getEnquiryId());
							rv.setEnquiryId(followup.getEnquiryId());
							rv.setEnquiryDescription(ne.getEnquiryDescription());
							
							Client client=cdao.getClientById(ne.getClientId());
							rv.setClientName(client.getClientName());
							if(followup.getStatus().equals("Open"))
								list.add(rv);
						}
						return new ModelAndView("viewfollowupreminder","list",list);
				}

		
		//------------------------------------------------------
		
		@RequestMapping(value="/viewenquiry/{id}")
		public ModelAndView viewenquiry(@PathVariable int id) {
			
			Enquiry e=edao.enquiryByEnquiryId(id);
			ModelAndView mav=new ModelAndView("viewfollowupreminder");
			mav.addObject("e", e);
			mav.addObject("viewe","yes");
			
			NewEnquiry ne=new NewEnquiry();
			ArrayList<ReminderView> list=new ArrayList<ReminderView>();
			
			List<Followup> flist=fdao.getFollowups();
			for (Followup followup : flist) 
			{
				ReminderView rv=new ReminderView();
				rv.setFollowUpId(followup.getFollowUpId());
				
				ne=nedao.getEnquiryById(followup.getEnquiryId());
				rv.setEnquiryId(followup.getEnquiryId());
				rv.setEnquiryDescription(ne.getEnquiryDescription());
				
				Client client=cdao.getClientById(ne.getClientId());
				rv.setClientName(client.getClientName());
				if(followup.getStatus().equals("Open"))
					list.add(rv);
			}
			
			int pagecount=fdao.getFollowUpCount()/perpage;
			Integer im=pagecount;
			request.setAttribute("pn", im);
			request.setAttribute("pageid", id);
			
			mav.addObject("list", list);
			return mav;
			/*return new ModelAndView("error","error"," Enquiry id: "+id);*/
		}
		
		@RequestMapping(value="/followupreminder2/{id}")
		public ModelAndView searchfollowupreminder(@PathVariable int id)
		{
			ModelAndView mav=new ModelAndView("followupreminder");
			Followup s=null;
			NewEnquiry ne=null;
			Client c=null;
			FollowUpEditView fu=new FollowUpEditView();
			try
			{
				s=fdao.getFollowUpById(id);
				
				ne=nedao.getEnquiryById(s.getEnquiryId());
				
				c=cdao.getClientById(ne.getClientId());
				
				fu.setFollowUpId(s.getFollowUpId());
				fu.setEnquiryId(s.getEnquiryId());
				fu.setEnquiryDescription(ne.getEnquiryDescription());
				fu.setClientName(c.getClientName());
				fu.setClientContact(c.getClientContact());
				fu.setClientEmailId(c.getClientEmailId());
				
				//Date d = new Date();
				//DATE dt=new DATE();
				DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				Date date = new Date();
				String currDate=dateFormat.format(date);
				System.out.println(dateFormat.format(date)); //2016/11/16 12:08:43
				fu.setFollowUpDate(currDate);
				fu.setNextFollowUpDate(currDate);
			}catch(Exception e)
			{
				String er=e.getMessage();
				if(er.contains("Incorrect result size: expected 1, actual"))
					return new ModelAndView("savesuccess","message","Cannot update record. Found more than entries for same ID");
			}	
			mav.addObject("command",fu);
			mav.addObject("fu", fu);
			return mav;
			/*return new ModelAndView("followupreminder","command",fu);*/
		}
	
//-------------------------------------------------------------------------------------------------------------------------		
		// Write eDIT FOLLOW UP CODE page code here...............................

		@RequestMapping(value="/editfollowup", method=RequestMethod.POST)		
		public ModelAndView editfollowup(@ModelAttribute("rf") ReminderForm rf,@ModelAttribute ("rt") ReminderTable rt)
		{
			rt.setModeId(dao.getModeIdByMode(rf.getFollowUpMode())); //gets FollowUpModeId
			Admin a=(Admin) sess.getAttribute("user");
			rt.setEntryBy(a.getUsername());						//11 EntryBy
			
			Followup f=fdao.getFollowUpById(rf.getFollowUpId());
			if(rf.getNeeded().equals("No")){
				f.setStatus("Closed");
				fdao.updateFollowUpByStatus(f);
			}
			else{
				/*f.setStatus("Open");fdao.updateFollowUpByStatus(f);*/			}			
			try{
				dao.insertIntoReminderTable(rt);
			}
			catch(BadSqlGrammarException e){
				return new ModelAndView("error","error",e.getMessage());
			}
			return new ModelAndView("redirect:/viewfollowupreminder");
		}
		
//--------------------------------------------------------------------------------------------------------------------		
	// Write About us page code here...............................
	@RequestMapping("/about-us")
	public ModelAndView aboutus() {
		return new ModelAndView("about-us");
	}
	
	@RequestMapping(value="/mail/{id}")
	public ModelAndView mail(@PathVariable int id) {
		return new ModelAndView("error","error","mail has benn sent to Client with id: "+id);
	}
	
	
	
	//Write Services page code here...............................
	@RequestMapping("/services")
	public ModelAndView serv() {
		return new ModelAndView("services");
	}

	
	@RequestMapping("/portfolio")
	public ModelAndView portfo() {
		return new ModelAndView("invoice");
	}
	
	
	//Write Follow up page code here...........................
	@RequestMapping("/follow-up")
	public ModelAndView followup(){
		return new ModelAndView("follow-up");
	}

	
//-----------------------------------------------------------------------------------	
	//Write Follow up page code here...........................
			@RequestMapping("/loginpage")
			public ModelAndView gotologinpage(){
				return new ModelAndView("loginpage","command",new Admin("", ""));
			}
			
	
			
			//Write Follow up page code here...........................
			@RequestMapping("/login")
			public ModelAndView login(@ModelAttribute("a")Admin a){
				ModelAndView mav=new ModelAndView();
				int result=dao.getAdminLogin(a);
				if(result==1)
				{
					//mav.addObject("msg","Login success");
					//Admin n=new Admin("","");
					//mav.addObject("command", n);
					sess.setAttribute("userLog", "loggedIn");
					sess.setAttribute("user", a);
					mav.setViewName("followup");
					return mav;
				}
				else
				{
					mav.setViewName("loginpage");
					mav.addObject("msg", "Invalid UserName/Password Combination,Login Failed");
					Admin n=new Admin("","");
					mav.addObject("command", n);
					return mav;
				}
			}
	
			//Write Follow up page code here...........................
			@RequestMapping("/logout")
			public String logout(){
				try
				{
					sess.setAttribute("userlog", "loggedOut");
					sess.setAttribute("user", null);
					sess.invalidate();
				}
				catch(Exception e)
				{
					
				}
				return "redirect:/";
			}
			
//------------------------------------------------------------------------------------
	
	//Write Follow up page code here...........................
	@RequestMapping("/test2")
	public ModelAndView testforsession(@RequestParam String thoughtParam ){
		return new ModelAndView("test","thought",thoughtParam);
	}

	
	//Write Follow up page code here...........................
		@RequestMapping("/test")
		public ModelAndView testforsession(){
			return new ModelAndView("test");
		}

		
		
		
		
//-------------------------------------------------------------------------------------------------
//------------------------------------------ ----------------------------------------------
//-------------------------------------------------------------------------------------------------				
//-------------------------------------------------------------------------------------------------
		
		//Get quotation data using client id........
		@RequestMapping("/quote/{id}")
		   public ModelAndView viewempkk( @PathVariable int id){  	
			Invoice in=new Invoice();
			in=qdao.searchInvoice(id);
			  return new ModelAndView("quotationnew","command",in);  
		    }
		
		/*	//Save Quotation into db..............
		@RequestMapping("/quotesave")
		public ModelAndView savequote(@ModelAttribute Quotation qo, @ModelAttribute W w, @ModelAttribute Sentquotation sq)
		{
			Sentquotation sqq=new Sentquotation();
			sqq.setClientId(w.getClientId());
			System.out.println("sent quotation client id"+sqq.getClientId());
			sqq.setQuotationId(qo.getQuotationId());
			System.out.println("sent quotation quotation id"+sqq.getQuotationId());
			qdao.savesentquotation(sqq);
			System.out.println("sent quotation save successfully.....");
			qdao.savequote(qo);
			System.out.println("Dao called........");
			return new ModelAndView("index");
		}*/
		
		//Save Quotation into db..............
		@RequestMapping("/quotesave")
		public ModelAndView savequote(@ModelAttribute Invoice in)
		{
			qdao.savequote(in);
			return new ModelAndView("redirect:/viewfollowup");
		}
		
		//View Invice page using Client and Quotation id.............
		/*@RequestMapping("/port/{id}")
		public ModelAndView po( @PathVariable int id)
		{
			ModelAndView mav=new ModelAndView("invoicenew");
			Invoice ii=new Invoice();
			try{
			ii=qdao.searchInvoiceByClientId(id);
			mav.addObject("ii",ii);
			}catch(IncorrectResultSizeDataAccessException e)
			{
				if(e.getMessage().contains("Incorrect result size: expected 1, actual")){
					System.out.println("Error");
					ModelAndView er=new ModelAndView("error");
					er.addObject("error", "SOrry !! No Quotation Generated");
					return er;
				}
			}
			return mav;
		}*/
		
		
		@RequestMapping("/port/{id}")
		public ModelAndView po( @PathVariable int id)
		{
			
			ModelAndView mav=new ModelAndView("invoicenew");
			Invoice ii=new Invoice();
			List<Invoice> ilist=null;
			int count=qdao.getQuatationCount(id);
			
				try{
					if(count==1)
					{
						ii=qdao.searchInvoiceByClientId(id);
						mav.addObject("ii",ii);
					}
					else if(count>1)
					{
						ModelAndView m2=new ModelAndView("showq");
						ilist=qdao.getInvoices(id);
						m2.addObject("list", ilist);
						Invoice i1=ilist.get(1);
						m2.addObject("cname", i1.getClientName());
						return m2;
					}
					else if(count<1)
					{
						System.out.println("Error");
						ModelAndView er=new ModelAndView("error");
						er.addObject("error", "SOrry !! No Quotation Generated");
						return er;
					}
					}catch(IncorrectResultSizeDataAccessException e)
					{
						if(e.getMessage().contains("Incorrect result size: expected 1, actual")){
							
							System.out.println("Error");
							ModelAndView er=new ModelAndView("error");
							er.addObject("error", "SOrry !! No Quotation Generated");
							return er;
						}	
					}catch (IncorrectResultSetColumnCountException e2) {
						if(e2.getMessage().contains("IncorrectResultSetColumnCountException: Incorrect column count: expected 1, actual"))
						{
							ModelAndView er=new ModelAndView("error");
							er.addObject("error", "SOrry !! incorrect column size");
							return er;
						}
					}catch (Exception e) {
						System.out.println("Exception :"+e.getStackTrace());
					}
			return mav;
		}
		
		
		@RequestMapping("/port/2/{id}")
		public ModelAndView pos( @PathVariable int id)
		{
			ModelAndView mav=new ModelAndView("invoicenew");
			Invoice ii=new Invoice();
				try{
						ii=qdao.searchInvoiceByQuoteId(id);
						mav.addObject("ii",ii);
						return mav;
					}catch(IncorrectResultSizeDataAccessException e)
					{
						if(e.getMessage().contains("Incorrect result size: expected 1, actual")){
							
							System.out.println("Error");
							ModelAndView er=new ModelAndView("error");
							er.addObject("error", "SOrry !! No Quotation Generated");
							return er;
						}	
					}catch (IncorrectResultSetColumnCountException e2) {
						if(e2.getMessage().contains("IncorrectResultSetColumnCountException: Incorrect column count: expected 1, actual"))
						{
							ModelAndView er=new ModelAndView("error");
							er.addObject("error", "SOrry !! incorrect column size");
							return er;
						}
					}catch (Exception e) {
						System.out.println("Exception :"+e.getStackTrace());
					}
			return mav;
		}
		
		//Invoice page Save code...............
		@RequestMapping("/invoicesave")
			public ModelAndView invosave(@ModelAttribute Invoice in)
			{
			
				qdao.saveinvoice(in);				
				System.out.println("Invoice save successfuly"+in.getGST());
				return new ModelAndView("redirect:/viewfollowup","msg","Invoice generated");
			}
		
		//PDF generation code here-----------------------------
		
				//Quotation Print code..............................

				@RequestMapping("/quoteprint")
				public ModelAndView printquote(@ModelAttribute Quotation in, Document document)
				{
					ModelAndView model = new ModelAndView("quotationPdfView");
					System.out.println("Invoice = "+ in);
					sess.setAttribute("qoutation", in);
					return model;
				}
					
				//Invoice Print code..............................

						@RequestMapping("/invoiceprint")
						public ModelAndView printinvoice(@ModelAttribute Invoice in, Document document)
						{
							ModelAndView model = new ModelAndView("invoicePdfView");
							System.out.println("Invoice = "+ in);
							sess.setAttribute("invoice", in);
							return model;
						}

		
}
