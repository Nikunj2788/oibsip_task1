package com.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.Bookingpage;
import com.Bean.Userpage;
import com.Dao.BookingpageDao;
import com.Dao.Userpagedao;

/**
 * Servlet implementation class bookingcontroller
 */
@WebServlet("/BookingPageController")
public class BookingPageController extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
	    String action  = request.getParameter("action");
	    
	      
	        if(action.equalsIgnoreCase("Booking")) {
	    	Bookingpage c = new Bookingpage();
	  
	    	 
			c.setFname(request.getParameter("fname"));
	    	c.setLname(request.getParameter("lname"));
	    	c.setContactno(request.getParameter("contactno"));	    		    		    		    	
	    	c.setTrainno(request.getParameter("trainno"));
	    	c.setTrainname(request.getParameter("trainname"));
	    	c.setFrom_where(request.getParameter("from_where"));
	    	c.setTo_where(request.getParameter("to_where"));
	    	c.setDepart(request.getParameter("depart"));
	    	c.setAdults(request.getParameter("adults"));
	    	c.setChildren(request.getParameter("children"));
	    	c.setTclass(request.getParameter("tclass"));
			
			System.out.println(request.getParameter("fname"));
	    	System.out.println(request.getParameter("lname"));
	    	System.out.println(request.getParameter("contactno"));	    	    	
	    	System.out.println(request.getParameter("trainno"));
	    	System.out.println(request.getParameter("trainname"));
	    	System.out.println(request.getParameter("to"));
	    	System.out.println(request.getParameter("depart"));
	    	System.out.println(request.getParameter("adults"));
	    	System.out.println(request.getParameter("children"));
	    	System.out.println(request.getParameter("tclass"));
	    	
	    	BookingpageDao.insertinbooking_data(c);    	
		    response.sendRedirect("UserBookingpage.jsp");  
	}
	    
	    
	    
	    if(action.equalsIgnoreCase("Edit")) {    		 	
	    	int id = Integer.parseInt(request.getParameter("id"));
		   	
			Bookingpage s  = BookingpageDao.getDataById(id);
			request.setAttribute("ss", s);
			request.getRequestDispatcher("UserBookingpage.jsp").forward(request, response);
	    	
	    }
	     
	    if(action.equalsIgnoreCase("Delete")) {
			int id= Integer.parseInt(request.getParameter("id"));
			BookingpageDao.Cancelticket(id);
			response.sendRedirect("UserBookingpage.jsp");
			
		}
	    if(action.equalsIgnoreCase("Update")) {
    	
			Bookingpage d= new Bookingpage();
			d.setId(Integer.parseInt(request.getParameter("id")));				 
			d.setFname(request.getParameter("fname"));
			d.setLname(request.getParameter("lname"));
	    	d.setContactno(request.getParameter("contactno"));	    		    		    		    	
	    	d.setTrainno(request.getParameter("trainno"));
	    	d.setTrainname(request.getParameter("trainname"));
	    	d.setFrom_where(request.getParameter("from_where"));
	    	d.setTo_where(request.getParameter("to_where"));
	    	d.setDepart(request.getParameter("depart"));
	    	d.setAdults(request.getParameter("adults"));
	    	d.setChildren(request.getParameter("children"));
	    	d.setTclass(request.getParameter("tclass"));
	   
		
			BookingpageDao.updateBooking(d);
			
			response.sendRedirect("UserBookingpage.jsp");
		}
	   
	}
 }
