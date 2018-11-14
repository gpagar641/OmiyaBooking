package com.maverick.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.maverick.demo.dbmodel.UserDetails;

public interface UserDetailsRepository extends JpaRepository<UserDetails, Integer>{

	UserDetails save(UserDetails userDetails);
	
	UserDetails findByUserIdAndDelStatus(int userId,int delStatus);
	
}
