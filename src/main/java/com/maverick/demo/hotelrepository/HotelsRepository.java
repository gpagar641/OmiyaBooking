package com.maverick.demo.hotelrepository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.maverick.demo.dbmodel.Hotels;

public interface HotelsRepository extends JpaRepository<Hotels, Integer>{

	List<Hotels> findAllByDelStatus(int i);

}
