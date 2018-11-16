package com.maverick.demo.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.maverick.demo.dbmodel.City;
import com.maverick.demo.dbmodel.HotelImages;
import com.maverick.demo.getmodel.GetHotelsAndBsyRoom;
import com.maverick.demo.hotelrepository.CityRepository;
import com.maverick.demo.hotelrepository.GetHotelsAndBsyRoomRepository;
import com.maverick.demo.hotelrepository.HotelsRepository;
import com.maverick.demo.hotelrepository.ImageRepository;

@Controller
public class HomeController {

	
	
	
	// Add this dependency to resolve jsp errors
			/*	
				<dependency>
			    <groupId>javax.servlet</groupId>
			    <artifactId>jsp-api</artifactId>
			    <version>2.0</version>
			    <scope>provided</scope>
			    </dependency>
			    
				*/
	
	
	// Add this line to application.properties for storing and loading css js from cache
	
				/*	spring.resources.cache.cachecontrol.max-age=14400
				*/
	
	
	@Autowired
	HotelsRepository hotelsRepository;
	
	@Autowired
	ImageRepository imageRepository;
	
	@Autowired
	GetHotelsAndBsyRoomRepository getHotelsAndBsyRoomRepository;
	@Autowired
	CityRepository cityRepository;

	@RequestMapping(value="/", method=RequestMethod.GET)
	public ModelAndView showHome(HttpServletRequest request)   
	{
		ModelAndView model=new ModelAndView("index");
		List<HotelImages> hotelImagesList=new ArrayList<HotelImages>();
		try {
			hotelImagesList=imageRepository.getHotelListWithBsyRoom();
			System.out.println("hotelImagesList  "+hotelImagesList.toString());
		model.addObject("hotelImagesList",hotelImagesList);
		List<City> cityList= cityRepository.findAll();
model.addObject("cityList",cityList);
List<GetHotelsAndBsyRoom> getHotelsAndBsyRoomList=new ArrayList<GetHotelsAndBsyRoom>();
try {
String fromDate=	new SimpleDateFormat("yyyy-MM-dd").format(new Date());

Calendar cal = Calendar.getInstance();
cal.add(Calendar.MONTH, -1);
Date result = cal.getTime();
String toDate=	new SimpleDateFormat("yyyy-MM-dd").format(result);
getHotelsAndBsyRoomList=getHotelsAndBsyRoomRepository.getHotelListWithBsyRoom( fromDate ,  toDate);
model.addObject("getHotelsAndBsyRoomList",getHotelsAndBsyRoomList);

}
catch (Exception e) {
	System.out.println(e.getMessage());// TODO: handle exception
}
		}
		catch (Exception e) {
			System.out.println(e.getMessage());// TODO: handle exception
		}
		
		
		return model;
		
	}	
	@RequestMapping(value="/showHotelList", method=RequestMethod.POST)
	public ModelAndView showHotelList(HttpServletRequest request)  
	{
		ModelAndView model=new ModelAndView("hotelList2");
		
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

	
	@RequestMapping(value="/showHotelsImages", method=RequestMethod.GET)
	public ModelAndView showHotelsImages(HttpServletRequest request)   
	{
		ModelAndView model=new ModelAndView("hotelImages");
		int hotelId=Integer.parseInt(request.getParameter("hotelId"));
		String hotelName=request.getParameter("hotelName");
			List<HotelImages> hotelImagesLis=imageRepository.findAllByHotelId(hotelId);
			model.addObject("hotelName",hotelName);
			model.addObject("hotelImagesLis",hotelImagesLis);
		 
		return model;
		
	}	
	
	
	@RequestMapping(value="/showHotelsList", method=RequestMethod.GET)
	public ModelAndView showHotelsList(HttpServletRequest request)   
	{
		ModelAndView model=new ModelAndView("hotelList2");
		
		
		
		return model;
		
	}	
	
}
