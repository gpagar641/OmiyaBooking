package com.maverick.demo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.maverick.demo.dbmodel.Hotels;
import com.maverick.demo.hotelrepository.GetHotelsAndBsyRoomRepository;
import com.maverick.demo.hotelrepository.HotelsRepository;

@Controller
@Scope("session")
public class HotelMasterApiController {
	
	@Autowired
	HotelsRepository hotelsRepository; 
	
	GetHotelsAndBsyRoomRepository getHotelsAndBsyRoomRepository;
	
	@RequestMapping(value = "/showHotels", method = RequestMethod.GET)
	public ModelAndView showHotels(HttpServletRequest request, HttpServletResponse response) {
		
		ModelAndView model = new ModelAndView("home");
		
	 
		return model;
		
		 
	}
	
	@RequestMapping(value = "/saveHotels", method = RequestMethod.GET)
	public Hotels saveHotels(HttpServletRequest request, HttpServletResponse response) {
		
		Hotels hotels = new Hotels();
		
		try {
			
		 String hotelName = request.getParameter("hotelName");
		 String owenerName = request.getParameter("owenerName");
		 String email = request.getParameter("email");
		 String contactNo = request.getParameter("contactNo");
		 String pincode = request.getParameter("pincode");
		 float nonacRoomCost = Float.parseFloat(request.getParameter("nonacRoomCost"));
		 int nonacRoomCount = Integer.parseInt(request.getParameter("nonacRoomCount"));
		 float acRoomCost = Float.parseFloat(request.getParameter("acRoomCost"));
		 int acRoomCount = Integer.parseInt(request.getParameter("acRoomCount"));
			
		 hotels.setHotelName(hotelName);
		 hotels.setOwnrName(owenerName);
		 hotels.setEmail(email);
		 hotels.setContact(contactNo);
		 hotels.setPincode(pincode);
		 hotels.setNonacRoomCost(nonacRoomCost);
		 hotels.setNonacRoomCount(nonacRoomCount);
		 hotels.setAcRoomCost(acRoomCost);
		 hotels.setAcRoomCount(acRoomCount);
		 hotels.setDelStatus(1);
		 
		 Hotels save = hotelsRepository.save(hotels); 
		 System.out.println("save" + save);
		 
		}catch(Exception e) {
			e.printStackTrace();
		}
		return hotels;
		
		 
	}

}
