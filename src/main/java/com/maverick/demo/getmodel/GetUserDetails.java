package com.maverick.demo.getmodel;

public class GetUserDetails {
	
	int userId;
	
	String toDate;
	
	String fromDate;
	
	int roomType;
	
	int noOfRooms;
	
	int noOfAdults;
	
	int noOfChild;
	
	String custName;
	
	String custContact;
	
	String address;
	
	String email;

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getToDate() {
		return toDate;
	}

	public void setToDate(String toDate) {
		this.toDate = toDate;
	}

	public String getFromDate() {
		return fromDate;
	}

	public void setFromDate(String fromDate) {
		this.fromDate = fromDate;
	}

	public int getRoomType() {
		return roomType;
	}

	public void setRoomType(int roomType) {
		this.roomType = roomType;
	}

	public int getNoOfRooms() {
		return noOfRooms;
	}

	public void setNoOfRooms(int noOfRooms) {
		this.noOfRooms = noOfRooms;
	}

	public int getNoOfAdults() {
		return noOfAdults;
	}

	public void setNoOfAdults(int noOfAdults) {
		this.noOfAdults = noOfAdults;
	}

	public int getNoOfChild() {
		return noOfChild;
	}

	public void setNoOfChild(int noOfChild) {
		this.noOfChild = noOfChild;
	}

	public String getCustName() {
		return custName;
	}

	public void setCustName(String custName) {
		this.custName = custName;
	}

	public String getCustContact() {
		return custContact;
	}

	public void setCustContact(String custContact) {
		this.custContact = custContact;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "GetUserDetails [userId=" + userId + ", toDate=" + toDate + ", fromDate=" + fromDate + ", roomType="
				+ roomType + ", noOfRooms=" + noOfRooms + ", noOfAdults=" + noOfAdults + ", noOfChild=" + noOfChild
				+ ", custName=" + custName + ", custContact=" + custContact + ", address=" + address + ", email="
				+ email + "]";
	}
	
	

}
