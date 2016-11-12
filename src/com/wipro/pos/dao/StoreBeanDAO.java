
package com.wipro.pos.dao;
import java.util.ArrayList;
import com.wipro.pos.bean.StoreBean;
public interface StoreBeanDAO {
	String createStoreBean(StoreBean storeBean);
	int deleteStoreBean(ArrayList<String> list);
	boolean updateStoreBean(StoreBean storeBean);
	StoreBean findByID(String id);
	ArrayList<StoreBean> findAll();
}
