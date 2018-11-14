package com.maverick.demo.hotelrepository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.maverick.demo.getmodel.GetHotelsAndBsyRoom;
 

public interface GetHotelsAndBsyRoomRepository extends JpaRepository<GetHotelsAndBsyRoom, Integer>{
	
	
	@Query(value="select h.*,coalesce((select sum(bd.no_of_rooms) from t_booking_details bd where bd.hotel_id=h.hotel_id and "
			+ "bd.room_type=0 and bd.status=0 and ((bd.booking_from between :fromDate and :toDate) or "
			+ "(bd.booking_to between :fromDate and :toDate)) ),0) as nonac_bsy_room,coalesce((select sum(bd.no_of_rooms) "
			+ "from t_booking_details bd where bd.hotel_id=h.hotel_id and bd.status=0 and bd.room_type=1 and "
			+ "((bd.booking_from between :fromDate and :toDate) or (bd.booking_to between :fromDate and :toDate)) ),0) "
			+ "as ac_bsy_room,c.city_name from m_hotels h,m_city c where h.city_id=:cityId and "
			+ "h.del_status=1 and c.city_id=h.city_id",nativeQuery=true)
	List<GetHotelsAndBsyRoom> getHotelListWithBsyRoom(@Param("fromDate") String fromDate,@Param("toDate") String toDate,
			@Param("cityId") int cityId);

}
