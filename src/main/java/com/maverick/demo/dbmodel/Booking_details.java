package com.maverick.demo.dbmodel;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="t_booking_details")
public class Booking_details {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="booking_id",length=11)
	private int bookingId;
	
	@Column(name="cost",length=11)
	private float cost;
	
	@Column(name="hotel_id",length=11)
	private int hotelId;
	
	@Column(name="booking_from",length=200)
	private String bookingFrom;
	
	@Column(name="booking_to",length=200)
	private String bookingTo;
	
	@Column(name="no_of_rooms",length=11)
	private int noOfRooms;
	
	@Column(name="room_type",length=11)
	private int roomType;
	
	@Column(name="status",length=11)
	private int status;

	@Column(name="payment_status",length=11)
	private int paymentStatus;

	public int getBookingId() {
		return bookingId;
	}

	public void setBookingId(int bookingId) {
		this.bookingId = bookingId;
	}

	public float getCost() {
		return cost;
	}

	public void setCost(float cost) {
		this.cost = cost;
	}

	public int getHotelId() {
		return hotelId;
	}

	public void setHotelId(int hotelId) {
		this.hotelId = hotelId;
	}

	public String getBookingFrom() {
		return bookingFrom;
	}

	public void setBookingFrom(String bookingFrom) {
		this.bookingFrom = bookingFrom;
	}

	public String getBookingTo() {
		return bookingTo;
	}

	public void setBookingTo(String bookingTo) {
		this.bookingTo = bookingTo;
	}

	public int getNoOfRooms() {
		return noOfRooms;
	}

	public void setNoOfRooms(int noOfRooms) {
		this.noOfRooms = noOfRooms;
	}

	public int getRoomType() {
		return roomType;
	}

	public void setRoomType(int roomType) {
		this.roomType = roomType;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getPaymentStatus() {
		return paymentStatus;
	}

	public void setPaymentStatus(int paymentStatus) {
		this.paymentStatus = paymentStatus;
	}

	@Override
	public String toString() {
		return "t_booking_details [bookingId=" + bookingId + ", cost=" + cost + ", hotelId=" + hotelId
				+ ", bookingFrom=" + bookingFrom + ", bookingTo=" + bookingTo + ", noOfRooms=" + noOfRooms
				+ ", roomType=" + roomType + ", status=" + status + ", paymentStatus=" + paymentStatus + "]";
	}
	
	
}
