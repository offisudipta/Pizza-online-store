

package com.wipro.pos.dao;

import java.util.ArrayList;


import com.wipro.pos.bean.ProfileBean;

public interface ProfileBeanDAO {
	
	String createProfileBean(ProfileBean profileBean);
	int deleteProfileBean(ArrayList<String> list);
	boolean updateProfileBean(ProfileBean profileBean);
	ProfileBean findByID(String id);
	ArrayList<ProfileBean> findAll();


}
