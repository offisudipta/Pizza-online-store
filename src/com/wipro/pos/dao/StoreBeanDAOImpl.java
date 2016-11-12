package com.wipro.pos.dao;

import java.util.ArrayList;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.wipro.pos.bean.StoreBean;


@Repository
public class StoreBeanDAOImpl implements StoreBeanDAO {
	
	HibernateTemplate template;

	public String createStoreBean(StoreBean storeBean) {
		return null;
	}

	public int deleteStoreBean(ArrayList<String> list) {
		return 0;
	}

	public boolean updateStoreBean(StoreBean storeBean) {
		return false;
	}

	public StoreBean findByID(String id) {
		return (StoreBean) template.load(StoreBean.class,id);
	}

	public ArrayList<StoreBean> findAll() {
		return (ArrayList<StoreBean>)template.loadAll(StoreBean.class);
	}

}
