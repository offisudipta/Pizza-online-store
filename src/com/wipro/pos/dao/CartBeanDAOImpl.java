package com.wipro.pos.dao;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.wipro.pos.bean.CartBean;

@Repository
public class CartBeanDAOImpl implements CartBeanDAO {
	@Autowired
	HibernateTemplate template;

	public String createCartBean(CartBean cartBean) {
		return null;
	}

	public int deleteCartBean(ArrayList<String> list) {
		return 0;
	}

	public boolean updateCartBean(CartBean cartBean) {
		return false;
	}

	public CartBean findByID(String id) {
		return (CartBean) template.load(CartBean.class,id);
	}

	
	public ArrayList<CartBean> findAll() {
		return (ArrayList<CartBean>)template.loadAll(CartBean.class);
	}

}
