package com.wipro.pos.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Service;

import com.wipro.pos.bean.CredentialsBean;
import com.wipro.pos.bean.ProfileBean;
import com.wipro.pos.dao.CredentialsBeanDAO;
import com.wipro.pos.dao.ProfileBeanDAO;

@Service
public class UserImpl implements User {
	@Autowired
	Authentication au;

	@Autowired
	CredentialsBeanDAO credentialsBeanDAO;
	@Autowired
	HibernateTemplate template;
	
	@Autowired
	ProfileBeanDAO profileBeanDAO;

	public String login(CredentialsBean credentialsBean) {
		String type = "INVALID";
		try{
			boolean flag = au.authenticate(credentialsBean);
			System.out.println(flag);
		if (flag) {
			type = credentialsBeanDAO.findByID(credentialsBean.getUserId().toUpperCase()).getUserType();
		}
		}catch(Exception e){
			
		}
		System.out.println(type);
		return type;
	}

	
	
	public boolean logout(String userId) {
		return au.changeLoginStatus(credentialsBeanDAO.findByID(userId), 0);
	}

	
	
	public String changePassword(CredentialsBean credentialsBean,
			String newPassword) {
		String result = "";
		boolean flag = au.authenticate(credentialsBean);
		if (flag) {
			CredentialsBean cb = credentialsBeanDAO.findByID(credentialsBean
					.getUserId());
			if (cb.getPassword().equals(credentialsBean.getPassword())) {
				cb.setPassword(newPassword);
				result = "SUCCESS";
			} else {
				result = "FAIL";
			}
		} else {
			result = "INVALID";

		}

		return result;
	}

	public String register(ProfileBean profileBean) {
		String result;
		CredentialsBean cb = new CredentialsBean();
		cb.setLoginStatus(0);
		cb.setUserType("C");
		cb.setPassword("password");
		String val = ( template.getSessionFactory().openSession()
				.createSQLQuery("select pos_seq_userid.nextval from dual")
				.uniqueResult()).toString();
		String two = profileBean.getFirstName().substring(0, 2);
		result = two.toUpperCase() + val;
		cb.setUserId(result);
		String flag = credentialsBeanDAO.createCredentialsBean(cb);
		System.out.println(flag);
		profileBean.setUserId(result);
		String flagP = profileBeanDAO.createProfileBean(profileBean);
		System.out.println(flagP);
		if(flag.equals("FAIL")&&flagP.equals("FAIL"))
			result = "FAIL";
		return result;
	}

}
