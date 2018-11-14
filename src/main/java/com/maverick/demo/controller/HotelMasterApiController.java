package com.maverick.demo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod; 

import com.maverick.demo.dbmodel.Hotels; 
import com.maverick.demo.hotelrepository.HotelsRepository;

@Controller
@Scope("session")
public class HotelMasterApiController {
	
	@Autowired
	HotelsRepository hotelsRepository; 
	
	
	@RequestMapping(value = "/saveHotels", method = RequestMethod.GET)
	public Hotels saveHotels(HttpServletRequest request, HttpServletResponse response) {
		
		Hotels hotels = new Hotels();
		
		try {
			
		 
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return hotels;
		
		 
	}

}
