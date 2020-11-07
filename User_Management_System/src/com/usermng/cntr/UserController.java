package com.usermng.cntr;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.usermng.dao.AdminDao;
import com.usermng.dto.Admin;
import com.usermng.dto.AdminRequest;
import com.usermng.dto.MeetingRequest;
import com.usermng.dto.ProductLog;
import com.usermng.dto.User;
import com.usermng.service.AdminService;
import com.usermng.service.MeetingService;
import com.usermng.service.UserService;
import com.usermng.validdator.UserValidator;
import org.springframework.mail.MailSender;
@Controller
public class UserController {

	@Autowired
	private UserService userService;
	@Autowired
	private MeetingService meetingService;
	@Autowired
	private AdminService adminService;
	@Autowired
	private UserValidator userValidator;
	@Autowired
	private MailSender mailSender;
	
	@RequestMapping(value="/sign_in.umng" , method=RequestMethod.GET)
	public String signIn(ModelMap map) {
		map.put("user", new User());
		return "signin";
		
	}
	
	
	@RequestMapping(value="/sign.umng" , method=RequestMethod.POST)
	public String register(ModelMap map,User user ) {
		userService.addUser(user);
		map.put("user", new User());
		return "signin";
		
	}
	
	
	@RequestMapping(value="/log_in.umng" , method=RequestMethod.GET)
	public String log(ModelMap map) {
		map.put("user", new User());
	 
		return "login";
		
	}
	
	
	@RequestMapping(value="/login.umng" , method=RequestMethod.POST)
	public String login(ModelMap map,User user ,HttpSession session) {
	/*
		userValidator.validate(user, result);
		if(result.hasErrors()) {
			map.put("user", new User());
			return "login";
		}
	*/
	
		
		boolean b = userService.findUser(user);
		
		if(b) {
			System.out.println(user.getUserId());
			session.setAttribute("user", user);
			User u = userService.catchUser(user.getUserId());
			map.put("u", u);
			return "home";
		}
		
		else {
			map.put("user", new User());
			map.put("error", "You Entered invalid Email address or Password");
			return "login";
			
		}
		
	}
	
	
	@RequestMapping(value="/view_profile.umng" , method=RequestMethod.GET)
	public String viewprofile(@RequestParam int id, ModelMap map) {
			User u = userService.catchUser(id);
		
		map.put("user", u);		
		return "viewprofile";
		
	}
	
	@RequestMapping(value="/update.umng" , method=RequestMethod.POST)
	public String update_data(ModelMap map,User user ) {
		userService.modifyUser(user);
		User u = userService.catchUser(user.getUserId());
		map.put("u", u);
		return "home";
		
	}
	
	@RequestMapping(value="/update_data.umng" , method=RequestMethod.GET)
	public String update(@RequestParam int id,ModelMap map) {
		User u = userService.catchUser(id);
		map.put("user", u);	
		return "update";
		
	}
	
	@RequestMapping(value="/send_meeting_Req.umng" , method=RequestMethod.GET)
	public String sendmeetingReq(ModelMap map) {
		map.put("MeetingRequest", new MeetingRequest());
		map.put("msg", "");
			return "meetingRequest_page";
		
	}
	
	@RequestMapping(value="/send_request.umng" , method=RequestMethod.POST)
	public String sendmeeting(MeetingRequest m ,ModelMap map) {
	List<AdminRequest> li =	adminService.CheckAllMeeting();
	for(AdminRequest c:li) {
		if(c.getDate().equals(m.getDate())){
			map.put("MeetingRequest", new MeetingRequest());
			map.put("msg",null);
			return "meetingRequest_page";
		}
		
	}
	
		meetingService.sendR(m);
		map.put("MeetingRequest", new MeetingRequest());
		map.put("msg","");
			return "meetingRequest_page";
		
	}
	
	
	@RequestMapping(value="/seemeeting.umng" , method=RequestMethod.GET)
	public String seemeeting(@RequestParam int id ,ModelMap map) {
		List <AdminRequest> li = adminService.getAll(id);
		System.out.println(li);
		map.put("meeting",li);
			return "showmeeting";
		
	}
	
	

	@RequestMapping(value="/admin_login.umng" , method=RequestMethod.GET)
	public String adminlogin(ModelMap map) {
		map.put("admin", new Admin());
		return "adminlogin";
		
	}
	
	@RequestMapping(value="/admin_in.umng" , method=RequestMethod.POST)
	public String adminlog(Admin admin, ModelMap map,HttpSession session) {
		boolean b= adminService.startUser(admin);
		if(b) {
			
			session.setAttribute("admin", admin);
			
			return "adminhome";
			
		}
		else {
			map.put("admin", new Admin());
			return "adminlogin";
			
		}
	}
	

	@RequestMapping(value="/client_show.umng" , method=RequestMethod.GET)
	public String seemeeting(ModelMap map) {
		List <User> li =userService.getClientList();
		
		map.put("client",li);
			return "showclient";
		
	}
	
	
	@RequestMapping(value="/delete.umng" , method=RequestMethod.GET)
	public String delete(@RequestParam int id,ModelMap map,User user) {
		user.setUserId(id);
		adminService.removeClient(user);
		List <User> li =userService.getClientList();
		
		map.put("client",li);
			return "showclient";
		
	}
	
	
	@RequestMapping(value="/see_all_meeting.umng" , method=RequestMethod.GET)
	public String see(ModelMap map) {
		List <MeetingRequest> li = meetingService.getList();
		map.put("client",li);
		return "meetinglist";
	}
	
	@RequestMapping(value="/view_client.umng" , method=RequestMethod.GET)
	public String viewclient(@RequestParam int id, ModelMap map) {
		User u = userService.catchUser(id);
		map.put("user", u);
		return "view_client";
		
	}
	
	@RequestMapping(value="/send_meeting_client.umng" , method=RequestMethod.GET)
	public String sendmeetingClient(@RequestParam int id, ModelMap map) {
		map.put("adminRequest", new AdminRequest());
		map.put("id", id);
		map.put("msg","");
			return "client_meeting";
	}
	
	@RequestMapping(value="/send_request_client.umng" , method=RequestMethod.POST)
	public String savemeeting(AdminRequest adminRequest,ModelMap map) {
		
		
		List<AdminRequest> li =	adminService.CheckAllMeeting();
		for(AdminRequest c:li) {
			if(c.getDate().equals(adminRequest.getDate())){
				map.put("adminRequest", new AdminRequest());
				map.put("msg",null);
				map.put("id", adminRequest.getUserId());
				return "client_meeting";
			}
		}
		adminService.addMeeting(adminRequest);
			return "adminhome";
	}


	@RequestMapping(value="/add_log.umng" , method=RequestMethod.GET)
	public String addLog(ModelMap map,@RequestParam int id) {
		ProductLog productLog=new ProductLog();
		map.put("prod",productLog );
		map.put("id", id);
		return "product_log";
	}

	

	@RequestMapping(value="/addlog.umng" , method=RequestMethod.POST)
	public String addDataLog(ProductLog productLog) {
		System.out.println(productLog.toString());
		adminService.addProductLog(productLog);
		return "adminhome";
	}
	
	@RequestMapping(value="/see_log.umng" , method=RequestMethod.GET)
	public String seeLog(ModelMap map,@RequestParam int id) {
	List<ProductLog> li=adminService.getLog(id);
		map.put("prod",li );
		return "product_status";
	}
	
	
	
	@RequestMapping(value="/see_log2.umng" , method=RequestMethod.GET)
	public String seeLog2(ModelMap map,@RequestParam int id) {
	List<ProductLog> li=adminService.getLog(id);
		map.put("prod",li );
		return "see_product_log";
	}
	
	@RequestMapping(value="/back_to_home.umng" , method=RequestMethod.GET)
	public String backtoHome(ModelMap map,@RequestParam int id) {
		User u = userService.catchUser(id);
		map.put("u", u);
		return "home";
		
	}
	
	@RequestMapping(value = "/logout.umng")
	public String logout(ModelMap map, HttpSession session) {
		map.put("user", new User());
		session.invalidate();
		return "login";
	}
	
	@RequestMapping(value = "/logout1.umng")
	public String logout1(ModelMap map, HttpSession session) {
		map.put("user", new User());
		session.invalidate();
		return "adminlogin";
	}
	
	@RequestMapping(value="/forgot_pass.umng" , method=RequestMethod.GET)
	public String forgot(ModelMap map) {
		map.put("user", new User());
	 
		return "forgot";
		
	}
	
	@RequestMapping(value="/forgot.umng" , method=RequestMethod.POST)
	public String forgot_pass(User user,ModelMap map) {
		String pass=userService.forgotPassword(user.getUserEmail());
			if(pass!=null) {
			
			SimpleMailMessage message = new SimpleMailMessage();  
	      message.setFrom("priya3010s@gmail.com");  
	        message.setTo(user.getUserEmail());  
	        message.setSubject("Your password");  
	        message.setText(pass);  
	        //sending message   
	        mailSender.send(message);
			}
		     map.put("user", new User());
		     map.put("success", "Password has been sent successfully on registered Email Id");
	         return "login";
		
	}
	
	@RequestMapping(value="/show_clients_meetings.umng" , method=RequestMethod.GET)
	public String showmeeting(@RequestParam int id ,ModelMap map) {
		List <MeetingRequest> li = meetingService.getAll(id);
		
		map.put("meeting",li);
	
			return "completed_status";
		
	}
	
	

	@RequestMapping(value="/cancle_meeting.umng" , method=RequestMethod.GET)
	public String canclemeeting(@RequestParam int id ,@RequestParam String date,@RequestParam int userId,ModelMap map) {
		map.put("MeetingRequest",new MeetingRequest());
		map.put("id",id);
		map.put("date",date);
		map.put("userid",userId);
		return "cancle_meeting";
	}
	
	@RequestMapping(value="/cancle_meeting_request.umng" , method=RequestMethod.POST)
	public String cancle(MeetingRequest m,ModelMap map,HttpSession session) {
		meetingService.deleteMeeting(m);
		User uu =(User)session.getAttribute("user");
		User u = userService.catchUser(uu.getUserId());
		map.put("u", u);
		return "home";
		
	}
	
	@RequestMapping(value="/all_cancled_meetings.umng" , method=RequestMethod.GET)
	public String cancledMeeting(ModelMap map) {
		List<MeetingRequest> li = meetingService.getList();
		
		
		map.put("u", li);
		return "display_cancle_meetings";
		
	}
}
