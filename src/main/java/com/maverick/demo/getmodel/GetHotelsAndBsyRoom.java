package com.maverick.demo.getmodel;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class GetHotelsAndBsyRoom {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="hotel_id")
	private int hotelId;
	 
	@Column(name="hotel_name" )
	private String hotelName;
	 
	@Column(name="pincode" )
	private String pincode;
	
	@Column(name="ownr_name")
	private String ownrName;
	
	@Column(name="contact")
	private String contact;
	
	@Column(name="email")
	private String email;
	
	@Column(name="image")
	private String image;
	
	@Column(name="ac_room_count")
	private int acRoomCount;
	
	@Column(name="nonac_room_count")
	private int nonacRoomCount;
	
	@Column(name="ac_room_cost")
	private float acRoomCost;
	
	@Column(name="nonac_room_cost")
	private float nonacRoomCost;
	
	@Column(name="del_status")
	private int delStatus;
	
	@Column(name="city_id")
	private int cityId;
	
	@Column(name="nonac_bsy_room")
	private int nonacBsyRoom;
	
	@Column(name="ac_bsy_room")
	private int acBsyRoom;
	
	@Column(name="city_name")
	private String cityName;

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

	public int getNonacBsyRoom() {
		return nonacBsyRoom;
	}

	public void setNonacBsyRoom(int nonacBsyRoom) {
		this.nonacBsyRoom = nonacBsyRoom;
	}

	public int getAcBsyRoom() {
		return acBsyRoom;
	}

	public void setAcBsyRoom(int acBsyRoom) {
		this.acBsyRoom = acBsyRoom;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	@Override
	public String toString() {
		return "GetHotelsAndBsyRoom [hotelId=" + hotelId + ", hotelName=" + hotelName + ", pincode=" + pincode
				+ ", ownrName=" + ownrName + ", contact=" + contact + ", email=" + email + ", image=" + image
				+ ", acRoomCount=" + acRoomCount + ", nonacRoomCount=" + nonacRoomCount + ", acRoomCost=" + acRoomCost
				+ ", nonacRoomCost=" + nonacRoomCost + ", delStatus=" + delStatus + ", cityId=" + cityId
				+ ", nonacBsyRoom=" + nonacBsyRoom + ", acBsyRoom=" + acBsyRoom + ", cityName=" + cityName + "]";
	}
	
	

}
