


package com.wipro.pos.dao;

import java.util.ArrayList;


import com.wipro.pos.bean.FoodBean;

public interface FoodBeanDAO{
	
	String createFoodBean(FoodBean foodBean);
	int deleteFoodBean(ArrayList<String> list);
	boolean updateFoodBean(FoodBean foodBean);
	FoodBean findByID(String id);
	ArrayList<FoodBean> findAll();


}
