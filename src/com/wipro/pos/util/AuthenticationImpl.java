package com.wipro.pos.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wipro.pos.bean.CredentialsBean;
import com.wipro.pos.dao.CredentialsBeanDAO;

@Service
public class AuthenticationImpl implements Authentication {
	@Autowired
	CredentialsBeanDAO credentialsBeanDAO;

	public boolean authenticate(CredentialsBean credentialsBean) {
		boolean flag = false;
		try{
		CredentialsBean c = credentialsBeanDAO.findByID(credentialsBean.getUserId().toUpperCase());
		if(c!=null){
			if(c.getPassword().equals(credentialsBean.getPassword()))
			flag = true;
		}
		}catch(Exception e){
		}
		return flag;
	}

	public String authorize(String userId) {
		return null;
	}

	public boolean changeLoginStatus(CredentialsBean credentialsBean,
			int loginStatus) {
		boolean flag = false;
		CredentialsBean c = credentialsBeanDAO.findByID(credentialsBean.getUserId());
		if(c!=null){
			credentialsBean.setLoginStatus(loginStatus);
			credentialsBeanDAO.updateCredentialsBean(credentialsBean);
			flag = true;
		}
		return flag;
	}

}
