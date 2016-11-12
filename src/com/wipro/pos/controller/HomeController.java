package com.wipro.pos.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.wipro.pos.bean.CredentialsBean;
import com.wipro.pos.bean.ProfileBean;
import com.wipro.pos.dao.CredentialsBeanDAO;
import com.wipro.pos.dao.ProfileBeanDAO;
import com.wipro.pos.service.LoginBean;
import com.wipro.pos.util.User;

@Controller
@RequestMapping("/")
@SessionAttributes({"login_Cred","userIdGenerated"})
public class HomeController {
	@Autowired
	CredentialsBeanDAO credentialsBeanDAO;
	
	@Autowired
	User user;
	
	@Autowired
	ProfileBeanDAO profileBeanDAO;
	
	@Autowired
	LoginBean login;
	
	@ModelAttribute("login_Cred")
	public LoginBean getlogin_Cred(){
		return login;
	}
	
	@ModelAttribute("userIdGenerated")
	public String getuserIdGenerated(){
		return new String();
	}
	
	
	@ModelAttribute("profileBean")
	public ProfileBean getProfileBean(){
		return new ProfileBean();
	}
	
	@ModelAttribute("text")
	public String getText(){
		return new String();
	}
	
	@ModelAttribute("type")
	public String getType(){
		return new String();
	}
	
	
	
	@ModelAttribute("login")
	public CredentialsBean getLogin(){
		return new CredentialsBean();
	}
	
	
	@RequestMapping("/HomePage")
	public ModelAndView getHome(){
		ModelAndView model = new ModelAndView();
		model.setViewName("HomePage");
		model.addObject("login_Cred", login);
		return model;
		
	}
	
	@RequestMapping("/getRegister")
	public ModelAndView getRegister(){
		return new ModelAndView("register");
		
	}
	
	@RequestMapping("/registerUser")
	public ModelAndView doRegister(@ModelAttribute("profileBean") ProfileBean profileBean){
		ModelAndView model = new ModelAndView("idGen");
		model.addObject("userIdGenerated",user.register(profileBean));
		return model;
		
	}
	
	@RequestMapping("/passwordGen")
	public ModelAndView createPassword(@RequestParam("password") String password,HttpSession session){
		ModelAndView model = new ModelAndView("HomePage");
		String userId = (String) session.getAttribute("userIdGenerated");
		CredentialsBean cb = credentialsBeanDAO.findByID(userId);
		cb.setPassword(password);
		credentialsBeanDAO.updateCredentialsBean(cb);
		return model;	
	}
	
	@RequestMapping("/manageCredentials")
	public ModelAndView getManageCredentials(){
		ModelAndView model = new ModelAndView("manageCredentials");
		model.addObject("credentials",credentialsBeanDAO.findAll());
		return model;
	}
	
	
	

	@RequestMapping("/validate")
	public @ResponseBody String validate(@RequestParam("userId") String userId, @RequestParam("password") String password,HttpSession session){
		CredentialsBean credentialsBean = new CredentialsBean();
		String returnMsg="Error: Enter Valid Data";
		credentialsBean.setUserId(userId);
		credentialsBean.setPassword(password);
		String flag = user.login(credentialsBean);
		if(flag.equals("A")||flag.equals("C")){
			returnMsg = flag;
		}
		System.out.println(userId.toUpperCase());
		ProfileBean pb = profileBeanDAO.findByID(userId.toUpperCase());
		System.out.println(pb);
		login.setFirstName(pb.getFirstName());
		login.setLastName(pb.getLastName());
		login.setUserId(pb.getUserId());
		session.setAttribute("login_Cred",login);
		return returnMsg;
	}
}
