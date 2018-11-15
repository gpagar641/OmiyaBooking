package com.maverick.demo.hotelrepository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.maverick.demo.dbmodel.HotelImages;
import com.maverick.demo.getmodel.GetHotelsAndBsyRoom; 

public interface ImageRepository extends JpaRepository<HotelImages, Integer>{
	
	List<HotelImages> findAllByHotelId(int hotelId);
	
	@Query(value="select * from m_images group by hotel_id order by image_id  desc limit 5",nativeQuery=true)
	List<HotelImages> getHotelListWithBsyRoom();

}
