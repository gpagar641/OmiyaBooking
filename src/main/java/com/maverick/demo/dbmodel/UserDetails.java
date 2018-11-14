package com.maverick.demo.dbmodel;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * This class is used to get user details.
 * @author Kaushik Udavant
 *
 */
@Entity
@Table(name="t_user_details")
public class UserDetails {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="user_id",length=11)
	private int userId;
	
	@Column(name="name",length=200)
	private String name;
	
	@Column(name="address",length=200)
	private String address;
	
	@Column(name="contact_no",length=200)
	private String contactNo;
	
	@Column(name="email",length=200)
	private String email;
	
	@Column(name="booking_id",length=11)
	private int bookingId;
	
	@Column(name="age_type",length=11)
	private int ageType;

	@Column(name="del_status",length=11)
	private int delStatus;
	
	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getContactNo() {
		return contactNo;
	}

	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getBookingId() {
		return bookingId;
	}

	public void setBookingId(int bookingId) {
		this.bookingId = bookingId;
	}

	public int getAgeType() {
		return ageType;
	}

	public void setAgeType(int ageType) {
		this.ageType = ageType;
	}

	@Override
	public String toString() {
		return "UserDetails [userId=" + userId + ", name=" + name + ", address=" + address + ", contactNo=" + contactNo
				+ ", email=" + email + ", bookingId=" + bookingId + ", ageType=" + ageType + "]";
	}
	
	
	
	
	
}
