package com.wipro.pos.dao;

import java.util.ArrayList;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.wipro.pos.bean.FoodBean;

@Repository
public class FoodBeanDAOImpl implements FoodBeanDAO {
	
	HibernateTemplate template;

	public String createFoodBean(FoodBean foodBean) {
		return null;
	}

	public int deleteFoodBean(ArrayList<String> list) {
		return 0;
	}

	public boolean updateFoodBean(FoodBean foodBean) {
		return false;
	}

	public FoodBean findByID(String id) {
		return (FoodBean) template.load(FoodBean.class,id);
	}

	public ArrayList<FoodBean> findAll() {
		return (ArrayList<FoodBean>)template.loadAll(FoodBean.class);
	}

}
