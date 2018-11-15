package com.maverick.demo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.maverick.demo.dbmodel.BookingDetails;
import com.maverick.demo.dbmodel.Hotels;
import com.maverick.demo.dbmodel.UserDetails;
import com.maverick.demo.hotelrepository.HotelsRepository;
import com.maverick.demo.repository.BookingDetailsRepository;
import com.maverick.demo.repository.UserDetailsRepository;
import com.maverick.demo.service.SendEMailService;

@Controller
@Scope("session")
public class UserTransactionApiController {
	
	BookingDetails bookingDetails=new BookingDetails();
	
	UserDetails userDetails = new UserDetails();
	
	@Autowired
	HotelsRepository hotelsRepository;
	
	@Autowired
	SendEMailService sendEMailService;
	
	
	@Autowired
	UserDetailsRepository userDetailsRepository; 
	
	@Autowired
	BookingDetailsRepository bookingDetailsRepository; 
	
	@RequestMapping(value = "/saveBookingDetails", method = RequestMethod.GET)
	public BookingDetails saveBookingDetails(HttpServletRequest request, HttpServletResponse response) {
		
		
		UserDetails userDetails = new UserDetails();
		try {
			
			bookingDetails.setCost(Float.parseFloat(request.getParameter("cost")));
			bookingDetails.setBookingFrom(request.getParameter("bookingFrom"));
			bookingDetails.setBookingTo(request.getParameter("bookingTo"));
			bookingDetails.setHotelId(Integer.parseInt(request.getParameter("hotelId")));
			bookingDetails.setNoOfRooms(Integer.parseInt(request.getParameter("noOfRooms")));
			//This payment status is for book hotel 
			//0=payment pending AND 1=payment done
			bookingDetails.setPaymentStatus(0);
			bookingDetails.setRoomType(Integer.parseInt(request.getParameter("roomType")));
			bookingDetails.setStatus(0);
			
			//BookingDetails bookingDetailsRes=bookingDetailsRepository.save(bookingDetails);

						
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return bookingDetails; 
	}
	
	@RequestMapping(value = "/saveUserDetails", method = RequestMethod.GET)
	public @ResponseBody UserDetails saveUserDetails(HttpServletRequest request, HttpServletResponse response) {
		
		try {
			
			userDetails.setName(request.getParameter("userName"));
			userDetails.setAddress(request.getParameter("address"));
			userDetails.setAgeType(Integer.parseInt(request.getParameter("ageType")));
			userDetails.setBookingId(bookingDetails.getBookingId());
			userDetails.setContactNo(request.getParameter("contactNo"));
			userDetails.setEmail(request.getParameter("email"));
			
			bookingDetails.setPaymentStatus(1);
			if(bookingDetails.getPaymentStatus()==1) {
				
			UserDetails userDetailsRes=userDetailsRepository.save(userDetails);			
			BookingDetails bookingDetailsRes=bookingDetailsRepository.save(bookingDetails);
			Hotels hotels=hotelsRepository.findByHotelId(bookingDetailsRes.getHotelId());
			
			sendEMailService.sendMail("Omiya Booking", "Hello, "+userDetailsRes.getName()+" your room book successfully of hotel "+hotels.getHotelName()+" on date "
					+bookingDetailsRes.getBookingFrom(), userDetailsRes.getEmail());
			
			sendEMailService.sendMail("Omiya Booking","Hello, "+userDetailsRes.getName()+" your room book successfully of hotel "+hotels.getHotelName()+" on date "
					+bookingDetailsRes.getBookingFrom(), "ownermail@gmail.com");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return userDetails;
		
		 
	}
	
	@RequestMapping(value = "/showContact", method = RequestMethod.GET)
	public ModelAndView showHotels(HttpServletRequest request, HttpServletResponse response) {
		
		ModelAndView model = new ModelAndView("contact");
		
	 
		return model;
		
		 
	}
	
	@RequestMapping(value = "/sendMailToContactUs", method = RequestMethod.POST)
	public String sendMailToContactUs(HttpServletRequest request, HttpServletResponse response) {
		
		ModelAndView model = new ModelAndView("contact");
		
		//owners mail
		sendEMailService.sendMail(request.getParameter("name"), request.getParameter("name")+" Message is "+request.getParameter("message"), "kaushikudavant44@gmail.com");
		System.out.println("xsx");
		return "redirect:/showContact";
		
		 
	}

	@RequestMapping(value = "/showhor", method = RequestMethod.GET)
	public ModelAndView showhor(HttpServletRequest request, HttpServletResponse response) {
		
		ModelAndView model = new ModelAndView("kk");
		
	 
		return model;
		
		 
	}
}
