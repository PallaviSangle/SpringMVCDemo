package com.bv.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bv.model.Reservation;
import com.bv.service.ReservationService;

@Controller
public class HelloController {
	
	private ReservationService reservationService;
	
	@Autowired(required=true)
	@Qualifier("reservationService")
	public void setReservationService(ReservationService reservationService) {
		this.reservationService = reservationService;
	}

	@RequestMapping("/reservation")
	public ModelAndView display()
	{
		ModelAndView mv=new ModelAndView("reservationform");
		//mv.addObject("message", "Welcome to MVC");
		return mv;
	}

	/*@RequestMapping("/hello")
	public ModelAndView getData(@RequestParam("name") String name,@RequestParam("age")int age)
	{
		ModelAndView mv=new ModelAndView("hello");
		mv.addObject("name",name);
		mv.addObject("age", age);
		return mv;
	}*/
	
	@RequestMapping(value="reservation",method=RequestMethod.POST)
	public String getData(@ModelAttribute("reservation") Reservation reservation)
	{
	/*	map.put("reserve",reservation);
		*/
		if(reservation.getId()==0)
		{
			reservationService.addPassenger(reservation);
		}
		else
		{
			reservationService.updatePassenger(reservation);
		}
		return "Confirmation";
	}
	
	@RequestMapping(value ="/passengerlist", method = RequestMethod.GET)
	public String passengerList(ModelMap map) {

		reservationService.getAllPassengers();
		List<Reservation> ulist=reservationService.getAllPassengers();
		map.put("reserve", ulist);
		return "PassengerList";

	}

	public String updatePassengerList(Reservation reservation,ModelMap map,@PathVariable("id")int id)
	{
		reservationService.updatePassenger(reservation);
		
		return "";
		
	}
	@RequestMapping(value="/removepassenger", method = RequestMethod.GET)
    public String removePerson(@RequestParam("userId") int userId){
		
        this.reservationService.removePassenger(userId);
        return "redirect:/passengerlist";
    }
 
	
}
