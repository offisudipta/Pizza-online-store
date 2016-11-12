package com.wipro.pos.dao;

import java.util.ArrayList;


import com.wipro.pos.bean.CartBean;

public interface CartBeanDAO {
	
	String createCartBean(CartBean cartBean);
	int deleteCartBean(ArrayList<String> list);
	boolean updateCartBean(CartBean cartBean);
	CartBean findByID(String id);
	ArrayList<CartBean> findAll();


}
