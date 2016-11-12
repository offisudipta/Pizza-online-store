package com.wipro.pos.dao;

import java.util.ArrayList;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.wipro.pos.bean.OrderBean;


@Repository
public class OrderBeanDAOImpl implements OrderBeanDAO {
	
	HibernateTemplate template;

	public String createOrderBean(OrderBean orderBean) {
		return null;
	}

	public int deleteOrderBean(ArrayList<String> list) {
		return 0;
	}

	public boolean updateOrderBean(OrderBean orderBean) {
		return false;
	}

	public OrderBean findByID(String id) {
		return (OrderBean) template.load(OrderBean.class,id);
	}

	public ArrayList<OrderBean> findAll() {
		return (ArrayList<OrderBean>)template.loadAll(OrderBean.class);
	}

}