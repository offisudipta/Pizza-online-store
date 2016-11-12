package com.wipro.pos.bean;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "POS_TBL_CreditCard")
public class CreditCardBean {
	@Id
	
	private String creditCardNumber;
	private String validFrom;
	private String validTo;
	private int balance;
	private String userID;
	
	
	public String getCreditCardNumber() {
		return creditCardNumber;
	}
	public void setCreditCardNumber(String creditCardNumber) {
		this.creditCardNumber = creditCardNumber;
	}
	public String getValidFrom() {
		return validFrom;
	}
	public void setValidFrom(String validFrom) {
		this.validFrom = validFrom;
	}
	public String getValidTo() {
		return validTo;
	}
	public void setValidTo(String validTo) {
		this.validTo = validTo;
	}
	public int getBalance() {
		return balance;
	}
	public void setBalance(int balance) {
		this.balance = balance;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	@Override
	public String toString() {
		return "CreditCardBean [creditCardNumber=" + creditCardNumber
				+ ", validFrom=" + validFrom + ", validTo=" + validTo
				+ ", balance=" + balance + ", userID=" + userID + "]";
	}
	

	

}
