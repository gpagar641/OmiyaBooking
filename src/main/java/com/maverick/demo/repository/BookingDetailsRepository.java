package com.maverick.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.maverick.demo.dbmodel.BookingDetails;

public interface BookingDetailsRepository extends JpaRepository<BookingDetails, Integer>{
	
	BookingDetails save(BookingDetails bookingDetails);
	
	BookingDetails findByBookingId(int bookingId);

}
