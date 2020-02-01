package com.airline.controllers;

import java.io.IOException;
import java.util.Calendar;
import java.util.Date;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.airline.models.FlightClass;
import com.airline.models.Gender;
import com.airline.models.Passenger;
import com.airline.service.PassengerService;

/**
 * Servlet implementation class AddPassenger2
 */
@WebServlet("/AddPassenger2")
public class AddPassenger extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	@EJB
	PassengerService ps;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddPassenger() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Passenger p = new Passenger();
		
		p.setFirstName("Pavel");
		p.setLastName("Rogozhin");
		
		Calendar cal = Calendar.getInstance();
		
		cal.set(Calendar.YEAR, 1982);
		cal.set(Calendar.MONTH, 10);
		cal.set(Calendar.DAY_OF_MONTH, 5);
		
		Date dob = cal.getTime();
		
		p.setDob(dob);
		
		p.setGender(Gender.Male);
		
		p.setFlightClass(FlightClass.Coach);
		
		System.out.println(p);
		
		ps.addPassenger(p);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
