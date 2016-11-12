


package com.wipro.pos.dao;

import java.util.ArrayList;


import com.wipro.pos.bean.OrderBean;

public interface OrderBeanDAO {
	
	String createOrderBean(OrderBean orderBean);
	int deleteOrderBean(ArrayList<String> list);
	boolean updateOrderBean(OrderBean orderBean);
	OrderBean findByID(String id);
	ArrayList<OrderBean> findAll();


}
