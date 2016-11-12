package com.wipro.pos.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wipro.pos.dao.ProfileBeanDAO;

@Service
public class PaymentImpl implements Payment {
	@Autowired
	ProfileBeanDAO dao;

	public boolean findByCardNumber(String userid, String cardnumber) {
		return false;
	}

	public String process(Payment payment) {
		// TODO Auto-generated method stub
		return null;
	}

}
