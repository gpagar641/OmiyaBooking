package com.maverick.demo.hotelrepository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.maverick.demo.dbmodel.HotelImages; 

public interface ImageRepository extends JpaRepository<HotelImages, Integer>{
	
	List<HotelImages> findAllByHotelId(int hotelId);

}
