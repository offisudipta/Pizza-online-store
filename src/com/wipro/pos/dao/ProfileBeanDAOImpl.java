package com.wipro.pos.dao;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.wipro.pos.bean.ProfileBean;


@Repository
public class ProfileBeanDAOImpl implements ProfileBeanDAO {
	@Autowired
	HibernateTemplate template;

	public String createProfileBean(ProfileBean profileBean) {
		String flag = "FAIL";
		try{
			template.save(profileBean);
			flag = "SUCCESS";
		}catch(Exception e){
			e.printStackTrace();
		}
		return flag;
	}

	public int deleteProfileBean(ArrayList<String> list) {
		return 0;
	}

	public boolean updateProfileBean(ProfileBean profileBean) {
		return false;
	}
	

	public ProfileBean findByID(String id) {
		ProfileBean pb = template.get(ProfileBean.class,id.toUpperCase());
		System.out.println(pb);
		return pb ;
	}

	public ArrayList<ProfileBean> findAll() {
		return (ArrayList<ProfileBean>)template.loadAll(ProfileBean.class);
	}

}
