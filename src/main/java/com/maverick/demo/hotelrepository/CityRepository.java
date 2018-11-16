package com.maverick.demo.hotelrepository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.maverick.demo.dbmodel.City;

public interface CityRepository extends JpaRepository<City, Integer>{

	
	List<City> findAll();
	
}
