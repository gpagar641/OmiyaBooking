package com.maverick.demo.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.maverick.demo.dbmodel.HotelImages;
import com.maverick.demo.getmodel.GetHotelsAndBsyRoom;
import com.maverick.demo.hotelrepository.GetHotelsAndBsyRoomRepository;
import com.maverick.demo.hotelrepository.HotelsRepository;
import com.maverick.demo.hotelrepository.ImageRepository;

@Controller
public class HomeController {

	@Autowired
	HotelsRepository hotelsRepository;
	
	@Autowired
	ImageRepository imageRepository;
	
	@Autowired
	GetHotelsAndBsyRoomRepository getHotelsAndBsyRoomRepository;

	@RequestMapping(value="/", method=RequestMethod.GET)
	public ModelAndView showHome(HttpServletRequest request)   
	{
		ModelAndView model=new ModelAndView("index");
		List<HotelImages> hotelImagesList=new ArrayList<HotelImages>();
		try {
			hotelImagesList=imageRepository.getHotelListWithBsyRoom();
			System.out.println("hotelImagesList  "+hotelImagesList.toString());
		model.addObject("hotelImagesList",hotelImagesList);
		}
		catch (Exception e) {
			System.out.println(e.getMessage());// TODO: handle exception
		}
		
		
		return model;
		
	}	
	@RequestMapping(value="/showHotelList", method=RequestMethod.POST)
	public ModelAndView showHotelList(HttpServletRequest request)  
	{
		ModelAndView model=new ModelAndView("hotelList");
		
		String startDate=request.getParameter("date_start");
		String endDate=request.getParameter("date_end");
		int cityId=Integer.parseInt(request.getParameter("cityid"));
		List<GetHotelsAndBsyRoom> getHotelsAndBsyRoomList=new ArrayList<GetHotelsAndBsyRoom>();
		SimpleDateFormat output = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		SimpleDateFormat yy = new SimpleDateFormat("yyyy-MM-dd");
		
		
		try {
			
			 String DATE_DASH_FORMAT = "yyyy-MM-dd";
			 String DATE_FORMAT = "MM/dd/yyyy"; 
			
			Date date = new SimpleDateFormat( DATE_FORMAT , Locale.ENGLISH ).parse( startDate );
	        DateFormat formatter = new SimpleDateFormat( DATE_DASH_FORMAT , Locale.getDefault() );
	        startDate = formatter.format( date.getTime() );
	        
	        date = new SimpleDateFormat( DATE_FORMAT , Locale.ENGLISH ).parse( endDate );
	        formatter = new SimpleDateFormat( DATE_DASH_FORMAT , Locale.getDefault() );
	        endDate = formatter.format( date.getTime() );
	      //  long diff = (new SimpleDateFormat( DATE_FORMAT , Locale.ENGLISH ).parse( endDate ).getTime()) - (new SimpleDateFormat( DATE_FORMAT , Locale.ENGLISH ).parse( startDate ).getTime());
	      //  long diffDays = diff / (24 * 60 * 60 * 1000);
			System.out.println("startDate " + startDate);
			System.out.println("endDate " + endDate);
			System.out.println("cityId " + cityId);
			
			getHotelsAndBsyRoomList=getHotelsAndBsyRoomRepository.getHotelListWithBsyRoom( startDate ,  endDate , cityId);
		 
			System.out.println("getHotelsAndBsyRoomList " + getHotelsAndBsyRoomList);
		model.addObject("getHotelsAndBsyRoomList",getHotelsAndBsyRoomList);
		model.addObject("startDate",startDate);
		model.addObject("endDate",endDate);
	//	model.addObject("diffDays",diffDays);
		}
		catch (Exception e) {
			System.out.println(e.getMessage());// TODO: handle exception
		}
		
		
		return model;
		
	}	

	
	
	
	
	@RequestMapping(value="/showHotelsList", method=RequestMethod.GET)
	public ModelAndView showHotelsList(HttpServletRequest request)   
	{
		ModelAndView model=new ModelAndView("index");
		
		
		
		return model;
		
	}	
	
}
