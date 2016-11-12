


package com.wipro.pos.dao;

import java.util.ArrayList;


import com.wipro.pos.bean.CredentialsBean;

public interface CredentialsBeanDAO{
	
	String createCredentialsBean(CredentialsBean credentialsBean);
	int deleteCredentialsBean(ArrayList<String> list);
	boolean updateCredentialsBean(CredentialsBean credentialsBean);
	CredentialsBean findByID(String id);
	ArrayList<CredentialsBean> findAll();


}
