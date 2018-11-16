package com.maverick.demo.dbmodel;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.data.jpa.domain.support.AuditingEntityListener;

@Entity
@Table(name="m_hotels")
@EntityListeners(AuditingEntityListener.class)
public class Hotels {
	
	 
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="hotel_id", length=11)
	private int hotelId;
	 
	@Column(name="hotel_name",length=200)
	private String hotelName;
	 
	@Column(name="pincode",length=50)
	private String pincode;
	
	@Column(name="address",length=100)
	private String address;
	
	@Column(name="ownr_name",length=200)
	private String ownrName;
	
	@Column(name="contact",length=100)
	private String contact;
	
	@Column(name="email",length=100)
	private String email;
	
	@Column(name="image",length=200)
	private String image;
	
	@Column(name="ac_room_count",length=11)
	private int acRoomCount;
	
	@Column(name="nonac_room_count",length=11)
	private int nonacRoomCount;
	
	@Column(name="ac_room_cost",length=11)
	private float acRoomCost;
	
	@Column(name="nonac_room_cost",length=11)
	private float nonacRoomCost;
	
	@Column(name="del_status",length=11)
	private int delStatus;
	
	@Column(name="city_id",length=11)
	private int cityId;

	public int getHotelId() {
		return hotelId;
	}

	public void setHotelId(int hotelId) {
		this.hotelId = hotelId;
	}

	public String getHotelName() {
		return hotelName;
	}

	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public String getOwnrName() {
		return ownrName;
	}

	public void setOwnrName(String ownrName) {
		this.ownrName = ownrName;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getAcRoomCount() {
		return acRoomCount;
	}

	public void setAcRoomCount(int acRoomCount) {
		this.acRoomCount = acRoomCount;
	}

	public int getNonacRoomCount() {
		return nonacRoomCount;
	}

	public void setNonacRoomCount(int nonacRoomCount) {
		this.nonacRoomCount = nonacRoomCount;
	}

	public float getAcRoomCost() {
		return acRoomCost;
	}

	public void setAcRoomCost(float acRoomCost) {
		this.acRoomCost = acRoomCost;
	}

	public float getNonacRoomCost() {
		return nonacRoomCost;
	}

	public void setNonacRoomCost(float nonacRoomCost) {
		this.nonacRoomCost = nonacRoomCost;
	}

	public int getDelStatus() {
		return delStatus;
	}

	public void setDelStatus(int delStatus) {
		this.delStatus = delStatus;
	}

	public int getCityId() {
		return cityId;
	}

	public void setCityId(int cityId) {
		this.cityId = cityId;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "Hotels [hotelId=" + hotelId + ", hotelName=" + hotelName + ", pincode=" + pincode + ", address="
				+ address + ", ownrName=" + ownrName + ", contact=" + contact + ", email=" + email + ", image=" + image
				+ ", acRoomCount=" + acRoomCount + ", nonacRoomCount=" + nonacRoomCount + ", acRoomCost=" + acRoomCost
				+ ", nonacRoomCost=" + nonacRoomCost + ", delStatus=" + delStatus + ", cityId=" + cityId + "]";
	}

	 
	
	
	
	

}
