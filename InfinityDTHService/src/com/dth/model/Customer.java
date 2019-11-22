package com.dth.model;

public class Customer {

	private String firstname;
	private String lastName;
	private String pwd;
	private String emailId;
	private String phoneNumber;
	private String address1;
	private String address2;
	private String landmark;
	private int zipCode;
	private String city;
	private String state;
	private String cusCreation;
	private String operatorName;
	private String retailerName;
	private int flag;
	private double balancePayments;
	
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getLandmark() {
		return landmark;
	}
	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}
	public int getZipCode() {
		return zipCode;
	}
	public void setZipCode(int zipCode) {
		this.zipCode = zipCode;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCusCreation() {
		return cusCreation;
	}
	public void setCusCreation(String cusCreation) {
		this.cusCreation = cusCreation;
	}
	public String getOperatorName() {
		return operatorName;
	}
	public void setOperatorName(String operatorName) {
		this.operatorName = operatorName;
	}
	public String getRetailerName() {
		return retailerName;
	}
	public void setRetailerName(String retailerName) {
		this.retailerName = retailerName;
	}
	public int getFlag() {
		return flag;
	}
	public void setFlag(int flag) {
		this.flag = flag;
	}
	public double getBalancePayments() {
		return balancePayments;
	}
	public void setBalancePayments(double balancePayments) {
		this.balancePayments = balancePayments;
	}
	@Override
	public String toString() {
		return "Customer [firstname=" + firstname + ", lastName=" + lastName + ", pwd=" + pwd + ", emailId=" + emailId
				+ ", phoneNumber=" + phoneNumber + ", address1=" + address1 + ", address2=" + address2 + ", landmark="
				+ landmark + ", zipCode=" + zipCode + ", city=" + city + ", state=" + state + ", cusCreation="
				+ cusCreation + ", operatorName=" + operatorName + ", retailerName=" + retailerName + ", flag=" + flag
				+ ", balancePayments=" + balancePayments + "]";
	}
	
	
}
