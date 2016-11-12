package com.wipro.pos.service;



import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.wipro.pos.bean.FoodBean;
import com.wipro.pos.bean.StoreBean;

@Service("AdministratorService")
public class AdministratorImpl implements Administrator{

	public String addStore(StoreBean storebean) {
		return null;
	}

	public boolean modifyStore(StoreBean storebean) {
		return false;
	}

	public int removeStore(ArrayList<String> storeId) {
		return 0;
	}

	public StoreBean viewStore(String storeId) {
		return null;
	}

	public ArrayList<StoreBean> viewAllStore() {
		return null;
	}

	public String addFood(FoodBean foodbean) {
		return null;
	}

	public boolean modifyFood(FoodBean foodbean) {
		return false;
	}

	public boolean removeFood(String storeId, String foodId) {
		return false;
	}

	public FoodBean viewFood(String foodId) {
		return null;
	}

	public ArrayList<FoodBean> viewAllFood(String storeId) {
		return null;
	}

	public String changeOrderStatus(String orderId) {
		return null;
	}

}
