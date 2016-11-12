package com.wipro.pos.bean;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "POS_TBL_Food")
public class FoodBean {

	@Id
	private String foodID;
	private String name;
	private String type;
	private String foodSize;
	private int quantity;
	private double price;
	public String getFoodID() {
		return foodID;
	}
	public void setFoodID(String foodID) {
		this.foodID = foodID;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getFoodSize() {
		return foodSize;
	}
	public void setFoodSize(String foodSize) {
		this.foodSize = foodSize;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "FoodBean [foodID=" + foodID + ", name=" + name + ", type="
				+ type + ", foodSize=" + foodSize + ", quantity=" + quantity
				+ ", price=" + price + "]";
	}
	
	
	
}
