package com.maverick.demo.hotelrepository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.maverick.demo.dbmodel.Hotels;

public interface HotelsRepository extends JpaRepository<Hotels, Integer>{

	List<Hotels> findAllByDelStatus(int i);

	Hotels findByHotelId(int hotelId);
	
	/*select h.*,coalesce((select sum(bd.no_of_rooms) from t_booking_details bd where bd.hotel_id=h.hotel_id and bd.room_type=0 
	and bd.status=0 and ((bd.booking_from between'2018-11-11' and '2018-11-19') or (bd.booking_to between'2018-11-11' 
		and '2018-11-19')) ),0) as nonac_bsy_room,coalesce((select sum(bd.no_of_rooms) from t_booking_details 
bd where bd.hotel_id=h.hotel_id and bd.status=0 and bd.room_type=1 and ((bd.booking_from between'2018-11-11' and '2018-11-19')
		or (bd.booking_to between'2018-11-11' and '2018-11-19')) ),0) as ac_bsy_room from m_hotels h where h.city_id=1 and 
		h.del_status=1*/
}
