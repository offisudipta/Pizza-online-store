package com.wipro.pos.dao;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

import org.springframework.stereotype.Repository;
import com.wipro.pos.bean.CredentialsBean;

@Repository
public class CredentialsBeanDAOImpl implements CredentialsBeanDAO {

	@Autowired
	HibernateTemplate template;
	

	public String createCredentialsBean(CredentialsBean credentialsBean) {
		String flag = "FAIL";
		try{
			template.save(credentialsBean);
			template.flush();
			flag = "SUCCESS";
		}catch(Exception e){
			e.printStackTrace();
		}
		return flag;
	}

	public int deleteCredentialsBean(ArrayList<String> list) {
		return 0;
	}

	public boolean updateCredentialsBean(CredentialsBean credentialsBean) {
		boolean flag;
		try{
			template.update(credentialsBean);
			flag = true;
		}catch(Exception e){
			flag = false;
		}
		return flag;
	}

	public CredentialsBean findByID(String id) {
		return template.get(CredentialsBean.class, id);
	}

	public ArrayList<CredentialsBean> findAll() {
		return (ArrayList<CredentialsBean>) template.loadAll(CredentialsBean.class);
	}

}
