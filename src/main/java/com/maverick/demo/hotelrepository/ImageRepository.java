package com.maverick.demo.hotelrepository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.maverick.demo.dbmodel.HotelImages;
import com.maverick.demo.getmodel.GetHotelsAndBsyRoom; 

public interface ImageRepository extends JpaRepository<HotelImages, Integer>{
	
	List<HotelImages> findAllByHotelId(int hotelId);
	
	@Query(value="select i.image_id,i.del_status,i.hotel_id,i.image_name,h.hotel_name as hotel_name from m_images i,m_hotels h where h.hotel_id=i.hotel_id group by i.hotel_id order by i.image_id  desc limit 5",nativeQuery=true)
	List<HotelImages> getHotelListWithBsyRoom();

}
